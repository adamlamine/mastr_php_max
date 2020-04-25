public class UtilityTest {

    public byte[] testfloatArrayToByteArray(float[] input){

        for(int i = 0; i < input.length; i++){
            System.out.println("Input Float " + i + ": " + input[i]);
        }

        byte[] result = Utilities.floatArrayToByteArray(input);

        System.out.println("-----testfloatArrayToByteArray-----");
        System.out.println("Length of byte array: " + result.length);

        for(int i = 0; i < result.length; i++){
            System.out.println("Byte " + i + ": " + Byte.toString(result[i]));
        }
        return result;
    }


    public float[] testByteArrayToFloatArray(byte[] input){
        float[] result = Utilities.byteArrayToFloatArray(input);

        System.out.println("-----testByteArrayToFloatArray-----");
        System.out.println("Length of float array: " + result.length);

        for(int i = 0; i < result.length; i++){
            System.out.println("Float " + i + ": " + result[i]);
        }

        return result;
    }

    public float testByteArrayToFloat(byte[] input){
        float result = Utilities.byteArrayToFloat(input);
        System.out.println("-----testByteArrayToFloat-----");
        String allBytesString = "INPUT: ";
        for(int i = 0; i < input.length; i++){
            String s2 = String.format("%8s", Integer.toBinaryString(input[i] & 0xFF)).replace(' ', '0');
            allBytesString += s2 + " ";
        }
        System.out.println(allBytesString);
        System.out.println("OUTPUT: " + result);
        return result;
    }

    public byte[] testFloatToByteArray(float input){
        byte[] result = Utilities.floatToByteArray(input);
        System.out.println("-----floatToByteArray-----");
        System.out.println("INPUT: " + input);
        String allBytesString = "OUTPUT: ";
        for(int i = 0; i < result.length; i++){
            String s2 = String.format("%8s", Integer.toBinaryString(result[i] & 0xFF)).replace(' ', '0');
            allBytesString += s2 + " ";
        }
        System.out.println(allBytesString);
        return result;
    }


}
