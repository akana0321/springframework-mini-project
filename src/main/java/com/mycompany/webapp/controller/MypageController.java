package com.mycompany.webapp.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.Dentist;
import com.mycompany.webapp.dto.User;
import com.mycompany.webapp.service.UserService;

import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/mypage")
@Log4j2

public class MypageController {
	
	@Resource
	private UserService userService;
	
	@RequestMapping("/mypage")
	public String getMypage() {
		log.info(userService.getUserByUid("userid01").getUname());
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
	
//	@RequestMapping("/dentalInfo")
//	public String dentalInfo(
//			String dentalNumber, String dentalName, String dentalTel, String dentalZoneCode,
//			String dentalAddr, String detailDentalAddr, int dentalEmployees, int dentalPY) {
//		log.info(Integer.parseInt(dentalNumber));
//		log.info(dentalName);
//		log.info(dentalTel);
//		log.info(dentalZoneCode);
//		log.info(dentalAddr);
//		log.info(detailDentalAddr);
//		log.info(dentalEmployees);
//		log.info(dentalPY);
//		
//		return "redirect:/mypage/mypage";
//	}
	
	
	@RequestMapping("/dentalInfo")
	public String dentalInfo(@ModelAttribute("dentist") Dentist dentist) {
		log.info(dentist);
//		log.info(member.getHnumber());
//		log.info(member.getHname());
//		log.info(member.getHtel());
//		log.info(member.getHzipcode());
//		log.info(member.getHaddress1());
//		log.info(member.getHaddress2());
//		log.info(member.getHemployees());
//		log.info(member.getHpy());
//		log.info(member.getHattaches());
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
