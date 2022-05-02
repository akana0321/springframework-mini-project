package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.Hospital;

@Mapper
public interface HospitalDao {
	public Hospital selectByHnumber(String hnumber);
	public List<Hospital> selectByUid(String uid);
	public int count();
	public int insert(Hospital hospital);
	public int deleteByHnumber(String hnumber);
	public int update(Hospital hospital);
}
