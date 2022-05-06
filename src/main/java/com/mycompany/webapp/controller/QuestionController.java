package com.mycompany.webapp.controller;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.Estimate;
import com.mycompany.webapp.dto.Question;
import com.mycompany.webapp.dto.User;
import com.mycompany.webapp.items.EstimateProcess;
import com.mycompany.webapp.service.AttachService;
import com.mycompany.webapp.service.CommentService;
import com.mycompany.webapp.service.DentistService;
import com.mycompany.webapp.service.EstimateService;
import com.mycompany.webapp.service.ProductService;
import com.mycompany.webapp.service.QuestionService;
import com.mycompany.webapp.service.UserService;

import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/question")
@Log4j2
public class QuestionController {
	@Resource
	UserService userService;
	@Resource
	DentistService dentistService;
	@Resource
	ProductService productService;
	@Resource
	QuestionService questionService;
	@Resource
	CommentService commentService;
	@Resource
	AttachService attachService;
	@Resource
	EstimateService estimateService;
	
	EstimateProcess ep;
	
	@RequestMapping("/questionIndex")
	public String questionIndex(HttpServletRequest request) {		
		String userId = (String) request.getSession().getAttribute("sessionUid");
		if(userId == null) {
			return "/question/goBackHome";
		}
		return "/question/questionIndex";
	} 
	
	@PostMapping(value="/questionResult", produces="application/json; charset=UTF-8")
	public String questionResult(Estimate estimate, Model model) {
		log.info(estimate.toString());
		ep = new EstimateProcess(estimate);
			
		estimate = ep.init();
		HashMap<String, Integer> priceMap = ep.getpPiceMap();
		log.info(estimate);
		
		model.addAttribute("estimate", estimate);
		model.addAttribute("priceMap", priceMap);
		return "/question/questionResult";
	}
	
	@RequestMapping("/questionSending")
	public String questionSending(HttpSession session, HttpServletRequest request) {
		/* session으로 UID 받고 Question 객체 만들어서 삽입 후 qno 받고 estimate 객체 세팅한 후 insert */
		String userId = (String) request.getSession().getAttribute("sessionUid");
		Estimate estimate = ep.init();
		
		Question question = new Question();
		question.setUid(userId);
		question.setQcategory("INTERIOR");
		question.setQcontent("INTERIOR QUESTION - " + userId);
		question.setQno(questionService.insertQuestion(question));
		
		estimate.setQno(question.getQno());
		
		estimate.setUid(userId);
		estimateService.insertEstimate(estimate);
		
		return "/question/questionFinish";
	}
	
	@RequestMapping("/questionFinish")
	public String questionFinish() {
		return "redirect:/mypage/mypage";
	}
	
	@RequestMapping("/goBackHome")
	public String goBackHome() {
		return "redirect:/home";
	}
}
