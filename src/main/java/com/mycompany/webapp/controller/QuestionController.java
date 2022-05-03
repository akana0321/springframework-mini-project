package com.mycompany.webapp.controller;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.Estimate;
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
	
	
	@PostMapping(value="/questionValue", produces="application/json; charset=UTF-8")
	public String questionValue(Estimate estimate, HttpSession session) {
		log.info(estimate.toString());
		int py = estimate.getEpy();
		HashMap<String, Double> twm = ep.getTypeWeightMap();
		double buildingWeight = twm.get(estimate.getEbuildingType());
		double dentalWeight = twm.get(estimate.getEdentalType());
		int floorTotal = ep.categoryTotalPrice(estimate.getEfloorType(), py);
		int wallTotal = ep.categoryTotalPrice(estimate.getEwallType(), py);
		int k3000bTotal = ep.categoryTotalPrice("k3000b", estimate.getEk3000b());
		int k5000bTotal = ep.categoryTotalPrice("k5000b", estimate.getEk5000b());
		int s2100zTotal = ep.categoryTotalPrice("s2100z", estimate.getEs2100z());
		int furniture1Total = ep.categoryTotalPrice("furniture1", estimate.getEfurniture1());
		int furniture1Tota2 = ep.categoryTotalPrice("furniture2", estimate.getEfurniture2());
		int furniture1Tota3 = ep.categoryTotalPrice("furniture3", estimate.getEfurniture3());
		int totalPrice = ep.getTotalPrice();
		
		/*		log.info("" + buildingWeight  + ", " + dentalWeight  + ", " + floorTotal  + ", " + 
						floorTotal + ", " + wallTotal  + ", " + k3000bTotal  + ", " + k5000bTotal +
						", " + s2100zTotal + ", " + furniture1Total + ", " + furniture1Tota2 + ", " +
						", " + furniture1Tota3 + ", " + totalPrice);
		*/		
		JSONObject jsonObject = ep.jsonWrapper(estimate);
		log.info(jsonObject.toString());
		
		return "/question/questionResult";
	}
}
