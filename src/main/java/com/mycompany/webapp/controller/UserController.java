package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/user")
@Log4j2
public class UserController {
	@RequestMapping("/home")
	public String home() {
		log.info("실행");
		return "redirect:/home";
	}
	
	@RequestMapping("/login")
	public String login() {
		log.info("실행");
		return "user/login";
	}
	
	@RequestMapping("/signup1")
	public String signup1() {
		log.info("실행");
		return "user/signup1";
	}
	
	@RequestMapping("/signup2")
	public String signup2() {
		log.info("실행");
		return "user/signup2";
	}
}
