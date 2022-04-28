package com.mycompany.webapp.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Attach {
	private MultipartFile attach;
	private int ano;
	private String attable;
	private String atid;
	private String atindex;
	private String acontentType;
	private String asname;
	private String aoname;
}