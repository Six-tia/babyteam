package com.edutia.babyteam;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.cache.annotation.EnableCaching;

@SpringBootApplication
@EnableCaching //开启声明式缓存，利用注解来控制缓存读写
@MapperScan("com.edutia.babyteam") //mybatis在springboot启动的时候自动扫描mybatis实现的接口
public class BabyteamApplication {

    public static void main(String[] args) {
        SpringApplication.run(BabyteamApplication.class, args);
    }

}
