package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.Estimate;

@Mapper
public interface EstimateDao {
	public List<Estimate> selectByEno(int eno);
	public List<Estimate> selectByUid(String uid);
	public int count();
	public int insert(Estimate estimate);
	public int deleteByEno(int eno);
	public int deleteByUid(String uid);
	public int update(Estimate estimate);
}
