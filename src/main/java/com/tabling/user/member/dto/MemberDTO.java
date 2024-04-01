package com.tabling.user.member.dto;

import lombok.*;

@Getter
@Setter
@ToString
@AllArgsConstructor
public class MemberDTO {
	private UserVO member;
	private UserInfoVO memberInfo;

	public Boolean isAdmin() {
		return memberInfo.getIsAdminbool();
	}
}
