package com.mycompany.webapp.dto;

import lombok.Data;

@Data
public class Estimate {
	private int eno;
	private String uid;
	private int qno;
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
	private String edate;
	
	// 결과 저장용
	private double buildingWeight;
	private double dentalWeight;
	private int wallUnitPrice;
	private int wallTotalPrice;
	private int floorUnitPrice;
	private int floorTotalPrice;
	private int k3000bUnitPrice;
	private int k3000bTotalPrice;
	private int k5000bUnitPrice;
	private int k5000bTotalPrice;
	private int s2100zUnitPrice;
	private int s2100zTotalPrice;
	private int furniture1UnitPrice;
	private int furniture1TotalPrice;
	private int furniture2UnitPrice;
	private int furniture2TotalPrice;
	private int furniture3UnitPrice;
	private int furniture3TotalPrice;
	private int totalPrice;
}
