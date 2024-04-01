package com.tabling.user.member.dto;


import lombok.Data;

@Data
public class UserVO {
	private String userID;  // varchar(30) not null,
	private String userPwd;  // varchar(255) not null,
	private String userUUID;  // varchar(50),

}
