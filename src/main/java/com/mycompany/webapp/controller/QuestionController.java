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
	
	EstimateProcess ep = new EstimateProcess();
	
	@RequestMapping("/questionIndex")
	public String questionIndex() {		
		/*//User Service Test
		log.info(userService.getUserByUid("userid01"));
		log.info(userService.getUserByUid("userid04"));*/
		
		/*//Dentist Service Test
		log.info(dentistService.getDentistsByUid("userid04")+"\n\n\n\n");
		log.info(dentistService.getDentistByDnumber("1112233333"));*/
		
		/*//Product Service Test
		log.info(productService.getProductByPid("unit-k3000b")+"\n\n");
		log.info(productService.getProductByPid("building-house"));*/
		
		/*//Question Service Test
		log.info(questionService.getQuestionByQno(3));
		log.info(questionService.getQuestionByQno(1));*/
		
		/*//Comment Service Test
		log.info(commentService.getCommentByCno(1)+"-----------------------------------------");
		log.info(commentService.getCommentByCno(4)+"-----------------------------------------");
		log.info(commentService.getCommentsByQno(4)+"-----------------------------------------");*/
		
		/*//Attach Service Test
		Attach target = new Attach();
		target.setAttable("QUESTION");
		target.setAtid("1");
		target.setAtindex("1");
		log.info(attachService.getAttachList(target)+"\n--------------------------------------");
		log.info(attachService.getAttachOne(target)+"\n--------------------------------------");*/
		
		/*//Estimate Service Test
		log.info(estimateService.getEstimateByEno(1)+"\n--------------------------------------");
		log.info(estimateService.getEstimateByQno(2)+"\n--------------------------------------");
		log.info(estimateService.getEstimateByEno(11)+"\n--------------------------------------");*/

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
