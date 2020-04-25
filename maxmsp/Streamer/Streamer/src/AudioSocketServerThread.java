import com.cycling74.msp.MSPObject;
import com.cycling74.msp.MSPSignal;

import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.util.Timer;
import java.util.TimerTask;

public class AudioSocketServerThread extends MSPObject implements Runnable  {

    private InetSocketAddress address;
    private Streamer streamer;
    public AudioSocketServer sockServ;

    public AudioSocketServerThread(Streamer streamer, InetSocketAddress address){
        this.address = address;
        this.streamer = streamer;
    }

    @Override
    public void run() {
        post("Thread started!");

        try{
            sockServ = new AudioSocketServer(this.address);
            sockServ.start();

        } catch (Exception e) {
            post(e.getMessage());
        }

        Streamer streamer = this.streamer;

        Timer timer = new Timer();
        TimerTask task = new TimerTask() {
            @Override
            public void run() {
                sockServ.setPCMBuffer(streamer.getBufferedPCM());
                sockServ.sendBuffer();
            }
        };
        Streamer.allTimerTasks.add(task);
        timer.scheduleAtFixedRate(task, 500,1000);

    }



    @Override
    public Method dsp(MSPSignal[] mspSignals, MSPSignal[] mspSignals1) {
        return null;
    }
}
