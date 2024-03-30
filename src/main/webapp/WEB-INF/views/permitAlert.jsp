<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>권한 필요</title>
</head>
<body>


<script>
document.addEventListener('DOMContentLoaded', (event) => {
    // "관리자 권한이 필요합니다'라는 모달 창 표시
    alert("관리자 권한이 필요합니다.");
        // 사용자가 '확인'을 누른 후, 로그인 페이지로 리다이렉션
        window.location.href = "/login";
});
</script>
</body>
</html>