package com.mycompany.webapp.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.Attach;
import com.mycompany.webapp.dto.Estimate;
import com.mycompany.webapp.dto.Product;
import com.mycompany.webapp.dto.Question;
import com.mycompany.webapp.items.EstimateProcess;
import com.mycompany.webapp.service.AttachService;
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
	ProductService productService;
	@Resource
	QuestionService questionService;
	@Resource
	AttachService attachService;
	
	EstimateProcess ep = new EstimateProcess();
	
	@RequestMapping("/questionIndex")
	public String questionIndex() {
		Product product = new Product();
		product.setPid("table-macaron2");
		product.setPname("마카롱 테이블2");
		product.setPcategory("TABLE");
		product.setPdescription("기존 마카롱 테이블의 상위 제품");
		product.setPprice(50);
		product.setPcolor("ivory");
		log.info(productService.getTotalProductsNum());
		log.info(productService.getProductByPid(product.getPid()));
		
		Question question = questionService.getQuestionByQno(1);
		Attach target = new Attach();
		target.setAttable("QUESTION");
		target.setAtid("1");
		target.setAtindex("1");
		question.setQattaches(attachService.getAttachList(target));
		
		log.info(questionService.getQuestionByQno(1));

		return "/question/questionIndex";
	}
	
	@RequestMapping("/questionResult")
	public String questionResult() {
		return "/question/questionResult";
	}
	
	
	@PostMapping("/questionValue")
	public String questionValue(Estimate estimate, HttpSession session) {
		log.info("Estimate: " + estimate.toString());
		log.info("Product: " + productService.getProductByPid("unit-S2100Z"));
		return "/question/questionResult";
	}
}
