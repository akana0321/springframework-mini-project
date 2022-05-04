package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.Dentist;

@Mapper
public interface DentistDao {
	public Dentist selectByDnumber(String dnumber);
	public List<Dentist> selectByUid(String uid);
	public int count();
	public int insert(Dentist dentist);
	public int deleteByDnumber(String dnumber);
	public int update(Dentist dentist);
	
}
