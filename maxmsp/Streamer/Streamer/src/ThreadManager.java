import java.util.ArrayList;
import java.util.TimerTask;

public class ThreadManager {

    public static ArrayList<TimerTask> allTimerTasks = new ArrayList<TimerTask>();
    public static ArrayList<Thread> allThreads = new ArrayList<Thread>();
    public static ArrayList<Runnable> allRunnables = new ArrayList<Runnable>();
    public static ArrayList<Object> allObjects = new ArrayList<Object>();
    public static Streamer streamer;

    public static MastrSocketServer mastrSocketServer;

    public static void killServer(){
        try{
            mastrSocketServer.stop();
        } catch (Exception e){
            System.out.println("Could not stop server!");
        }
    }

    public static void killTimerTasks(){
        for(TimerTask t:allTimerTasks){
            t.cancel();
            t = null;
        }
    }

    public static void killRunnables(){
        for(Runnable r:allRunnables){
            r = null;
        }
    }

    public static void killThreads(){
        for(Thread t:allThreads){
            t.stop();
            t = null;
        }
    }

    public static void killObjects(){
        for(Object o:allObjects){
            o = null;
        }
    }

    public static void killAll(){
        killServer();
        killTimerTasks();
        killRunnables();
        killThreads();
        killObjects();
    }



}
