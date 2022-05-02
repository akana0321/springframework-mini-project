package com.mycompany.webapp.dto;

import java.util.List;

import lombok.Data;

@Data
public class Hospital {
	private String hnumber;
	private String uid;
	private String hname;
	private String htel;
	private String hzipcode;
	private String haddress1;
	private String haddress2;
	private int hemployees;
	private int hpy;
	
	private List<Attach> hattaches;
}
