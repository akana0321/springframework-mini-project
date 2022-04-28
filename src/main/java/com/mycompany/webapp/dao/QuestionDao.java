package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.Question;

@Mapper
public interface QuestionDao {
	public List<Question> selectByPage(Pager pager);
	public Question selectByQno(int qno);
	public int count();
	public int insert(Question question);
	public int deleteByQno(int qno);
	public int update(Question question);
}
