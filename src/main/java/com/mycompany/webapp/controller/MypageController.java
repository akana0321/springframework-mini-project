package com.mycompany.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/mypage")
@Log4j2

public class MypageController {

	@RequestMapping("/mypage")
	public String method1() {
		log.info("실행");
		return "mypage/mypage";
	}
	@RequestMapping("/interialQ")
	public String method2() {
		log.info("실행");
		return "mypage/interialQ";
	}
	@RequestMapping("/interialP")
	public String method3() {
		log.info("실행");
		return "mypage/interialP";
	}
	@RequestMapping("/addinfo")
	public String method4() {
		log.info("실행");
		return "mypage/addinfo";
	}
	
	@RequestMapping("/estimate")
	public String method5() {
		log.info("실행");
		return "mypage/estimate";
	}
}
