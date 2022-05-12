package com.mycompany.webapp.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.Events;
import com.mycompany.webapp.service.EventsService;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class HomeController {
	private int counter = 0;
	@Resource
	EventsService eventService;
	
	@RequestMapping("/")
	public String home() {
		
		return "home";
	}
	
	@RequestMapping("/home")
	public String home2() {
		Events event = new Events();
		event.setUid("userid" + counter);
		event.setEid("Test");
		event.setERewardKind("DISCOUNT");	// % 할인
		event.setERewardValue(10);			// 10% 할인
		event.setEMaxOccupancy(3);
		eventService.insertEvents(event);
		counter++;
		log.info(counter);
		return "home";
	}
}
