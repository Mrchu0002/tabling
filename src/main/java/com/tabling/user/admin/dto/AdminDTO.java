package com.tabling.user.admin.dto;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.ToString;


@Getter
@RequiredArgsConstructor
@ToString
public class AdminDTO{
	private String userID;  // varchar(30) not null, //TODO DB admin 계정 설정 해야함
	private String userPwd;  // varchar(255) not null, //TODO DB admin 비밀번호 설정해야함
	private String userUUID;  // varchar(50),  //TODO DB admin UUID 생성해서 추가해줘야함
	private final String role = "admin";  // varchar(30) not null, #역할
	private final String auth = "ALL";  // varchar(30), #권한
	private final boolean isAdmin = true;  // varchar(1) default 'N', #관리자 여부확인 권한/역할보다 먼저 수행
}
