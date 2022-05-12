package com.mycompany.webapp.controller;

import com.mycompany.webapp.dto.Attach;
import com.mycompany.webapp.dto.Estimate;
import com.mycompany.webapp.dto.Product;
import com.mycompany.webapp.dto.Question;
import com.mycompany.webapp.service.AttachService;
import com.mycompany.webapp.service.ProductService;
import com.mycompany.webapp.service.QuestionService;

import lombok.extern.log4j.Log4j2;

import java.io.UnsupportedEncodingException;
import java.util.List;
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
	private static final Logger log = LoggerFactory.getLogger(PickPYController.class);
	

	@Resource
	private ProductService productService;
	
	@Resource
	private QuestionService questionService;
	
	@Resource
	private AttachService attachService;
		
		@RequestMapping("/content")
		public String content() {
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
		
		@GetMapping("/test")
		public String test() {
			return "pickPY/test";
		}
		
		@GetMapping("/test2")
		public String test2() {
			return "pickPY/test2";
		}
		
		@RequestMapping("/customerSupport")
		public String customerSupport(Model model, HttpSession session, HttpServletRequest request) throws UnsupportedEncodingException {
//			String userId = (String) request.getSession().getAttribute("sessionUid");
//			if(userId != null) {
			request.setCharacterEncoding("euc-kr");
			String pid = (String)request.getParameter("productId");
			Product product = productService.getProductByPid(pid);
			Attach attach = new Attach();
			attach.setAttable("PRODUCT");
			attach.setAtid(pid);
			attach.setAtindex("1");
			attach = attachService.getAttachOne(attach);
			session.setAttribute("product", product);
			session.setAttribute("attach", attach);
			//log.info(product);
			
			return "pickPY/customerSupport";
//			}
//			else {
//				return "redirect:/user/login";
//			}
		}
		@RequestMapping("/productInfo")
		public String productInfo(Model model, HttpSession session, HttpServletRequest request) throws UnsupportedEncodingException {
			request.setCharacterEncoding("euc-kr");
			String pid = (String)request.getParameter("productId");
			
			Product product = productService.getProductByPid(pid);
			Attach attach = new Attach();
			attach.setAttable("PRODUCT");
			attach.setAtid(pid);
			attach.setAtindex("1");
			attach = attachService.getAttachOne(attach);
			session.setAttribute("product", product);
			session.setAttribute("attach", attach);

//			recommand List
			List<Product> recommandProduct = productService.get2ProductsByPcategoryExceptPid(product);

			Product recommand1= recommandProduct.get(0);
			Attach recommandAttach1 = new Attach();
			recommandAttach1.setAttable("PRODUCT");
			recommandAttach1.setAtid(recommand1.getPid());
			recommandAttach1.setAtindex("1");
			recommandAttach1 = attachService.getAttachOne(recommandAttach1);
			session.setAttribute("recommand1", recommand1);
			session.setAttribute("recommandAttach1", recommandAttach1);
			
			Product recommand2= recommandProduct.get(1);
			Attach recommandAttach2 = new Attach();
			recommandAttach2.setAttable("PRODUCT");
			recommandAttach2.setAtid(recommand2.getPid());
			recommandAttach2.setAtindex("1");
			recommandAttach2 = attachService.getAttachOne(recommandAttach2);
			session.setAttribute("recommand2", recommand2);
			session.setAttribute("recommandAttach2", recommandAttach2);
			
			//log.info(product);
			return "pickPY/productInfo";
		}
		
		@ResponseBody
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
