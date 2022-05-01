package com.mycompany.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/pickPY")
public class PickPYController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
		
		@RequestMapping("/content")
		public String content() {
			logger.info("실행");
			return "pickPY/content";
		}
		
		@GetMapping("/showPY")
		public String showPY() {
			return "pickPY/showPY";
		}
		
		@GetMapping("/PYroom")
		public String PYroom() {
			return "pickPY/PYroom";
		}
		@GetMapping("/customerSupport")
		public String customerSupport() {
			return "pickPY/customerSupport";
		}
}
