package com.tabling.user.member.dto;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@RequiredArgsConstructor
public class MemberDTO {
	private UserVO member;
	private UserInfoVO memberInfo;

	public Boolean isAdmin() {
		return memberInfo.getIsAdminbool();
	}
}
