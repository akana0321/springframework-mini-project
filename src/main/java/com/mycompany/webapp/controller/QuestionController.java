package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/question")
public class QuestionController {
	@RequestMapping("/questionIndex")
	public String questionIndex() {
		return "/question/questionIndex";
	}
	
	@RequestMapping("/questionResult")
	public String questionResult() {
		return "/question/questionResult";
	}
}
