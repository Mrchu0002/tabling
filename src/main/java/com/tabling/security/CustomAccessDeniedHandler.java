package com.tabling.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;

//AccessDeniedHandler 직접 구현하여 다양한 처리 지원 가능
public class CustomAccessDeniedHandler implements AccessDeniedHandler {

  @Override
  public void handle(HttpServletRequest request, HttpServletResponse response, AccessDeniedException accessDeniedException)
      throws IOException, ServletException {
    
    //접근 거부 예외가 발생했을 때 모달창 리다이렉트
    response.sendRedirect("/permitAlert");
    
  }

}