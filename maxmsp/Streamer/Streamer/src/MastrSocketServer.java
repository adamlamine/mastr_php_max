import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.util.ArrayList;

import org.java_websocket.WebSocket;
import org.java_websocket.handshake.ClientHandshake;
import org.java_websocket.server.WebSocketServer;

public class MastrSocketServer extends WebSocketServer {

    ArrayList<Byte>[] PCMMessageBuffer = new ArrayList[2];

    WebSocket conn;

    public MastrSocketServer(InetSocketAddress address) {
        super(address);
        ThreadManager.mastrSocketServer = this;
        this.PCMMessageBuffer[0] = new ArrayList<Byte>();
        this.PCMMessageBuffer[1] = new ArrayList<Byte>();
    }

    public void emptyBuffer(){
        this.PCMMessageBuffer[0] = new ArrayList<Byte>();
        this.PCMMessageBuffer[1] = new ArrayList<Byte>();
    }

    public void appendToPCMBuffer(int channel, byte[] values){
        for (byte b:values) {
            if(conn != null && conn.isOpen()) {
                this.PCMMessageBuffer[channel].add(b);
            }
        }
    }

    public void sendBuffer(){
        if(conn != null && conn.isOpen()){
            byte[] bytes = new byte[Streamer.FRAME_SIZE*2];
            for(int i = 0; i < Streamer.FRAME_SIZE; i++){
                bytes[i] = (byte) this.PCMMessageBuffer[0].get(i);
                bytes[i+Streamer.FRAME_SIZE] = (byte) this.PCMMessageBuffer[1].get(i);
            }
            conn.send(ByteBuffer.wrap(bytes));
            this.PCMMessageBuffer[0].clear();
            this.PCMMessageBuffer[1].clear();
        }
    }

    @Override
    public void onOpen(WebSocket conn, ClientHandshake handshake) {
        this.conn = conn;
        ThreadManager.allObjects.add(conn);
        System.out.println("new connection to " + conn.getRemoteSocketAddress());
    }

    @Override
    public void onClose(WebSocket conn, int code, String reason, boolean remote) {
        System.out.println("closed " + conn.getRemoteSocketAddress() + " with exit code " + code + " additional info: " + reason);
    }

    @Override
    public void onMessage(WebSocket conn, String message) {
        ThreadManager.streamer.emitCommand(message);
    }

    @Override
    public void onMessage( WebSocket conn, ByteBuffer message ) {
        System.out.println("received ByteBuffer from "	+ conn.getRemoteSocketAddress());
    }

    @Override
    public void onError(WebSocket conn, Exception ex) {
        System.err.println("an error occurred on connection " + conn.getRemoteSocketAddress()  + ":" + ex);
    }

    @Override
    public void onStart() {
        System.out.println("server started successfully");
    }

}