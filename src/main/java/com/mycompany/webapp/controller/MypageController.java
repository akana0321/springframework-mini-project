package com.mycompany.webapp.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mycompany.webapp.dto.Attach;
import com.mycompany.webapp.dto.Dentist;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.Question;
import com.mycompany.webapp.dto.User;
import com.mycompany.webapp.service.AttachService;
import com.mycompany.webapp.service.DentistService;
import com.mycompany.webapp.service.QuestionService;
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
	
	@Resource
	private DentistService dentistService;
	
	@Resource
	private QuestionService questionService;
	
	// MyPage 로드시 실행
	@RequestMapping("/mypage")
	public String getMypage(Model model, HttpSession session,HttpServletRequest request) {
		
		String userId = (String) request.getSession().getAttribute("sessionUid");
		log.info(userId);
		User user = userService.getUserByUid(userId);
		Attach attach = user.getUattach();
		List<Dentist> dentist= dentistService.getDentistsByUid(userId);
		int dentistSize = dentist.size();

		List<Attach> attachList = new ArrayList();
		
		for(int i=0; i<dentistSize; i++) {
			int attachSize = dentist.get(i).getDattaches().size();
			for(int j=0; j<attachSize; j++) {
				attachList.add(dentist.get(i).getDattaches().get(j));
			}
		}
		session.setAttribute("attachList", attachList);
		session.setAttribute("attachSize", dentistSize);
		
		user.setUbirth(user.getUbirth());
		model.addAttribute("user",user);
		session.setAttribute("userSession", user);
		session.setAttribute("userimg", attach);

		session.setAttribute("dentistArray", dentist);
		session.setAttribute("dentistSize", dentistSize);
		
		List<Question> getAllQuestion = questionService.getQuestionsByPager(new Pager(5,10,questionService.getTotalQuestionNum(),1));
		log.info(getAllQuestion);
		List<Question> getUidQuestion = new ArrayList();
		
		for(int i=0; i<getAllQuestion.size();i++) {
			if(getAllQuestion.get(i).getUid().equals(userId)) {
				getUidQuestion.add(getAllQuestion.get(i));
				String date = getUidQuestion.get(0).getQdate().split(" ")[0];
				getUidQuestion.get(0).setQdate(date);
			}
		}
		
		
		session.setAttribute("getUidQuestion", getUidQuestion);
		return "mypage/mypage";
	}

	//프로필 사진 변경
	@PostMapping(value = "/fileuploadAjax",produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String changeProfile(Attach attach, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		Attach attachSession = new Attach();
		attachSession.setAttach(attach.getAttach());
		attachSession.setAoname("profileImg_"+session.getAttribute("sessionUid").toString() +".jpg");
		//String saveFilename = new Date().getTime() + "-" + attachSession.getAttach().getOriginalFilename(); 
		File file = new File("/mypage/" + attachSession.getAoname());
		attachSession.getAttach().transferTo(file);

		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result", "success");
		jsonObject.put("saveFilename", attachSession.getAoname());
		String json = jsonObject.toString();
		
		session.removeAttribute("userimg");
		
		return json;
	}
	
	public int count = 0;
	public int uploadFileCount = 0;

	//병원 정보 업로드된 파일 가져오기
	@PostMapping(value = "/fileuploadAjax2",produces = "application/json; charset=UTF-8")
	@ResponseBody
	public void uploadImg(Attach attach, HttpServletRequest request) throws Exception {
		log.info("실행");
		HttpSession session = request.getSession();
		
		count++;
		uploadFileCount++;
		log.info("파일 : "+attach.getAttach().getOriginalFilename());
		session.setAttribute("newAttach", attach.getAttach());
		@SuppressWarnings("unchecked")
		List<Attach> attachList = (List<Attach>) session.getAttribute("attachList");
		session.setAttribute("OriginName", attach.getAttach().getOriginalFilename());
	
			if (attachList.size() != 0){
				attach.setAcontentType(attach.getAttach().getContentType());
				attach.setAoname((String)session.getAttribute("OriginName"));
				attach.setAsname(new Date().getTime() + "-" + attach.getAttach().getOriginalFilename());
				attach.setAttable("DENTIST");
				//attach.setAno(lastAno+1);
				attach.setAtid(attachList.get(0).getAtid());
				attach.setAtindex(String.valueOf(attachList.size()+1));
				attachList.add(attach);
				
//				if(count > 1) {
//					attachList.remove(attachList.size()-1);
//					count = 1;
//				}
				session.setAttribute("attachList", attachList);
				
			}
			else {
				attach.setAcontentType(attach.getAttach().getContentType());
				attach.setAoname((String)session.getAttribute("OriginName"));
				attach.setAsname(new Date().getTime() + "-" + attach.getAttach().getOriginalFilename());
				attach.setAttable("DENTIST");
				//attach.setAno(lastAno+1);
				attach.setAtindex("1");
				//dnumber를 받아올 경우의 수 : 2가지(기존 정보에서, 새로 생성할 때)
				//attach.setAtid("1111");
				attachList.add(attach);
				
	//			if(count > 1) {
	//				attachList.remove(attachList.size()-1);
	//				count = 1;
	//			}
				session.setAttribute("attachList", attachList);
			}
		
	}
	
	//병원 정보 추가
		@SuppressWarnings("unchecked")
		@RequestMapping("/dentalInfoAdd")
		public String dentalInfoAdd(String dnumber,String dname,String dtel,String dzipcode, 
				String daddress1,String daddress2,int demployees, int dpy,HttpServletRequest request) {
			HttpSession session = request.getSession();
			String userId = (String) session.getAttribute("sessionUid");
			
			Dentist dentist = new Dentist();
			dentist.setUid(userId);
			dentist.setDaddress1(daddress1);
			dentist.setDaddress2(daddress2);
			dentist.setDemployees(demployees);
			dentist.setDname(dname);
			dentist.setDnumber(dnumber);
			dentist.setDtel(dtel);
			dentist.setDpy(dpy);
			dentist.setDzipcode(dzipcode);
			dentist.setDattaches((List<Attach>)session.getAttribute("attachList"));
			for(int i=0; i<dentist.getDattaches().size(); i++)
				dentist.getDattaches().get(i).setAtid(dnumber);
			log.info(dentist.getDattaches().size());
			dentistService.insertDentist(dentist);
			

			return "redirect:/mypage/mypage";
		}

	//내 정보 변경시 DB update
	@RequestMapping("/myInfo")
	public String myInfo(
			User user, String newPass, String reNewPass,Model model, HttpServletRequest request){
		log.info(user.getUbirth());
		
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

		userService.updateUser(userUpdate);
		//session.removeAttribute("attachList");
		return "redirect:/mypage/mypage";
	}
	

	//병원 정보 Update
	@RequestMapping("/dentalInfo")
	public String dentalInfo(
			String[] dnumber,String[] dname,String[] dtel,String[] dzipcode, 
			String[] daddress1,String[] daddress2,int[] demployees, int[] dpy,HttpServletRequest request) {
		HttpSession session = request.getSession();
		int dentalSize = (int) session.getAttribute("dentistSize");

		List<Dentist> dentist = (List<Dentist>) session.getAttribute("dentistArray");

		Dentist updateDentist = new Dentist();

		List<Attach> attach = (List<Attach>) session.getAttribute("attachList");
		for(int i=0; i<dentalSize;i++) {
			updateDentist.setUid(dentist.get(i).getUid());
			updateDentist.setDnumber(dnumber[i]);
			updateDentist.setDname(dname[i]);
			updateDentist.setDtel(dtel[i]);
			updateDentist.setDzipcode(dzipcode[i]);
			updateDentist.setDaddress1(daddress1[i]);
			updateDentist.setDaddress2(daddress2[i]);
			updateDentist.setDemployees(demployees[i]);
			updateDentist.setDpy(dpy[i]);
			dentistService.updateDentist(updateDentist);
		}
		int lastAno = attachService.getLastAno();
		for(int i=0; i<attach.size(); i++) {
			attach.get(i).setAtid(dnumber[0]);
		}
		log.info(lastAno);
		if(session.getAttribute("newAttach") != null) {
			if(attach.size() != 0) {
				attach.get(attach.size()-1).setAno(lastAno+1);
				attachService.insertAttach(attach.get(attach.size()-1));
			}
			else {attach.get(attach.size()).setAno(lastAno+1);
				attachService.insertAttach(attach.get(attach.size()));
			}
		}
			

		log.info(session.getAttribute("attachList"));
		session.removeAttribute("newAttach");
		
		
		return "redirect:/mypage/mypage";
	}
	
	
	
	//기존 병원 정보 삭제
	@PostMapping(value = "/removeinfoR",produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String removeInfoR(int sendData) {
		log.info(sendData);
	
		String deleteDnumber = String.valueOf(sendData);
		dentistService.deleteDentistByDnumber(deleteDnumber);
		
		
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result", "success");
		String json = jsonObject.toString();
		
		return json;
	}
	
	
	
	//병원 정보 업로드 이미지 삭제
	@RequestMapping("/removeFile")
	public String removeFile(String sendData) {
		String[] tmp = sendData.split(" ");
		String fileName = tmp[0];
		String dnumber = tmp[1];
		
		log.info(fileName);
		log.info(dnumber);
		
		Dentist dentist = dentistService.getDentistByDnumber(dnumber);
		List<Attach> attach = dentist.getDattaches();
		int getNo = 0;
		for(int i=0; i<attach.size(); i++) {
			if(attach.get(i).getAsname().equals(fileName)) {
				getNo = attach.get(i).getAno();
				break;
			}
		}
		
		attachService.deleteAttachOne(getNo);
		
		return "/mypage/mypage";
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
