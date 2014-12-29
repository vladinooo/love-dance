package com.vladinooo.lovedance.util;


import org.springframework.stereotype.Component;

import java.nio.charset.StandardCharsets;
import java.util.Base64;

@Component
public class Base64EncoderDecoder {

    public static String encode(String stringToEncode) {
        Base64.Encoder encoder = Base64.getEncoder();
        return encoder.encodeToString(stringToEncode.getBytes(StandardCharsets.UTF_8) );
    }

    public static String decode(String stringToDecode) {
        Base64.Decoder decoder = Base64.getDecoder();
        byte[] decodedByteArray = decoder.decode(stringToDecode);
        return new String(decodedByteArray);
    }
}
