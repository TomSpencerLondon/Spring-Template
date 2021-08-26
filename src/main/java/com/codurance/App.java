package com.codurance;

import java.time.LocalDateTime;

import javax.servlet.http.HttpServletRequest;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@EnableAutoConfiguration
public class App {

	@RequestMapping("/")
	String home(HttpServletRequest req) {
		return "Hello at " + LocalDateTime.now() + " from " + req.getLocalAddr();
	}

	@RequestMapping("/hc")
	String hc(HttpServletRequest req) {
		return "Health check at " + LocalDateTime.now() + " from " + req.getLocalAddr();
	}

	public static void main(String[] args) throws Exception {
		SpringApplication.run(App.class, args);
	}

}
