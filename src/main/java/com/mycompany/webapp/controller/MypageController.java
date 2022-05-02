package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/mypage")
@Log4j2

public class MypageController {

	@RequestMapping("/mypage")
	public String getMypage() {
		log.info("실행");
		return "mypage/mypage";
	}
	@RequestMapping("/interialQ")
	public String getInterialQ() {
		log.info("실행");
		return "mypage/interialQ";
	}
	@RequestMapping("/interialP")
	public String getInterialP() {
		log.info("실행");
		return "mypage/interialP";
	}
	@RequestMapping("ajax/addinfo")
	public String getAddinfo() {
		log.info("실행");
		return "mypage/ajax/addinfo";
	}
	@RequestMapping("ajax/interial")
	public String getInterialJsp() {
		log.info("실행");
		return "mypage/ajax/interial";
	}
	@RequestMapping("ajax/product")
	public String getProductJsp() {
		log.info("실행");
		return "mypage/ajax/product";
	}
	
	@RequestMapping("/estimate")
	public String getEstimate() {
		log.info("실행");
		return "mypage/estimate";
	}
}
