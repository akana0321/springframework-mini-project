package com.mycompany.webapp.dto;

import java.util.List;

import lombok.Data;

@Data
public class Comment {
	private int cno;
	private String uid;
	private int qno;
	private String ccontent;
	private String cdate;
	
	private List<Attach> cattaches;
}
