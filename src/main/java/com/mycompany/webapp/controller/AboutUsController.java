package com.mycompany.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/test")
public class AboutUsController {
	private static final Logger logger = LoggerFactory.getLogger(AboutUsController.class);
		
		@RequestMapping("/test")
		public String test() {
			logger.info("실행");
			return "test/test";
		}
		
		@RequestMapping("/test1")
		public String test1() {
			logger.info("실행");
			return "test/test1";
		}
}
