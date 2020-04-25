import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.util.ArrayList;

import org.java_websocket.WebSocket;
import org.java_websocket.handshake.ClientHandshake;
import org.java_websocket.server.WebSocketServer;

public class AudioSocketServer extends WebSocketServer {

    ArrayList<Byte> mp3MessageBuffer = new ArrayList<Byte>();
    ArrayList<Byte> PCMMessageBuffer = new ArrayList<Byte>();
    WebSocket conn;

    public AudioSocketServer(InetSocketAddress address) {
        super(address);
    }

    public void setMP3Buffer(byte[] bytes){
        for (byte b:bytes) {
            this.mp3MessageBuffer.add(b);
        }
    }

    public void setPCMBuffer(byte[] values){
        for (byte b:values) {
            this.PCMMessageBuffer.add(b);
        }
    }

    public void sendBuffer(){
        if(conn != null && conn.isOpen()){
            byte[] bytes = new byte[this.PCMMessageBuffer.size()];
            for(int i = 0; i < this.PCMMessageBuffer.size(); i++){
                bytes[i] = (byte) PCMMessageBuffer.get(i);
            }
            conn.send(ByteBuffer.wrap(bytes));
            this.PCMMessageBuffer.clear();
        }
    }

    @Override
    public void onOpen(WebSocket conn, ClientHandshake handshake) {
        this.conn = conn;
        conn.send("Welcome to the server!"); //This method sends a message to the new client
        broadcast( "new connection: " + handshake.getResourceDescriptor() ); //This method sends a message to all clients connected
        System.out.println("new connection to " + conn.getRemoteSocketAddress());
    }

    @Override
    public void onClose(WebSocket conn, int code, String reason, boolean remote) {
        System.out.println("closed " + conn.getRemoteSocketAddress() + " with exit code " + code + " additional info: " + reason);
    }

    @Override
    public void onMessage(WebSocket conn, String message) {
        System.out.println("received message from "	+ conn.getRemoteSocketAddress() + ": " + message);
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