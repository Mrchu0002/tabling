<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>
	<h1>로그인 페이지</h1>
	
	<!-- 오류 메세지 출력 -->
	<h2><c:out value="${error}"/></h2>
	
	<!-- 로그아웃 메세지 출력 -->
	<h2><c:out value="${logout}"/></h2>
	
	<form method="post" action="/login">
		<div>
			<!-- id 입력창 -->
			<input type="text" name='username' value='member' autofocus required />
		</div>
		<div>
			<!-- password 입력창 -->
			<input type="password" name='password' value='member' required />
		</div>
		<div>
			<!-- 제출 버튼 -->
			<input type="submit" />
		</div>
		
		<!-- CSRF 토큰 포함시켜 보안 강화 -->
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	</form>
</body>
</body>
</html>