package com.mycompany.webapp.dto;

import lombok.Data;

@Data
public class Hospital {
	private int hnumber;
	private String uid;
	private String hname;
	private String htel;
	private String hzipcode;
	private String haddress1;
	private String haddress2;
	private Attach hattach;
	private int hemployee;
	private int hpy;
}
