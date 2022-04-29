package com.mycompany.webapp.dto;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class Question {
	private int qno;
	private String uid;
	private String qcategory;
	private String qcontent;
	private Date qdate;
	private String pid;
	
	private List<Attach> qattaches;
}
