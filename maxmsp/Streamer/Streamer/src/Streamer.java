import com.cycling74.max.DataTypes;
import com.cycling74.msp.MSPPerformer;
import com.cycling74.msp.MSPSignal;

import java.net.InetSocketAddress;
import java.nio.ByteOrder;


public class Streamer extends MSPPerformer
{
    private Thread sockThread;

    public static int VECTOR_SIZE;
    public static int FRAME_SIZE;

    public static boolean writingToBuffer;

    public Streamer(float f)
    {
        declareInlets (new int[]{SIGNAL, SIGNAL});
        declareOutlets(new int[]{SIGNAL, SIGNAL, DataTypes.MESSAGE});
        ThreadManager.streamer = this;
    }

    public void dspsetup(MSPSignal[] in, MSPSignal[] out)
    {
        post("Streamer was started.");
    }

    public void startserver(String host, int port){
        post("Starting Server with Host: " + host + ":" + port);

        try{
            Runnable sockRunnable = new AudioSocketServerThread(this, new InetSocketAddress(host,port) );
            sockThread = new Thread(sockRunnable);
            sockThread.start();
            ThreadManager.allThreads.add(sockThread);
            ThreadManager.allRunnables.add(sockRunnable);
            ThreadManager.allObjects.add(sockRunnable);
        } catch (Exception e){
            post(e.getMessage());
        }
    }

    public void stopserver(){
        post("Stopping Server...");
        ThreadManager.killAll();
    }

    public void emitCommand(String command){
        outlet(2, command);
    }

    public void perform(MSPSignal[] in, MSPSignal[] out)
    {
        float[] in1 = in[0].vec;
        float[] in2 = in[1].vec;
        float[] o1 = out[0].vec;
        float[] o2 = out[1].vec;
        int vec_size = in[0].n;
        Streamer.VECTOR_SIZE = vec_size;
        Streamer.FRAME_SIZE = VECTOR_SIZE * 20;

        byte[][] PCMBytes = new byte[2][VECTOR_SIZE];
        PCMBytes[0] = Utilities.formatAudioData(in1, ByteOrder.LITTLE_ENDIAN);
        PCMBytes[1] = Utilities.formatAudioData(in2, ByteOrder.LITTLE_ENDIAN);

        boolean isNull = (ThreadManager.mastrSocketServer == null);

        if(ThreadManager.mastrSocketServer != null){
            MastrSocketServer a = ThreadManager.mastrSocketServer;

            a.appendToPCMBuffer(0, PCMBytes[0]);
            a.appendToPCMBuffer(1, PCMBytes[1]);


            if(a.PCMMessageBuffer[0].size() >= FRAME_SIZE){
                a.sendBuffer();
            }
        }

        for(int i = 0; i < vec_size; i++){
            o1[i] = in1[i];
            o2[i] = in2[i];
        }
    }



}