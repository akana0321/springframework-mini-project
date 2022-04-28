package com.mycompany.webapp.dao;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.User;

@Mapper
public interface UserDao {
	public User selectByUid(String uid);
	public int count();
	public int insert(User user);
	public int deleteByUid(String uid);
	public int update(User user);
}