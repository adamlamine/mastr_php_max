import com.cycling74.msp.MSPObject;
import com.cycling74.msp.MSPSignal;

import java.lang.reflect.Method;
import java.net.InetSocketAddress;

public class AudioSocketServerThread extends MSPObject implements Runnable  {

    private InetSocketAddress address;
    private Streamer streamer;
    public MastrSocketServer sockServ;
    private int messagesSent = 0;

    public AudioSocketServerThread(Streamer streamer, InetSocketAddress address){
        this.address = address;
        this.streamer = streamer;
    }

    @Override
    public void run() {
        post("Thread started!");

        try{
            sockServ = new MastrSocketServer(this.address);
            sockServ.start();
            ThreadManager.allObjects.add(sockServ);

        } catch (Exception e) {
            post(e.getMessage());
        }
    }



    @Override
    public Method dsp(MSPSignal[] mspSignals, MSPSignal[] mspSignals1) {
        return null;
    }
}
