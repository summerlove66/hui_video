package com.patrick.hvideo;

import com.patrick.hvideo.utils.EncryptUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.util.DigestUtils;

import javax.xml.bind.DatatypeConverter;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Array;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Date;

@RunWith(SpringRunner.class)
@SpringBootTest
public class HVideoApplicationTests {

    @Test
    public void contextLoads() throws NoSuchAlgorithmException, UnsupportedEncodingException {

//
         ArrayList<String> arr = new ArrayList<>();
         for (Byte i : Base64.getUrlDecoder().decode("123")){
            arr .add((char)(i & 0xFF) +"");
         }
        System.out.println(String.join("",arr));
    }

}
