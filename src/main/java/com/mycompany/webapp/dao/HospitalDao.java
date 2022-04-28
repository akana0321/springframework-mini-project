package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.Hospital;

@Mapper
public interface HospitalDao {
	public List<Hospital> selectByHtel(String htel);
	public List<Hospital> selectByUid(String uid);
	public int count();
	public int insert(Hospital hospital);
	public int deleteByHtel(String htel);
	public int update(Hospital hospital);
}
