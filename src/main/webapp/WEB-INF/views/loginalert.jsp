<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>로그인 필요</title>
</head>
<body>

<script>
document.addEventListener('DOMContentLoaded', (event) => {
    // '로그인이 필요합니다'라는 모달 창 표시
    alert("로그인이 필요합니다. 로그인 페이지로 이동하시겠습니까?");
        // 사용자가 '확인'을 누른 후, 로그인 페이지로 리다이렉션
        window.location.href = "/login";
});
</script>
</body>
</html>