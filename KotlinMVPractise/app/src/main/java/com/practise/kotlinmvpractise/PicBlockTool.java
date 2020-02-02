package com.practise.kotlinmvpractise;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

public class PicBlockTool {

    private static String byteArrayToHex(byte[] a) {
        StringBuilder sb = new StringBuilder(a.length * 2);
        for(byte b: a)
            sb.append(String.format("%02x", b));
        return sb.toString();
    }

    private static byte[] hexStringToByteArray(String s) {
        int len = s.length();
        byte[] data = new byte[len / 2];
        for (int i = 0; i < len; i += 2) {
            data[i / 2] = (byte) ((Character.digit(s.charAt(i), 16) << 4)
                    + Character.digit(s.charAt(i+1), 16));
        }
        return data;
    }

    public String fencrypt(String message) throws Exception {


        final SecretKey key = new SecretKeySpec(hexStringToByteArray("9BFB7FA1151F0254BCEC623ECE91D0DC"), "DESede");
        final Cipher cipher = Cipher.getInstance("DESede/ECB/PKCS5Padding");
        cipher.init(Cipher.ENCRYPT_MODE, key);

        final byte[] plainTextBytes = hexStringToByteArray(message);
        final byte[] cipherText = cipher.doFinal(plainTextBytes);
        // final String encodedCipherText = new sun.misc.BASE64Encoder()
        // .encode(cipherText);

        return byteArrayToHex(cipherText);
    }

    public String fdecrypt(String message) throws Exception {
        final SecretKey key = new SecretKeySpec(hexStringToByteArray("9BFB7FA1151F0254BCEC623ECE91D0DC"), "DESede");
        // final IvParameterSpec iv = new IvParameterSpec(new byte[8]);
        final Cipher decipher = Cipher.getInstance("DESede/ECB/PKCS5Padding");
        decipher.init(Cipher.DECRYPT_MODE, key);

        final byte[] plainText = decipher.doFinal(hexStringToByteArray(message));

        //return new String(plainText, "UTF-8");
        return byteArrayToHex(plainText);
    }
}
