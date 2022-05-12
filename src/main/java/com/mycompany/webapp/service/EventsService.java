package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.mycompany.webapp.dao.EventsDao;
import com.mycompany.webapp.dto.Events;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class EventsService {
	@Resource
	private EventsDao eventsDao;
	
	// Get Events By Events_id(What event is it?)
	public List<Events> getEventsByEid(String eid) {
		return eventsDao.selectByEid(eid);
	}
	
	// Get Events By User_id(What events did the user participate in?)
	public List<Events> getEventsByUid(String uid) {
		return eventsDao.selectByUid(uid);
	}
	
	// Get Event By Events_id and User_id(exclude these value in returning 'Events')
	public Events getEventsByEidnUid(Events events) {
		return eventsDao.selectByEidnUid(events);
	}
	
	// Get Total Events_id count - the number of kinds of events
	public int getTotalEidCount(String eid) {
		return eventsDao.countEid(eid);
	}
	
	// Insert Events
	@Transactional(isolation = Isolation.REPEATABLE_READ)
	public int insertEvents(Events events) {
		return eventsDao.insert(events);
	}
	
	// Delete Events
	public int deleteEventsByEid(String eid) {
		return eventsDao.deleteByEid(eid);
	}
	
	// Delete Events by Events_id and User_id(when user uses an event reward...)
	public int deleteEventsByEidnUid(Events events) {
		return eventsDao.deleteByEidnUid(events);
	}
}
