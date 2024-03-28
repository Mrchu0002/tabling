package com.tabling.user.admin.dto;


import lombok.Data;

@Data
public class AdminVO {
	private String userID;  // varchar(30) not null,
	private String userPwd;  // varchar(255) not null,
	private String userUUID;  // varchar(50),
	private String role = "admin";  // varchar(30) not null, #역할
	private String auth = "ALL";  // varchar(30), #권한
	private final boolean isAdmin = true;  // varchar(1) default 'Y', #관리자 여부확인 권한/역할보다 먼저 수행
}
