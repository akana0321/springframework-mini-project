package com.mycompany.webapp.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.mycompany.webapp.dto.Attach;
import com.mycompany.webapp.dto.Comment;
import com.mycompany.webapp.dto.Dentist;
import com.mycompany.webapp.dto.Estimate;
import com.mycompany.webapp.dto.Pager;
import com.mycompany.webapp.dto.Question;
import com.mycompany.webapp.dto.User;
import com.mycompany.webapp.items.EstimateProcess;
import com.mycompany.webapp.service.AttachService;
import com.mycompany.webapp.service.CommentService;
import com.mycompany.webapp.service.DentistService;
import com.mycompany.webapp.service.EstimateService;
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
	
	@Resource
	private CommentService commentService;
	
	@Resource
	private EstimateService estimateService;
	EstimateProcess ep;
	
	// MyPage 로드시 실행
	@RequestMapping("/mypage")
	public String getMypage(Model model, HttpSession session,HttpServletRequest request) {
		
		//로그인한 사용자 아이디를 세션을 통해 가져옴
		String userId = (String) request.getSession().getAttribute("sessionUid");
		//사용자 아이디로 DB에서 해당 사용자 정보를 가져옴
		User user = userService.getUserByUid(userId);
		//사용자의 프로필 이미지를 가져와 저장
		Attach attach = user.getUattach();
		//사용자 아이디로 DB에서 병원 정보를 조회하여 저장
		List<Dentist> dentist= dentistService.getDentistsByUid(userId);
		int dentistSize = dentist.size();
		List<Attach> attachList = new ArrayList<Attach>();
		
		//병원 정보가 존재하면 작동, 그렇지 않으면 넘어감
		for(int i=0; i<dentistSize; i++) {
			int attachSize = dentist.get(i).getDattaches().size();
			for(int j=0; j<attachSize; j++) {
				attachList.add(dentist.get(i).getDattaches().get(j));
			}
		}
		
		//병원 정보에서 첨부된 파일들을 세션으로 보냄
		session.setAttribute("attachList", attachList);
		session.setAttribute("attachSize", dentistSize);
		
		//화면 출력을 위해 사용자 정보를 model 및 session으로 보냄
		user.setUbirth(user.getUbirth());
		model.addAttribute("user",user);
		session.setAttribute("userSession", user);
		session.setAttribute("userimg", attach);

		//화면 출력을 위해 병원 정보를 model 및 session으로 보냄
		session.setAttribute("dentistArray", dentist);
		session.setAttribute("dentistSize", dentistSize);
		
		//문의 내역을 Service를 통해 DB에서 가져옴
		List<Question> getAllQuestion = questionService.getQuestionsByPager(new Pager(5,10,questionService.getTotalQuestionNum(),1,userId));
		//인테리어 문의
		List<Question> getUidQuestionIn = new ArrayList<Question>();
		//상품 문의
		List<Question> getUidQuestionPro = new ArrayList<Question>();
		
		//인테리어 문의와 상품 문의를 분리하여 저장
		for(int i=0; i<getAllQuestion.size();i++) {
			if(getAllQuestion.get(i).getUid().equals(userId) && getAllQuestion.get(i).getQcategory().equals("INTERIOR")) {
				getUidQuestionIn.add(getAllQuestion.get(i));
				String date = getUidQuestionIn.get(0).getQdate().split(" ")[0];
				getUidQuestionIn.get(0).setQdate(date);
				// 내용의 길이가 10이상이라면 뒤는 생략
				if(getAllQuestion.get(i).getQcontent().length() > 10) {
					getUidQuestionIn.get(0).setQcontent(getAllQuestion.get(i).getQcontent().substring(0, 10) + "...");
				}
			}
			if(getAllQuestion.get(i).getUid().equals(userId) && getAllQuestion.get(i).getQcategory().equals("PRODUCT")) {
				getUidQuestionPro.add(getAllQuestion.get(i));
			}
		}
		//상품 문의에 날짜 저장 및 10이상의 길이 생략
		for(int i=0; i<getUidQuestionPro.size(); i++) {
			String date = getUidQuestionPro.get(i).getQdate().split(" ")[0];
			getUidQuestionPro.get(i).setQdate(date);
			if(getUidQuestionPro.get(i).getQcontent().length() > 10) {
				getUidQuestionPro.get(i).setQcontent(getUidQuestionPro.get(i).getQcontent().substring(0, 10) + "...");
			}
		}

		//인테리어 문의 내역 세션 설정
		session.setAttribute("getUidQuestionIn", getUidQuestionIn);
		//상품 문의 내역 세션 설정
		session.setAttribute("getUidQuestionPro", getUidQuestionPro);
		
		return "mypage/mypage";
	}

	//프로필 사진 변경
	@PostMapping("/fileuploadAjax")
	public String changeProfile(Attach attach, HttpServletRequest request,Model model) throws Exception {
		HttpSession session = request.getSession();
		Attach attachSession = new Attach();
		
		if(((Attach)session.getAttribute("userimg")) == null) { // 기존 프로필 이미지가 없는 경우
			//변경 시 업로드된 파일을 가져와 저장
			attachSession.setAttach(attach.getAttach());
			attachSession.setAoname("profileImg_"+session.getAttribute("sessionUid").toString() +".jpg");
			attachSession.setAttable("USERS");
			attachSession.setAtid(session.getAttribute("sessionUid").toString());
			attachSession.setAtindex("1");
			attachSession.setAsname(attach.getAttach().getOriginalFilename());
			attachSession.setAcontentType(attach.getAttach().getContentType());
			attachSession.setAno(attachService.getLastAno()+1);
			
			File file = new File("/mypage/" + attachSession.getAoname());
			attachSession.getAttach().transferTo(file);

			attachService.insertAttach(attachSession);
			
		}
		else {//변경 시 업로드된 파일을 가져와 update
			File file = new File("/mypage/" + ((Attach)session.getAttribute("userimg")).getAoname());
			attach.getAttach().transferTo(file);
			
			attachService.updateAttach((Attach)session.getAttribute("userimg"));
		}

		return "redirect:/mypage/mypage";
	}
	
	//내 정보 변경시 DB update
	@RequestMapping("/myInfo")
	public String myInfo(
			User user, String newPass, String reNewPass,Model model, HttpServletRequest request){

		HttpSession session = request.getSession();
		User userUpdate = (User) session.getAttribute("userSession");
		
		//입력된 내 정보들을 가져와 update
		userUpdate.setUbirth(user.getUbirth());
		userUpdate.setUtel(user.getUtel());
		userUpdate.setUemail(user.getUemail());
		userUpdate.setUzipcode(user.getUzipcode());
		userUpdate.setUaddress1(user.getUaddress1());
		userUpdate.setUaddress2(user.getUaddress2());

		//변경할 비밀번호가 틀릴 경우 재입력 요청
		if(!newPass.equals("") && !reNewPass.equals("")) {
			if(!newPass.equals(reNewPass)) {
				model.addAttribute("user",user);
				model.addAttribute("error","비밀번호가 틀립니다.");
				return "mypage/mypage";
			}
			else {
				PasswordEncoder passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
				userUpdate.setUpassword(passwordEncoder.encode(newPass));
			}
		}
		
		//DB에 내 정보 update
		userService.updateUser(userUpdate);
		
		return "redirect:/mypage/mypage";
	}
	

	//병원 정보 업로드된 파일 가져오기
	@PostMapping(value = "/fileuploadAjax2",produces = "application/json; charset=UTF-8")
	@ResponseBody
	public void uploadImg(Attach attach, HttpServletRequest request) throws Exception {

		HttpSession session = request.getSession();
		//새롭게 업로드된 파일을 가져와 세션에 저장
		session.setAttribute("newAttach", attach.getAttach());
		
		//기존 업로드 파일을 새로운 Attach 리스트에 저장
		@SuppressWarnings("unchecked")
		List<Attach> attachList = (List<Attach>) session.getAttribute("attachList");
		session.setAttribute("OriginName", attach.getAttach().getOriginalFilename());
			
		if (attachList.size() != 0){ // 기존 파일이 하나 이상 있는 경우
			attach.setAcontentType(attach.getAttach().getContentType());
			attach.setAoname((String)session.getAttribute("OriginName"));
			attach.setAsname(new Date().getTime() + "-" + attach.getAttach().getOriginalFilename());
			attach.setAttable("DENTIST");
			attach.setAtid(attachList.get(0).getAtid());
			attach.setAtindex(String.valueOf(attachList.size()+1));
			attachList.add(attach);

			session.setAttribute("attachList", attachList);
			
		}
		else { //기존 파일이 하나도 없는 경우
			attach.setAcontentType(attach.getAttach().getContentType());
			attach.setAoname((String)session.getAttribute("OriginName"));
			attach.setAsname(new Date().getTime() + "-" + attach.getAttach().getOriginalFilename());
			attach.setAttable("DENTIST");
			attach.setAtindex("1");
			attachList.add(attach);
			
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
		
		//입력된 정보들을 가져와 Dentist에 각각 저장
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
		
		//업로드된 파일들에 모두 dnumber를 설정
		for(int i=0; i<dentist.getDattaches().size(); i++) {
			dentist.getDattaches().get(i).setAtid(dnumber);
		}
		
		//DB에 병원 정보 추가
		dentistService.insertDentist(dentist);
		
		return "redirect:/mypage/mypage";
	}

	
	

	//병원 정보 Update
	@RequestMapping("/dentalInfo")
	public String dentalInfo(
			String[] dnumber,String[] dname,String[] dtel,String[] dzipcode, 
			String[] daddress1,String[] daddress2,int[] demployees, int[] dpy,HttpServletRequest request) {
		HttpSession session = request.getSession();
		int dentalSize = (int) session.getAttribute("dentistSize");

		@SuppressWarnings("unchecked")
		List<Dentist> dentist = (List<Dentist>) session.getAttribute("dentistArray");
		
		Dentist updateDentist = new Dentist();

		//업로드된 파일 리스트
		@SuppressWarnings("unchecked")
		List<Attach> attach = (List<Attach>) session.getAttribute("attachList");
		
		//입력된 모든 정보를 update
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
		
		//업로드된 모든 파일들에 dnumber 설정
		for(int i=0; i<attach.size(); i++) {
			attach.get(i).setAtid(dnumber[0]);
		}
		
		//DB에 저장된 파일들의 마지막 seqNo를 가져옴
		int lastAno = attachService.getLastAno();
		
		//새롭게 업로드된 파일이 하나라도 있는 경우 실행
		if(session.getAttribute("newAttach") != null) {
			if(attach.size() != 0) {
				attach.get(attach.size()-1).setAno(lastAno+1);
				attachService.insertAttach(attach.get(attach.size()-1));
			}
			else {attach.get(attach.size()).setAno(lastAno+1);
				attachService.insertAttach(attach.get(attach.size()));
			}
		}
		
		session.removeAttribute("newAttach");
		
		return "redirect:/mypage/mypage";
	}
	
	//기존 병원 정보 삭제
	@PostMapping(value = "/removeinfoR",produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String removeInfoR(int sendData) {
		
		//해당 병원의 Dnumber를 가져와 DB에서 삭제한다.
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
		//업로드된 이미지만을 지우고 싶을 때 실행
		
		//해당 병원의 Dnumber와 파일의 저장 이름을 가져옴
		String[] tmp = sendData.split(" ");
		String fileName = tmp[0];
		String dnumber = tmp[1];
		
		//Dnumber와 일치하는 병원 정보를 가져와, 그 안에 저장된 파일 리스트를 가져옴
		Dentist dentist = dentistService.getDentistByDnumber(dnumber);
		List<Attach> attach = dentist.getDattaches();
		
		//삭제할 파일 이름과 저장된 이름이 동일하다면 해당 파일의 번호를 가져옴
		int getNo = 0;
	
		for(int i=0; i<attach.size(); i++) {
			if(attach.get(i).getAsname().equals(fileName)) {
				getNo = attach.get(i).getAno();
				break;
			}
		}
		
		//가져온 파일 번호로 파일을 DB에서 삭제
		attachService.deleteAttachOne(getNo);
		
		return "/mypage/mypage";
	}

	//인테리어 문의
	@RequestMapping("/interialQ")
	public String getInterialQ(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		
		//모든 인테리어 문의 리스트를 가져옴
		@SuppressWarnings("unchecked")
		List<Question> question = (List<Question>) session.getAttribute("getUidQuestionIn");
		int qno = question.get(0).getQno();
		
		//해당 문의 번호의 문의 및 답변 내역을 모두 가져옴
		List<Comment> commentList =  commentService.getCommentsByQno(qno);
		
		// 예상 견적서 내역 정보를 불러옴
		Estimate estimate = estimateService.getEstimateByQno(qno);
		ep = new EstimateProcess(estimate);
		estimate = ep.init();
		HashMap<String, Integer> priceMap = ep.getpPiceMap();
		model.addAttribute("estimate", estimate);
		model.addAttribute("priceMap", priceMap);
		
		for(int i=0; i<commentList.size()-1; i++) {
			for(int j=i; j<commentList.size(); j++) {
				if(commentList.get(i).getCno() > commentList.get(j).getCno()) {
					Comment tmp =  commentList.get(i);
					commentList.set(i, commentList.get(j));
					commentList.set(j,tmp);
				}
			}
		}
		//화면 출력을 위해 문의 번호와 모든 문의 및 답변 내역을 세션 설정
		session.setAttribute("QuestionNo", qno);
		session.setAttribute("CommentList", commentList);
		
		return "mypage/interialQ";
	}
	
	//인테리어 문의 Comment
	@PostMapping("/questionQ")
	public String InterialQuestion(String ccontent,MultipartFile cattach,HttpServletRequest request) {
		
		// 새로 입력한 문의 내용을 가져와 공백이 아닐 경우에만 DB에 저장하도록 함
		if(!ccontent.equals("") && !ccontent.split("").equals("")) {
			HttpSession session = request.getSession();
			Comment comment = new Comment();
			String uid = (String) session.getAttribute("sessionUid");
			int qno = (int) session.getAttribute("QuestionNo");
			
			comment.setCno(commentService.getTotalCommentsNumInQuestion(qno)+1);
			comment.setQno(qno);
			comment.setUid(uid);
			comment.setCcontent(ccontent);

			commentService.insertComment(comment);
		}
		
		return "redirect:/mypage/interialQ";
	}
	
	//상품 문의(인테리어 문의와 동일)
	@RequestMapping("/interialP")
	public String getInterialP(HttpServletRequest request) {
		HttpSession session = request.getSession();
		@SuppressWarnings("unchecked")
		List<Question> question = (List<Question>) session.getAttribute("getUidQuestionPro");
		int qno = question.get(0).getQno();
		
		log.info(question);
		
		List<Comment> commentList =  commentService.getCommentsByQno(qno);
		
		for(int i=0; i<commentList.size()-1; i++) {
			for(int j=i; j<commentList.size(); j++) {
				if(commentList.get(i).getCno() > commentList.get(j).getCno()) {
					Comment tmp =  commentList.get(i);
					commentList.set(i, commentList.get(j));
					commentList.set(j,tmp);
				}
			}
		}
		session.setAttribute("QuestionNo", qno);
		session.setAttribute("CommentList", commentList);
		
		return "mypage/interialP";
	}
	
	
	@PostMapping("/questionP")
	public String InterialQuestionP(String ccontent,MultipartFile cattach,HttpServletRequest request) {
		
		if(!ccontent.equals("") && !ccontent.split("").equals("")) {
			HttpSession session = request.getSession();
			Comment comment = new Comment();
			String uid = (String) session.getAttribute("sessionUid");
			int qno = (int) session.getAttribute("QuestionNo");
			
			log.info(commentService.getTotalCommentsNumInQuestion(qno));
			
			comment.setCno(commentService.getTotalCommentsNumInQuestion(qno)+1);
			comment.setQno(qno);
			comment.setUid(uid);
			comment.setCcontent(ccontent);

			commentService.insertComment(comment);
		}
		
		return "redirect:/mypage/interialP";
	}
	
	//상품 이미지 가져오기
	@PostMapping("/productQ")
	public String productQ(int productQ,HttpSession session) {
		
		String productId = questionService.getQuestionByQno(productQ).getPid();
		
		Attach attach = new Attach();
		attach.setAttable("PRODUCT");
		attach.setAtid(productId);
		attach.setAtindex("1");
		log.info(attach);
		
		String fileName = attachService.getAttachOne(attach).getAoname();
		log.info(fileName);
		session.setAttribute("fileName",fileName);
		
		
		return "/mypage/interialP";
	}
	
	@RequestMapping("/removeQuestion")
	public String removeQuestion(int cno) {
		commentService.deleteCommentByCno(cno);
		return "redirect:/mypage/interialQ";
	}
	
	@RequestMapping("/removeQuestionP")
	public String removeQuestionP(int cno) {
		commentService.deleteCommentByCno(cno);
		return "redirect:/mypage/interialP";
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
