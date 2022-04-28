package com.mycompany.webapp.dto;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class Comment {
	private int cno;
	private String uid;
	private int qno;
	private String ccontent;
	private Date cdate;
	private List<Attach> cattaches;
}
