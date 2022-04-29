package com.mycompany.webapp.dto;

import java.util.Date;

import lombok.Data;

@Data
public class Estimate {
	private int eno;
	private String uid;
	private int epy;
	private String ebuildingType;
	private String edentalType;
	private String efloorType;
	private String ewallType;
	private int ek3000b;
	private int ek5000b;
	private int es2100z;
	private int efurniture1;
	private int efurniture2;
	private int efurniture3;
	private Date edate;
}
