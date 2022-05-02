package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.CommentDao;
import com.mycompany.webapp.dto.Comment;

@Service
public class CommentService {
	@Resource
	private CommentDao commentDao;
	
	// Get Comments by Question no
	public List<Comment> getCommentsByQno(int qno) {
		return commentDao.selectByQno(qno);
	}
	
	// Get Comment by Comment no
	public Comment getCommentByCno(int cno) {
		return commentDao.selectByCno(cno);
	}
	
	// Count Comments num in Specific Question
	public int getTotalCommentsNumInQuestion(int qno) {
		return commentDao.count(qno);
	}
	
	// Insert Comment
	public int insertComment(Comment comment) {
		return commentDao.insert(comment);
	}
	
	// Delete Comment By Comment no
	public int deleteCommentByCno(int cno) {
		return commentDao.deleteByCno(cno);
	}
	
	// Update Comment
	public int updateComment(Comment comment) {
		return commentDao.update(comment);
	}
}
