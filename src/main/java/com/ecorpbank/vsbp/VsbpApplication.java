package com.ecorpbank.vsbp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@ServletComponentScan
@SpringBootApplication
public class VsbpApplication {
	public static void main(String[] args) {
		Postgres.setup();
		SpringApplication.run(VsbpApplication.class, args);
	}
}
