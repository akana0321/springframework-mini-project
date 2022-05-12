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
		return "aboutus/content";
	}
	
	@RequestMapping("/aboutusHeader")
	public String aboutusHeader() {
		return "aboutus/aboutusHeader";
	}
	
	@RequestMapping("/aboutus")
	public String aboutus() {
		return "aboutus/aboutus";
	}
	
	@RequestMapping("/interiornumber")
	public String interiornumber() {
		return "aboutus/interiornumber";
	}
	
	@RequestMapping("/advantage")
	public String advantage() {
		return "aboutus/advantage";
	}
	
	@RequestMapping("/meetteam")
	public String meetteam() {
		return "aboutus/meetteam";
	}
		
}
