import net.sourceforge.lame.lowlevel.LameEncoder;
import net.sourceforge.lame.mp3.Lame;
import net.sourceforge.lame.mp3.MPEGMode;

import javax.sound.sampled.AudioFormat;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class Utilities {

    public static byte[] encodePcmToMp3(byte[] pcm) {
        LameEncoder encoder = new LameEncoder(new AudioFormat(44100.0f, 32, 1, true, true), 128, MPEGMode.STEREO, Lame.QUALITY_MIDDLE, false);
        ByteArrayOutputStream mp3 = new ByteArrayOutputStream();
        byte[] buffer = new byte[encoder.getPCMBufferSize()];

        int bytesToTransfer = Math.min(buffer.length, pcm.length);
        int bytesWritten;
        int currentPcmPosition = 0;
        while (0 < (bytesWritten = encoder.encodeBuffer(pcm, currentPcmPosition, bytesToTransfer, buffer))) {
            currentPcmPosition += bytesToTransfer;
            bytesToTransfer = Math.min(buffer.length, pcm.length - currentPcmPosition);

            mp3.write(buffer, 0, bytesWritten);
        }

        encoder.close();
        return mp3.toByteArray();
    }

    public static byte[] interleaveFrame(byte[] r, byte[] l){
        int rLength = r.length;
        int lLength = l.length;

        byte[] interleaved = new byte[rLength+lLength];

        for(int i = 0; i < rLength; i++){
            interleaved[i * 2] = r[i];
            interleaved[(i * 2)+1] = l[i];
        }
        return interleaved;
    }

    public static byte[] floatArrayToByteArray(float[] values){
        int numOfBytes = values.length*4;
        byte[] outBytes = new byte[numOfBytes];
        for (int i = 0; i < values.length; i++){
            byte[] inBytes = floatToByteArray(values[i]);
            for(int j = 0; j < inBytes.length; j++){
                outBytes[(i*inBytes.length)+j] = inBytes[j];
            }
        }
        return outBytes;
    }

    public static byte[] floatToByteArray(float value) {
        return ByteBuffer.allocate(4).putFloat(value).array();
    }

    public static float byteArrayToFloat(byte[] bytes){
        return ByteBuffer.wrap(bytes).order(ByteOrder.BIG_ENDIAN).getFloat();
    }

    public static float[] byteArrayToFloatArray(byte[] bytes){

        float[] output = new float[bytes.length/4];

        for(int i = 0; i < bytes.length; i+=4){
            byte[] temp = {bytes[i], bytes[i+1], bytes[i+2], bytes[i+3]};
            float f = byteArrayToFloat(temp);
            output[i/4] = f;
        }

        return output;
    }


}
