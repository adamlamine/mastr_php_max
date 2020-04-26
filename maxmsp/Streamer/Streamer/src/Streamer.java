import com.cycling74.msp.MSPPerformer;
import com.cycling74.msp.MSPSignal;
import java.net.InetSocketAddress;
import java.nio.ByteOrder;
import java.util.ArrayList;


public class Streamer extends MSPPerformer
{
    private Thread sockThread;

    public static int VECTOR_SIZE;
    public static int FRAME_SIZE = 44100;

    private ArrayList<Byte> bufferedPCM1 = new ArrayList<Byte>();
    private ArrayList<Byte> bufferedPCM2 = new ArrayList<Byte>();

    public static boolean writingToBuffer;

    public Streamer(float f)
    {
        declareInlets (new int[]{SIGNAL, SIGNAL});
        declareOutlets(new int[]{SIGNAL, SIGNAL});
    }

    public void dspsetup(MSPSignal[] in, MSPSignal[] out)
    {
        post("Streamer was started.");
        startServer();
    }

    public void startServer(){
        post("Starting Server...");

        try{
            String host = "localhost";
            int port = 80;

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

    public byte[] getBufferedPCM(int channel){

        ArrayList<Byte> PCMData;

        if(channel == 0){
            PCMData = this.bufferedPCM1;
        } else {
            PCMData = this.bufferedPCM2;
        }

        byte[] temp = new byte[PCMData.size()];

        if(PCMData.size()%4 != 0) return temp;

        for(int i = 0; i < PCMData.size(); i++){
            if(i < PCMData.size() && i < temp.length){
                temp[i] = PCMData.get(i);
            } else {
                break;
            }
        }

        if(channel == 0){
            this.bufferedPCM1 = new ArrayList<Byte>();
        } else {
            this.bufferedPCM2 = new ArrayList<Byte>();
        }

        return temp;
    }

    public void bang(){
        ThreadManager.killAll();
    }

    public void perform(MSPSignal[] in, MSPSignal[] out)
    {
        float[] in1 = in[0].vec;
        float[] in2 = in[1].vec;
        float[] o1 = out[0].vec;
        float[] o2 = out[1].vec;
        int vec_size = in[0].n;
        Streamer.VECTOR_SIZE = vec_size;

        byte[] PCMBytes1  = Utilities.floatArrayToByteArray(in1);
        float[] PCMFloats1 = Utilities.byteArrayToFloatArray(PCMBytes1, ByteOrder.LITTLE_ENDIAN);
        PCMBytes1  = Utilities.floatArrayToByteArray(PCMFloats1);

        byte[] PCMBytes2  = Utilities.floatArrayToByteArray(in2);
        float[] PCMFloats2 = Utilities.byteArrayToFloatArray(PCMBytes2, ByteOrder.LITTLE_ENDIAN);
        PCMBytes2  = Utilities.floatArrayToByteArray(PCMFloats2);

        for (byte b:PCMBytes1) {
            this.bufferedPCM1.add(b);
        }
        for (byte b:PCMBytes2) {
            this.bufferedPCM2.add(b);
        }
        if(ThreadManager.audioSocketServer != null){
            ThreadManager.audioSocketServer.test();
        }

        for(int i = 0; i < vec_size; i++){
            o1[i] = in1[i];
            o2[i] = in2[i];
        }
    }



}