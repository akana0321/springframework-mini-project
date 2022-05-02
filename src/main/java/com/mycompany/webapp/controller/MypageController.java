package com.mycompany.webapp.controller;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/mypage")
@Log4j2

public class MypageController {

	@RequestMapping("/mypage")
	public String getMypage() {
		return "mypage/mypage";
	}
	
	@RequestMapping("/myInfo")
	public String myInfo(
			String userName,String userBirth, String userTel, String userEmail, 
			String userAddr1, String userAddr2, String detailUserAddr, String nowPass, String newPass, String reNewPass){
		log.info(userName);
		log.info(userBirth);
		log.info(userTel);
		log.info(userEmail);
		log.info(userAddr1);
		log.info(userAddr2);
		log.info(detailUserAddr);
		return "redirect:/mypage/mypage";
	}
	
	@RequestMapping("/dentalInfo")
	public String dentalInfo(
			String dentalNumber, String dentalName, String dentalTel, String dentalZoneCode,
			String dentalAddr, String detailDentalAddr, int dentalEmployees, int dentalPY) {
		log.info(Integer.parseInt(dentalNumber));
		log.info(dentalName);
		log.info(dentalTel);
		log.info(dentalZoneCode);
		log.info(dentalAddr);
		log.info(detailDentalAddr);
		log.info(dentalEmployees);
		log.info(dentalPY);
		
		return "redirect:/mypage/mypage";
	}

	@RequestMapping("/interialQ")
	public String getInterialQ() {
		return "mypage/interialQ";
	}
	@RequestMapping("/interialP")
	public String getInterialP() {
		return "mypage/interialP";
	}
	@RequestMapping("/ajax/addinfo")
	public String getAddinfo() {
		return "mypage/ajax/addinfo";
	}
	@RequestMapping("/ajax/interial")
	public String getInterialJsp() {
		return "mypage/ajax/interial";
	}
	@RequestMapping("/ajax/product")
	public String getProductJsp() {
		return "mypage/ajax/product";
	}
	
	@RequestMapping("/estimate")
	public String getEstimate() {
		return "mypage/estimate";
	}
}
