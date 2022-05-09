package com.mycompany.webapp.controller;

import com.mycompany.webapp.dto.Estimate;
import com.mycompany.webapp.dto.Product;
import com.mycompany.webapp.dto.Question;
import com.mycompany.webapp.service.ProductService;
import com.mycompany.webapp.service.QuestionService;

import lombok.extern.log4j.Log4j2;

import java.io.UnsupportedEncodingException;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/pickPY")
@Log4j2
public class PickPYController {
	private static final Logger log = LoggerFactory.getLogger(AboutUsController.class);
	

	@Resource
	private ProductService productService;
	
	@Resource
	private QuestionService questionService;
		
		@RequestMapping("/content")
		public String content() {
			log.info("실행");
			return "pickPY/content";
		}
		
		@GetMapping("/showPY")
		public String showPY() {
			return "pickPY/showPY";
		}
		
		@GetMapping("/PYroom")
		public String PYroom() {
			return "pickPY/PYroom";
		}
		
		@GetMapping("/blankInfo")
		public String blankInfo() {
			return "pickPY/blankInfo";
		}
		
		@RequestMapping("/customerSupport")
		public String customerSupport(Model model, HttpSession session, HttpServletRequest request) throws UnsupportedEncodingException {
			request.setCharacterEncoding("euc-kr");
			String pid = (String)request.getParameter("productId");
			log.info(pid);
			Product product = productService.getProductByPid(pid);
			session.setAttribute("product", product);
			//log.info(product);
			
			return "pickPY/customerSupport";
		}
		@RequestMapping("/productInfo")
		public String productInfo(Model model, HttpSession session, HttpServletRequest request) throws UnsupportedEncodingException {
			request.setCharacterEncoding("euc-kr");
			String pid = (String)request.getParameter("productId");
			log.info(pid);
			Product product = productService.getProductByPid(pid);
			session.setAttribute("product", product);
			//log.info(product);
			return "pickPY/productInfo";
		}
		
		@PostMapping("/questionProduct")
		public String questionProduct(HttpServletRequest request, Locale locale, Model model, String qcontent, String name) {
			String userId = (String) request.getSession().getAttribute("sessionUid");
			
			Question question = new Question();
			question.setUid(userId);
			question.setQcategory("PRODUCT");
			question.setQcontent(qcontent);
			
			String pid = (String)request.getParameter("productId");
			question.setPid(pid);
			
			questionService.insertQuestion(question);
			
			return "redirect:/mypage/mypage";
		}
		
}
