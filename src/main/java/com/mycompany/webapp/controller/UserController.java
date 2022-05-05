package com.mycompany.webapp.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.User;
import com.mycompany.webapp.service.UserService;
import com.mycompany.webapp.service.UserService.JoinResult;
import com.mycompany.webapp.service.UserService.LoginResult;

import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/user")
@Log4j2
public class UserController {
	@Resource
	private UserService userService;
	
	@RequestMapping("/home")
	public String home() {
		log.info("실행");
		return "redirect:/home";
	}
	
	@RequestMapping("/signup1")
	public String signup1() {
		log.info("실행");
		return "user/signup1";
	}
	
	@RequestMapping("/signup2")
	public String signup2() {
		log.info("실행");
		return "user/signup2";
	}
	
	@PostMapping("/signup2")
	public String join(User user, Model model) {
		user.setUenabled(true);
		user.setUrole("U");
		JoinResult jr = userService.signUp(user);
		if(jr == JoinResult.SUCCESS) {
			return "redirect:/home";
		} else if(jr == JoinResult.DUPLICATED) {
			model.addAttribute("error", "중복된 아이디가 있습니다.");
			return "user/signup2";
		} else {
			model.addAttribute("error", "회원 가입이 실패했습니다. 다시 시도해주세요.");
			return "user/signup2";
		}
		
	}
	
	@RequestMapping("/login")
	public String login() {
		log.info("실행");
		return "user/login";
	}
	
	@PostMapping("/login")
	public String login(User user, HttpSession session, Model model) {
		LoginResult result = userService.login(user);
		if(result == LoginResult.SUCCESS) {
			session.setAttribute("sessionUid", user.getUid());
			return "redirect:/home";
		} else if(result == LoginResult.FAIL_UID) {
			model.addAttribute("error", "아이디가 존재하지 않습니다.");
			return "user/login";
		} else {
			model.addAttribute("error", "비밀번호가 올바르지 않습니다.");
			return "user/login";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("sessionUid");
		return "redirect:/home";
	}
}
