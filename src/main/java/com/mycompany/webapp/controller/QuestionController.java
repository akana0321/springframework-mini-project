package com.mycompany.webapp.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.webapp.dto.Attach;
import com.mycompany.webapp.dto.Estimate;
import com.mycompany.webapp.dto.Product;
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
	public String questionIndex() {		
		/*//User Service Test
		log.info(userService.getUserByUid("userid01"));
		log.info(userService.getUserByUid("userid04"));*/
		
		/*//Dentist Service Test
		log.info(dentistService.getDentistsByUid("userid04")+"\n\n\n\n");
		log.info(dentistService.getDentistByDnumber("1112233333"));
		// 해당 번호가 있는지 없는지 체크
		Dentist dentist = dentistService.getDentistByDnumber("5556677777");
		if(dentist == null) {
			// 만약 없으면 새로 Dentist 객체를 만들고 값 세팅
			dentist = new Dentist();
			dentist.setDnumber("5556677777");
			dentist.setUid("userid06");
			dentist.setDname("정말 좋은 치과");
			dentist.setDtel("070-1125-3245");
			dentist.setDzipcode("55555");
			dentist.setDaddress1("서울 송파구 가락동 321");
			dentist.setDaddress2("2층 205호");
			dentist.setDemployees(4);
			dentist.setDpy(55);
			
			// Attach 테이블에 넣기 위해 현재 마지막 Attach_no값을 가져옴
			int lastAno = attachService.getLastAno();
			// Attach 각각의 파일 설정
			Attach dattach1 = new Attach();
			dattach1.setAno(lastAno+1);	// 손수 1씩 더해줘야 함...
			dattach1.setAttable("DENTIST");
			dattach1.setAtid("5556677777");
			dattach1.setAtindex("1");
			dattach1.setAcontentType("image/png");
			dattach1.setAsname("1234557890123-floor_plan1.png");
			dattach1.setAoname("floor_plan1.png");
			
			Attach dattach2 = new Attach();
			dattach2.setAno(lastAno+2);
			dattach2.setAttable("DENTIST");
			dattach2.setAtid("5556677777");
			dattach2.setAtindex("2");
			dattach2.setAcontentType("image/jpeg");
			dattach2.setAsname("1234557890123-floor_plan2.jpg");
			dattach2.setAoname("floor_plan2.png");
			
			// Attach List를 만들어 dentist의 dattaches에 넣음
			List<Attach> dattachList = new ArrayList<>();
			dattachList.add(dattach1);
			dattachList.add(dattach2);
			
			dentist.setDattaches(dattachList);
			
			log.info(dentistService.insertDentist(dentist));
		}*/
		
		/*//Product Service Test
		log.info(productService.getProductByPid("unit-k3000b")+"\n\n");
		log.info(productService.getProductByPid("building-house"));
		
		// 우선 해당 product_id가 있는지 확인
		Product product = productService.getProductByPid("chair-macaron2");
		log.info(product);
		if(product == null) {
			// 없다면 Product 객체 생성 후 값 세팅
			product = new Product();
			product.setPid("chair-macaron2");
			product.setPname("macaron2");
			product.setPcategory("CHAIR");
			product.setPdescription("마카롱 체어 보완버전");
			product.setPprice(35);
			product.setPcolor("red,blue,pink");
			
			// 첨부 파일이 있을경우 현재 테이블의 마지막 Attach_no를 가져옴
			int lastAno = attachService.getLastAno();
			// Attach 객체 생성 후 세팅
			Attach pattach1 = new Attach();
			pattach1.setAno(lastAno + 1);	// Attach_no는 손수 1씩 더해줘야 함...
			pattach1.setAttable("PRODUCT");
			pattach1.setAtid("chair-macaron2");
			pattach1.setAtindex("1");
			pattach1.setAcontentType("image/png");
			pattach1.setAsname("1234557890123-macaron2.png");
			pattach1.setAoname("macaron2.png");
			
			Attach pattach2 = new Attach();
			pattach2.setAno(lastAno + 2);
			pattach2.setAttable("PRODUCT");
			pattach2.setAtid("chair-macaron2");
			pattach2.setAtindex("1");
			pattach2.setAcontentType("image/png");
			pattach2.setAsname("1234557890123-macaron2.png");
			pattach2.setAoname("macaron2.png");
			
			// Attach List를 만들고 각각의 attach 객체를 추가한 뒤 product에 set
			List<Attach> pattachList = new ArrayList<>();
			pattachList.add(pattach1);
			pattachList.add(pattach2);
			product.setPattaches(pattachList);
			
			log.info(productService.insertProduct(product));
		}*/
		
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
	
	@RequestMapping(value="/questionResult", produces="application/json; charset=UTF-8")
	public String questionResult() {
		return "/question/questionResult";
	}
	
	@ResponseBody
	@PostMapping(value="/questionValue", produces="application/json; charset=UTF-8")
	public String questionValue(Estimate estimate, HttpSession session) {
		log.info(estimate.toString());
		ep = new EstimateProcess(estimate);
			
		estimate = ep.init();
		log.info(estimate);
		
		return "redirect:/question/questionResult";
	}
}
