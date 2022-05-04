package com.mycompany.webapp.dto;

import java.util.List;

import lombok.Data;

@Data
public class Dentist {
	private String dnumber;
	private String uid;
	private String dname;
	private String dtel;
	private String dzipcode;
	private String daddress1;
	private String daddress2;
	private int demployees;
	private int dpy;
	
	private List<Attach> dattaches;
}
