package com.patrick.hvideo.utils;

import javax.xml.bind.DatatypeConverter;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Date;

public class EncryptUtils {

    public static  String getMD5(String str) throws NoSuchAlgorithmException {

        MessageDigest md = MessageDigest.getInstance("MD5");
        md.update(str.getBytes());
        byte[] digest = md.digest();

        return   DatatypeConverter
                .printHexBinary(digest).toLowerCase();

    }

    // personal case ,use for encrypt string
    private static String decodeBase64ToArryStr(String encodedString ){


        ArrayList<String> arr = new ArrayList<>();
        for (Byte i : Base64.getDecoder().decode(encodedString)){
            arr .add((char)(i & 0xFF) +"");
        }
        return String.join("",arr);

    }

    public  static String getCode(String str) throws NoSuchAlgorithmException {
        return EncryptUtils.decodeBase64ToArryStr(EncryptUtils.getMD5(str+ String.valueOf(new Date().getTime()).substring(0,8)));
    }


}
