package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class HomeController {
	@RequestMapping("/")
	public String home() {;
		return "home";
	}
	
	@RequestMapping("/home")
	public String home2() {
		return "home";
	}
}
