package com.mycompany.webapp.dto;

import java.util.List;

import lombok.Data;

@Data
public class Product {
	private String pid;
	private String pname;
	private String pcategory;
	private String pcolor;	// 리스트일까 그냥 String일까
	private String pdescription;
	private int pprice;
	
	private List<Attach> pattaches;
}
