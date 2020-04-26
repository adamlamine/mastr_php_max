import net.sourceforge.lame.lowlevel.LameEncoder;
import net.sourceforge.lame.mp3.Lame;
import net.sourceforge.lame.mp3.MPEGMode;

import javax.sound.sampled.AudioFormat;
import java.io.*;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;

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
        int iLength = rLength+lLength;

        byte[] interleaved = new byte[iLength];

        for(int i = 0; i < iLength/8; i+=8){
            interleaved[i + 0] = r[i + 0];
            interleaved[i + 1] = r[i + 1];
            interleaved[i + 2] = r[i + 2];
            interleaved[i + 3] = r[i + 3];
            interleaved[i + 4] = l[i + 0];
            interleaved[i + 6] = l[i + 1];
            interleaved[i + 6] = l[i + 2];
            interleaved[i + 7] = l[i + 3];
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

    public static float byteArrayToFloatBigEndian(byte[] bytes){
        return ByteBuffer.wrap(bytes).order(ByteOrder.BIG_ENDIAN).getFloat();
    }

    public static float byteArrayToFloatLittleEndian(byte[] bytes){
        return ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN).getFloat();
    }

    public static float[] byteArrayToFloatArray(byte[] bytes, ByteOrder b){

        float[] output = new float[bytes.length/4];

        for(int i = 0; i < bytes.length; i+=4){
            byte[] temp = {bytes[i], bytes[i+1], bytes[i+2], bytes[i+3]};
            float f;
            if(b == ByteOrder.BIG_ENDIAN){
                f = byteArrayToFloatBigEndian(temp);
            } else {
                f = byteArrayToFloatLittleEndian(temp);
            }
            output[i/4] = f;
        }

        return output;
    }

    public static void writeToFile(byte[] data) {
        OutputStream os = null;
        try {
            os = new FileOutputStream(new File("C:\\Users\\AdamLamine\\Desktop\\testAudio.raw"), true);
            os.write(data, 0, data.length);
        } catch (IOException e) {
            e.printStackTrace();
        }finally{
            try {
                os.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public static byte[] formatAudioData(float[] audioData, ByteOrder b){
        byte[] PCMBytes  = Utilities.floatArrayToByteArray(audioData);
        float[] PCMFloats = Utilities.byteArrayToFloatArray(PCMBytes, b);
        return Utilities.floatArrayToByteArray(PCMFloats);
    }

    public static void printByteArray(byte[] arr){
        String out = "";
        for(byte b:arr){
            out += " " + Byte.toString(b);
        }
        System.out.println(out);
    }

    public static void printByteList(ArrayList<Byte> list){
        String out = "";
        for(byte b:list){
            out += " " + Byte.toString(b);
        }
        System.out.println(out);
    }

}
