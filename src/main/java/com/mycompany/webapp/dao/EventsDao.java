package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.Events;

@Mapper
public interface EventsDao {
	public List<Events> selectByEid(String eid);	// 특정 이벤트 정보 가져오기
	public List<Events> selectByUid(String uid);	// 유저가 성공한 이벤트 정보 가져오기
	public Events selectByEidnUid(Events events);	// 특정 이벤트에 성공한 유저 아이디에 대한 정보 가져오기
	public int countEid(String eid);				// 특정 이벤트의 수 가져오기
	public int insert(Events events);
	public int deleteByEid(String eid);				// 특정 이벤트에 대한 정보 지우기
	public int deleteByEidnUid(Events events);		// 특정 유저가 참가한 이벤트에 대한 정보 지우기
//	public int update(Events events);				// update는 쓰지 않을 것 같아 일단 주석처리
}
