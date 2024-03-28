package com.tabling.user.member.dto;


import lombok.Data;

import java.util.ArrayList;
import java.util.Collections;

@Data
public class UserInfoVO {

	/* Matching with DB columns */
	private String infoUUID;  // varchar(50), #역할-유저 매칭
	private String role;  // varchar(30) not null, #역할
	private String auth;  // varchar(30), #권한
	private String isAdmin;  // varchar(1) default 'N', #관리자 여부확인 권한/역할보다 먼저 수행
	private String interests;  // varchar(255), #관심사 설정 #문자열슬라이싱 필요


	/* Not Matching DB Column  */
	private Boolean isAdminbool; //
	private ArrayList<String> interestList = new ArrayList<>();  //



	public void setIsAdminbool() {
		if (this.isAdmin.equals("Y")) {
			this.isAdminbool = true;
		}else if (this.isAdmin.equals("N")) {
			this.isAdminbool = false;
		}
		System.out.println("isAdminbool : " + this.isAdminbool);
	}

	public void setInterestList() {
		String[] tempList = getInterests().split(",");
		if( tempList.length < 20 ) {
			Collections.addAll(this.interestList, tempList);
		}
	}
}
