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
	public String questionIndex() {		
		/*//User Service Test
		log.info(userService.getUserByUid("userid01"));
		log.info(userService.getUserByUid("userid04"));*/
		
		/*//Dentist Service Test
		log.info(dentistService.getDentistsByUid("userid23")+"\n\n\n\n");
		log.info(dentistService.getDentistByDnumber("8889900000"));
		// 해당 번호가 있는지 없는지 체크
		Dentist dentist = dentistService.getDentistByDnumber("8889900000");
		if(dentist == null) {
			// 만약 없으면 새로 Dentist 객체를 만들고 값 세팅
			dentist = new Dentist();
			dentist.setDnumber("8889900000");
			dentist.setUid("userid23");
			dentist.setDname("치과2234");
			dentist.setDtel("070-2321-9877");
			dentist.setDzipcode("6666");
			dentist.setDaddress1("서울 송파구 가락동 456");
			dentist.setDaddress2("6층 605호");
			dentist.setDemployees(8);
			dentist.setDpy(90);
			
			// Attach 테이블에 넣기 위해 현재 마지막 Attach_no값을 가져옴
			int lastAno = attachService.getLastAno();
			// Attach 각각의 파일 설정
			Attach dattach1 = new Attach();
			dattach1.setAno(lastAno+1);	// 손수 1씩 더해줘야 함...
			dattach1.setAttable("DENTIST");
			dattach1.setAtid("8889900000");
			dattach1.setAtindex("1");
			dattach1.setAcontentType("image/png");
			dattach1.setAsname("1231157888123-floor_plan1.png");
			dattach1.setAoname("floor_plan1.png");
			
			Attach dattach2 = new Attach();
			dattach2.setAno(lastAno+2);
			dattach2.setAttable("DENTIST");
			dattach2.setAtid("8889900000");
			dattach2.setAtindex("2");
			dattach2.setAcontentType("image/jpeg");
			dattach2.setAsname("1232257889123-floor_plan2.jpg");
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
		Product product = productService.getProductByPid("chair-macaron3");
		log.info(product);
		if(product == null) {
			// 없다면 Product 객체 생성 후 값 세팅
			product = new Product();
			product.setPid("chair-macaron3");
			product.setPname("macaron3");
			product.setPcategory("CHAIR");
			product.setPdescription("마카롱 체어 고급형");
			product.setPprice(40);
			product.setPcolor("black,bronwn");
			
			// 첨부 파일이 있을경우 현재 테이블의 마지막 Attach_no를 가져옴
			int lastAno = attachService.getLastAno();
			// Attach 객체 생성 후 세팅
			Attach pattach1 = new Attach();
			pattach1.setAno(lastAno + 1);	// Attach_no는 손수 1씩 더해줘야 함...
			pattach1.setAttable("PRODUCT");
			pattach1.setAtid("chair-macaron3");
			pattach1.setAtindex("1");
			pattach1.setAcontentType("image/png");
			pattach1.setAsname("1234557890124-macaron3_1.png");
			pattach1.setAoname("macaron3_1.png");
			
			Attach pattach2 = new Attach();
			pattach2.setAno(lastAno + 2);
			pattach2.setAttable("PRODUCT");
			pattach2.setAtid("chair-macaron3");
			pattach2.setAtindex("2");
			pattach2.setAcontentType("image/png");
			pattach2.setAsname("1234557890125-macaron3_2.png");
			pattach2.setAoname("macaron3_2.png");
			
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
		
		return "/question/alert";
	}
	
	@RequestMapping("/questionFinish")
	public String qeustionFinish() {
		return "redirect:/mypage/mypage";
	}
}
