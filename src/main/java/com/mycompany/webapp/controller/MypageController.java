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
import com.mycompany.webapp.dto.User;
import com.mycompany.webapp.service.AttachService;
import com.mycompany.webapp.service.DentistService;
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
	
	// MyPage 로드시 실행
	@RequestMapping("/mypage")
	public String getMypage(Model model, HttpSession session) {
		User user = userService.getUserByUid("userid02");
		Attach attach = user.getUattach();
		List<Dentist> dentist= dentistService.getDentistsByUid("userid04");
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
		
		user.setUbirth(user.getUbirth().split(" ")[0]);
		model.addAttribute("user",user);
		session.setAttribute("userSession", user);
		session.setAttribute("userimg", attach);

		session.setAttribute("dentistArray", dentist);
		session.setAttribute("dentistSize", dentistSize);
		
		return "mypage/mypage";
	}

	//프로필 사진 변경
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
		
		session.removeAttribute("userimg");
		
		return json;
	}
	
	public int count = 0;
	
	//병원 정보 업로드된 파일 가져오기
	@PostMapping(value = "/fileuploadAjax2",produces = "application/json; charset=UTF-8")
	@ResponseBody
	public void uploadImg(Attach attach, HttpServletRequest request) throws Exception {
		log.info("싫핼");
		HttpSession session = request.getSession();
		int lastAno = attachService.getLastAno();
		count++;
		log.info(attach);
		List<Attach> attachList = (List<Attach>) session.getAttribute("attachList");
		attach.setAcontentType(attach.getAttach().getContentType());
		attach.setAoname(attach.getAttach().getOriginalFilename());
		attach.setAsname(new Date().getTime() + "-" + attach.getAttach().getOriginalFilename());
		attach.setAttable("DENTIST");
		attach.setAno(lastAno+1);
		attach.setAtid(attachList.get(0).getAtid());
		attach.setAtindex(String.valueOf(attachList.size()+1));
		attachList.add(attach);
		log.info(lastAno);
		
		if(count > 1) {
			attachList.remove(attachList.size()-1);
			count = 1;
		}
		session.setAttribute("attachList", attachList);
		log.info(attachList);
//		return json;
	}

	//내 정보 변경시 DB update
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
	

	//병원 정보 Update
	@RequestMapping("/dentalInfo")
	public String dentalInfo(
			String[] dnumber,String[] dname,String[] dtel,String[] dzipcode, 
			String[] daddress1,String[] daddress2,int[] demployees, int[] dpy,HttpServletRequest request) {
		HttpSession session = request.getSession();
		int dentalSize = (int) session.getAttribute("dentistSize");
		log.info(dentalSize);
		List<Dentist> dentist = (List<Dentist>) session.getAttribute("dentistArray");
		log.info(dentist.get(0).getUid());
		Dentist updateDentist = new Dentist();

		List<Attach> attach = (List<Attach>) session.getAttribute("attachList");
		log.info(attach);
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
			//updateDentist.setDattaches((List<Attach>)dentist.get(i).getDattaches());
			//log.info(updateDentist.getDattaches());

			//updateDentist.setDattaches(attach);
			dentistService.updateDentist(updateDentist);
		}
		attachService.insertAttach(attach.get(attach.size()-1));
		return "redirect:/mypage/mypage";
	}
	
	
	
	
	
	//병원 정보 업로드 이미지 삭제
	@RequestMapping("/dentalRemove")
	public String dentalRemove(HttpServletRequest request, int dentist, int file) {
		
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
