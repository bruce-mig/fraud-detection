package com.github.brucemig.customer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication(
		scanBasePackages = {
				"com.github.brucemig.customer",
				"com.github.brucemig.amqp",
		}
)
@EnableFeignClients(
		basePackages = "com.github.brucemig.clients"
)
public class CustomerApplication {

	public static void main(String[] args) {
		SpringApplication.run(CustomerApplication.class, args);
	}

}
