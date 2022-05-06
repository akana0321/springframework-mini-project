package com.mycompany.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/aboutus")
public class AboutUsController {
	private static final Logger logger = LoggerFactory.getLogger(AboutUsController.class);
		
		@RequestMapping("/content")
		public String content() {
			logger.info("실행");
			return "aboutus/content";
		}
}
