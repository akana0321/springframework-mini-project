package com.mycompany.webapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.Comment;

@Mapper
public interface CommentDao {
	public List<Comment> selectByQno(int qno);
	public Comment selectByCno(int cno);
	public int count(int qno);
	public int insert(Comment comment);
	public int deleteByCno(int cno);
	public int update(Comment comment);
}
