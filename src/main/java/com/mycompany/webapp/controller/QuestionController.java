package com.mycompany.webapp.controller;

import java.time.LocalDate;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.Estimate;
import com.mycompany.webapp.dto.Events;
import com.mycompany.webapp.dto.Question;
import com.mycompany.webapp.items.EstimateProcess;
import com.mycompany.webapp.service.EstimateService;
import com.mycompany.webapp.service.EventsService;
import com.mycompany.webapp.service.QuestionService;

@Controller
@RequestMapping("/question")
public class QuestionController {
	@Resource
	QuestionService questionService;
	@Resource
	EstimateService estimateService;
	@Resource
	EventsService eventsService;
	
	EstimateProcess ep;
	String eventName;
	
	@RequestMapping("/questionIndex")
	public String questionIndex(HttpSession session, HttpServletRequest request, Model model) {		
		String userId = (String) request.getSession().getAttribute("sessionUid");
		if(userId == null) {
			return "/question/goBackHome";
		} else {
			eventName = LocalDate.now().toString();
			int isEvent = eventsService.getTotalEidCount(eventName);
			session.setAttribute(eventName, isEvent);
			session.setAttribute("remain", 3-isEvent);
			model.addAttribute("remain", 3-isEvent);
			return "/question/questionIndex";
		}
	} 
	
	@PostMapping(value="/questionResult", produces="application/json; charset=UTF-8")
	public String questionResult(Estimate estimate, Model model) {
		// EstimateProcess에 estimate 객체를 넣어 EP 초기화
		ep = new EstimateProcess(estimate);
		
		// EstimateProcess에서 재정의한 Estimate 객체를 받음
		estimate = ep.init();
		// 제품 하나의 가격을 저장한 priceMap을 받음
		HashMap<String, Integer> priceMap = ep.getpPiceMap();
		
		// View에서 출력하기 위해 estimate와 priceMap을 넘김
		model.addAttribute("estimate", estimate);
		model.addAttribute("priceMap", priceMap);
		return "/question/questionResult";
	}
	
	@RequestMapping("/questionSending")
	public String questionSending(HttpSession session, HttpServletRequest request, Model model) {
		String userId = (String) request.getSession().getAttribute("sessionUid");
		Estimate estimate = ep.init();
		
		// 질문 작성
		Question question = new Question();
		question.setUid(userId);
		question.setQcategory("INTERIOR");
		question.setQcontent("견적 문의");
		int qresult = questionService.insertQuestion(question);
		
		// 이벤트에 들었는지 확인
		int eventsCondition = eventsService.getTotalEidCount(eventName);
		if(eventsCondition <= 3) {
			Events event = new Events();
			event.setUid(userId);
			event.setEid(eventName);
			event.setERewardKind("DISCOUNT");	// % 할인
			event.setERewardValue(10);			// 10% 할인
			event.setEMaxOccupancy(3);			// 최대 3명
			eventsService.insertEvents(event);
			int eventResult = event.getEStatus();
			session.setAttribute("isEvent", eventResult);
			// 이벤트 유무에 따라 할인 여부 저장
			if(eventResult == 1) {
				estimate.setEEvent(1);
			} else {
				estimate.setEEvent(0);
			}
		}
		estimate.setQno(question.getQno());
		estimate.setUid(userId);
	
		int eresult = estimateService.insertEstimate(estimate);
		
		//request.getSession().removeAttribute("estimate");
		request.getSession().removeAttribute("priceMap");
		return "/question/questionFinish";
	}
	
	@RequestMapping("/questionFinish")
	public String questionFinish(Model model) {
		/*Question question = (Question) model.getAttribute("question");*/
		return "redirect:/mypage/mypage";
	}
	
	@RequestMapping("/goBackHome")
	public String goBackHome() {
		return "redirect:/home";
	}

	@RequestMapping("/prevPage")
	public String prevPage() {
		return "pickPY/content";
	}
}
