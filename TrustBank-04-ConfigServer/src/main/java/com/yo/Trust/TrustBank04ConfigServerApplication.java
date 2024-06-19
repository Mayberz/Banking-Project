package com.yo.Trust;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@SpringBootApplication
@EnableConfigServer
public class TrustBank04ConfigServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(TrustBank04ConfigServerApplication.class, args);
	}

}
