package com.tabling.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication auth)

			// 입출력 작업 예외 , 서블릿에서 발생하는 예외
			throws IOException, ServletException {

		// roleNames 객체 생성
		List<String> roleNames = new ArrayList<>();

		//auth에서 권한 정보를 가져와서 각 권한을 roleNames 리스트에 추가
		auth.getAuthorities().forEach(authority -> {
			roleNames.add(authority.getAuthority());
		});

		//관리자 계정 관리자 전용 페이지 이동
		if (roleNames.contains("ROLE_admin")) {
			response.sendRedirect("/admin/testa");
			return;
		}

		//회원 계정 회원 전용 페이지 이동
		if (roleNames.contains("ROLE_member")) {
			response.sendRedirect("/member/test");
			return;
		}

		
		response.sendRedirect("/login");
	}

}
