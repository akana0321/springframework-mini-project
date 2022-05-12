package com.mycompany.webapp.items;

import java.util.List;

import com.mycompany.webapp.dto.Events;

public class CreateEventObject {
	private List<Events> eventList;
	
	public CreateEventObject() {
		for(int i=0; i<1000; i++) {
			Events event = new Events();
			event.setUid("userid" + i);
			event.setEid("Test");
			event.setERewardKind("DISCOUNT");	// % 할인
			event.setERewardValue(10);			// 10% 할인
			event.setEMaxOccupancy(3);			// 최대 5명
			eventList.add(event);
		}
	}
	
	public Events getEvents() {
		Events event = eventList.get(0);
		eventList.remove(0);
		return event;
	}
}
