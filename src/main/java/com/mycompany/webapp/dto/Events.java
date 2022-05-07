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
}
