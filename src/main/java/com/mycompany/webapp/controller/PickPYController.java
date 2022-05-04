package com.mycompany.webapp.controller;

import com.mycompany.webapp.dto.Product;
import com.mycompany.webapp.service.ProductService;

import lombok.extern.log4j.Log4j2;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/pickPY")
@Log4j2
public class PickPYController {

	@Resource
	private ProductService productService;
		
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
		@GetMapping("/customerSupport")
		public String customerSupport() {
			return "pickPY/customerSupport";
		}
		@GetMapping("/productInfo")
		public String productInfo(Model model, HttpSession session) {
			Product product = productService.getProductByPid("unit-k3000b");
			//log.info(product);
			session.setAttribute("product", product);
			
			return "pickPY/productInfo";
		}
}
