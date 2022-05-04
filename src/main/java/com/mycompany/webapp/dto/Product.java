package com.mycompany.webapp.dto;

import java.util.List;

import lombok.Data;

@Data
public class Product {
	private String pid;
	private String pname;
	private String pcategory;
	private String pdescription;
	private double pprice;
	private String pcolor;
	
	private List<Attach> pattaches;
}
