package com.edutia.babyteam;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.edutia.babyteam") //mybatis在springboot启动的时候自动扫描mybatis实现的接口
public class BabyteamApplication {

    public static void main(String[] args) {
        SpringApplication.run(BabyteamApplication.class, args);
    }

}
