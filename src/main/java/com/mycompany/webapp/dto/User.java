package com.mycompany.webapp.dto;

import lombok.Data;

@Data
public class User {
	private String uid;
	private String urole;
	private boolean uenabled;
	private String upassword;
	private String uname;
	private String uemail;
	private String utel;
	private String usignUpdate;
	private String ubirth;
	private String uzipcode;	// 우편번호
	private String uaddress1;	// 주소
	private String uaddress2;	// 상세주소
	
	private Attach uattach;
}
