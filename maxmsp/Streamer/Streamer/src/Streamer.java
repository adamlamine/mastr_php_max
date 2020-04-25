import com.cycling74.msp.MSPPerformer;
import com.cycling74.msp.MSPSignal;
import net.sourceforge.lame.lowlevel.LameEncoder;
import net.sourceforge.lame.mp3.Lame;
import net.sourceforge.lame.mp3.MPEGMode;

import javax.sound.sampled.AudioFormat;
import java.io.ByteArrayOutputStream;
import java.net.InetSocketAddress;
import java.util.ArrayList;
import java.util.TimerTask;


public class Streamer extends MSPPerformer
{
    public static ArrayList<TimerTask> allTimerTasks = new ArrayList<TimerTask>();
    public static ArrayList<Thread> allThreads = new ArrayList<Thread>();

    private Thread mp3SockThread;
    private ArrayList<Byte> bufferedMp3 = new ArrayList<Byte>();
    private ArrayList<Byte> bufferedPCM = new ArrayList<Byte>();

    public Streamer(float f)
    {
        declareInlets (new int[]{SIGNAL, SIGNAL});
        declareOutlets(new int[]{SIGNAL, SIGNAL});
    }

    public void dspsetup(MSPSignal[] in, MSPSignal[] out)
    {
        post("Streamer was started.");
        post("Starting Server...");

        try{
            String host = "localhost";
            int port = 80;

            Runnable mp3SockRunnable = new AudioSocketServerThread(this, new InetSocketAddress(host,port) );
            mp3SockThread = new Thread(mp3SockRunnable);
            mp3SockThread.start();
            Streamer.allThreads.add(mp3SockThread);
        } catch (Exception e){
            post(e.getMessage());
        }

//        float[] testFloatArray = {-0.22f, 0.21f, -0.5123123f, 0.5123123123f};
//
//        UtilityTest ut = new UtilityTest();
//        byte[] testBytes = ut.testfloatArrayToByteArray(testFloatArray);
//        testFloatArray = ut.testByteArrayToFloatArray(testBytes);
//
//        testBytes = ut.testFloatToByteArray(4);
//        ut.testByteArrayToFloat(testBytes);

    }

    public byte[] getBufferedMp3(){
        byte[] temp = new byte[this.bufferedMp3.size()];
        for(int i = 0; i < bufferedMp3.size(); i++){
            temp[i] = bufferedMp3.get(i);
        }
        this.bufferedMp3 = new ArrayList<Byte>();
        return temp;
    }

    public byte[] getBufferedPCM(){
        byte[] temp = new byte[this.bufferedPCM.size()];
        for(int i = 0; i < bufferedPCM.size(); i++){
            if(i < bufferedPCM.size() && i < temp.length){
                temp[i] = bufferedPCM.get(i);
            } else {
                break;
            }
        }
        this.bufferedPCM = new ArrayList<Byte>();
        return temp;
    }

    public void bang(){

    }

    public void perform(MSPSignal[] in, MSPSignal[] out)
    {
        float[] in1 = in[0].vec;
        float[] in2 = in[1].vec;
        float[] o1 = out[0].vec;
        float[] o2 = out[1].vec;
        int vec_size = in[0].n;

//        float[] scaledPCMFloats1 = new float[vec_size];
//
//        for(int i = 0; i < scaledPCMFloats1.length; i++){
//            scaledPCMFloats1[i] = (in1[i]);
//        }

        byte[] PCMBytes1  = Utilities.floatArrayToByteArray(in1);

//        byte[] testByteArray = {PCMBytes1[0], PCMBytes1[1], PCMBytes1[2], PCMBytes1[3]};
//        float testFloat = Utilities.byteArrayToFloat(testByteArray);

//        post("" + testFloat);

        for (byte b:PCMBytes1) {
            this.bufferedPCM.add(b);
        }

        for(int i = 0; i < vec_size; i++){
            o1[i] = in1[i];
            o2[i] = in2[i];
        }
    }



}