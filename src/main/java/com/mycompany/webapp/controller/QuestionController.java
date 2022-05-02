package com.mycompany.webapp.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.Estimate;
import com.mycompany.webapp.service.CommentService;

import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/question")
@Log4j2
public class QuestionController {
	@Resource
	CommentService commentService;
	
	@RequestMapping("/questionIndex")
	public String questionIndex() {
		log.info(commentService.getCommentByCno(1).getCno());
		return "/question/questionIndex";
	}
	
	@RequestMapping("/questionResult")
	public String questionResult() {
		return "/question/questionResult";
	}
	
	@PostMapping("/questionValue")
	public String questionValue(Estimate estimate) {
		log.info("실행"); 
		log.info(estimate.toString());
		return "/question/questionResult";
	}
}
