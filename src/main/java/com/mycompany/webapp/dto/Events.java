package com.mycompany.webapp.dto;

import lombok.Data;

@Data
public class Events {
	private int eno;
	private String uid;
	private String eid;
	private int eUserIndex;
	private String eRewardKind;
	private int eRewardValue;
	private String eGetDate;
	
	private int eMaxOccupancy;	// 최대 당첨 인원수
	private int eStatus;			// 이벤트 결과
}
