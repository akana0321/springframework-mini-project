package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.QuestionDao;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.Question;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class QuestionService {
	@Resource
	private QuestionDao questionDao;
	
	// All Questions count
	public int getTotalQuestionNum() {
		return questionDao.count();
	}
	
	// Get Questions by Pager
	public List<Question> getQuestionsByPager(Pager pager) {
		return questionDao.selectByPage(pager);
	}
	
	// Get Question by Question no
	public Question getQuestionByQno(int qno) {
		return questionDao.selectByQno(qno);
	}
	
	// Insert Question
	public int insertQuestion(Question question) {
		questionDao.insert(question);
		return question.getQno();
	}
	
	// Delete Question by qno
	public int deleteQuestionByQno(int qno) {
		return questionDao.deleteByQno(qno);
	}
	
	// Update Question
	public int updateQuestion(Question question) {
		return questionDao.update(question);
	}
}
