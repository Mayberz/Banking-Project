package com.yo.Trust;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@EnableFeignClients
@SpringBootApplication
@EnableTransactionManagement
public class TrustBank01ProducerBankApplication {

	public static void main(String[] args) {
		SpringApplication.run(TrustBank01ProducerBankApplication.class, args);
	}

}
