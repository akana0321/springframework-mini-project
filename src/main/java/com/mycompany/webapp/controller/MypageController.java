package com.mycompany.webapp.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.webapp.dto.Attach;
import com.mycompany.webapp.dto.Dentist;
import com.mycompany.webapp.dto.User;
import com.mycompany.webapp.service.AttachService;
import com.mycompany.webapp.service.UserService;

import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/mypage")
@Log4j2

public class MypageController {
	
	@Resource
	private UserService userService;
	
	@Resource
	private AttachService attachService;
	
	@RequestMapping("/mypage")
	public String getMypage(Model model, HttpSession session) {
		User user = userService.getUserByUid("userid02");

		Attach attach = user.getUattach();
		log.info(attach);
		
		user.setUbirth(user.getUbirth().split(" ")[0]);
		model.addAttribute("user",user);
		session.setAttribute("userSession", user);
		session.setAttribute("userimg", attach);
		return "mypage/mypage";
	}

	@PostMapping(value = "/fileuploadAjax",produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String changeProfile(Attach attach, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		Attach attachSession = (Attach)session.getAttribute("userimg");
		attachSession.setAttach(attach.getAttach());
		
		//String saveFilename = new Date().getTime() + "-" + attachSession.getAttach().getOriginalFilename(); 
		File file = new File("/mypage/" + attachSession.getAsname());
		attachSession.getAttach().transferTo(file);

		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result", "success");
		jsonObject.put("saveFilename", attachSession.getAsname());
		String json = jsonObject.toString();
		
		request.removeAttribute("userimg");
		
		return json;
	}
	

	@RequestMapping("/myInfo")
	public String myInfo(
			User user, String newPass, String reNewPass,Model model, HttpServletRequest request){

		
		HttpSession session = request.getSession();
		log.info(session.getAttribute("userSession"));
		User userUpdate = (User) session.getAttribute("userSession");
		
		userUpdate.setUbirth(user.getUbirth());
		userUpdate.setUtel(user.getUtel());
		userUpdate.setUemail(user.getUemail());
		userUpdate.setUzipcode(user.getUzipcode());
		userUpdate.setUaddress1(user.getUaddress1());
		userUpdate.setUaddress2(user.getUaddress2());

		if(!newPass.equals("") && !reNewPass.equals("")) {
			if(!newPass.equals(reNewPass)) {
				model.addAttribute("user",user);
				model.addAttribute("error","비밀번호가 틀립니다.");
				return "mypage/mypage";
			}
			else {
				userUpdate.setUpassword(newPass);

			}
		}
		log.info(userUpdate);
		userService.updateUser(userUpdate);
		return "redirect:/mypage/mypage";
	}
	
	
//	@PostMapping("/login")
//	public String login(String upassword, HttpSession session, Model model) {
//		LoginResult result = memberService.login(member);
//		if(result == LoginResult.SUCCESS) {
//			session.setAttribute("sessionMid", member.getMid());
//			return "redirect:/ch14/content";
//		}else if(result == LoginResult.FAIL_MID) {
//			model.addAttribute("error","아이디가 존재하지 않습니다.");
//			return "ch14/loginForm";
//		}else {
//			model.addAttribute("error","패스워드가 틀립니다.");
//			return "ch14/loginForm";
//		}
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
