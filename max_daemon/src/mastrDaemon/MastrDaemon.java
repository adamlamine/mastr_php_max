package mastrDaemon;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Timer;
import java.util.TimerTask;

public class MastrDaemon {

    public static void main(String[] args) {
        TimerTask task = new TimerTask() {
            public void run() {
                MastrDaemon md = new MastrDaemon();
                md.readExecuteDelete();
            }
        };
        Timer timer = new Timer("Timer");

        timer.scheduleAtFixedRate(task, 500, 500);
    }

    public void readExecuteDelete(){
        BufferedReader reader;
        boolean fileHasContents = false;

        try {
            reader = new BufferedReader(new FileReader(
                    "commands.txt"));
            String line = reader.readLine();
            while (line != null) {
                fileHasContents = true;
                System.out.println(line);
                Process p = Runtime.getRuntime().exec(line);
                line = reader.readLine();
            }
            reader.close();

        } catch (IOException e) {
            e.printStackTrace();
        }

        try{
            //Delet this >:(
            if(fileHasContents){
                PrintWriter pw = new PrintWriter("commands.txt");
                pw.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
