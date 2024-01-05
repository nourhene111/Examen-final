package com.example.nourhene_test;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
@SpringBootApplication
public class NourheneTestApplication {

	public static void main(String[] args) {
		SpringApplication.run(NourheneTestApplication.class, args);
	}

	@RestController
	public class SalutationController {

		@GetMapping("/salutation")
		public String getSalutation() {
			return "Bonjour Master DevOps II";
		}
	}

}
