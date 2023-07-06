package com.javatodev.finance;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@EnableDiscoveryClient
@SpringBootApplication
public class CoreBankingServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(CoreBankingServiceApplication.class, args);
    }

}
