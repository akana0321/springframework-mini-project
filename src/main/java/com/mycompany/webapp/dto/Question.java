package com.mycompany.webapp.dto;

import java.util.Date;
import java.util.List;

import lombok.Data;
/*
 * question_no, user_id, question_category,
 *  question_content, question_date, attach_id, product_id
 */
@Data
public class Question {
	private int qno;
	private String uid;
	private String qcategory;
	private String qcontent;
	private Date qdate;
	private List<Attach> qattach;
	private String pid;
}
