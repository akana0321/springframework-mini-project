package com.mycompany.webapp.controller;

import java.time.LocalDateTime;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String getMypage(Model model) {
//		log.info(userService.getUserByUid("userid01").getUname());
		User user = userService.getUserByUid("userid01");
		model.addAttribute("user",user);
		
		return "mypage/mypage";
	}


	@RequestMapping("/myInfo")
	public String myInfo(
			String uname,String ubirth, String utel, String uemail, 
			String uzipcode, String uaddress1, String uaddress2, String upassword, String newPass, String reNewPass){
		log.info(uname);
		log.info(ubirth);
		log.info(utel);
		log.info(uemail);
		log.info(uzipcode);
		log.info(uaddress1);
		log.info(uaddress2);
		log.info(upassword);
		log.info(newPass);
		log.info(reNewPass);
		
		
		return "redirect:/mypage/mypage";
	}
	


	
	
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
