package com.patrick.hvideo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.patrick.hvideo.mapper")
public class HVideoApplication {

    public static void main(String[] args) {
        SpringApplication.run(HVideoApplication.class, args);
    }

}
