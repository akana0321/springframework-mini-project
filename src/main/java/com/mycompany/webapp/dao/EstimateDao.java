package com.mycompany.webapp.dao;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.Estimate;

@Mapper
public interface EstimateDao {
	public Estimate selectByEno(int eno);
	public Estimate selectByQno(int qno);
	public int count();
	public int insert(Estimate estimate);
	public int deleteByEno(int eno);
	public int update(Estimate estimate);
}
