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
		int ecount = eventService.getTotalEidCount("Test");
		if(ecount  < 10) {
			Events event = new Events();
			event.setUid("userid" + (int)(Math.random()*100));
			event.setEid("Test");
			event.setERewardKind("DISCOUNT");
			event.setERewardValue(10);
			event.setEMaxOccupancy(10);
			eventService.insertEvents(event);
		}
		
		Events event = new Events();
		event.setUid("userid" + (int)(Math.random()*100));
		event.setEid("Test");
		event.setERewardKind("DISCOUNT");
		event.setERewardValue(10);
		event.setEMaxOccupancy(10);
		eventService.insertEvents(event);

		return "home";
	}
}
