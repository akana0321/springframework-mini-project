package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.Attach;

@Mapper
public interface AttachDao {
	public List<Attach> selectByTargetList(Attach target);
	public Attach selectByTargetOne(Attach target);
	public int count();
	public Integer selectLastAno();
	public int insert(Attach attach);
	public int deleteByTargetList(Attach target);
	public int deleteByTargetOne(int ano);
	public int update(Attach attach);
}
