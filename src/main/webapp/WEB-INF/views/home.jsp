<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<html>
<head>
<title>Home</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/HomeStyle.css">
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <title>Bootstrap Example</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<nav class="navbar navbar-dark bg-dark fixed-top">
      <div class="container-fluid">
        <a class="navbar-brand" href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">맛집 예약 추천 사이트</font></font></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="탐색 전환">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
          <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">사용자 메뉴 바</font></font></h5>
            <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="닫다"></button>
          </div>
          <div class="offcanvas-body">
            <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                
                <!-- <input type="button" value="로그인" onclick="LoginPage()"> -->
                <input class="btn btn-primary" type="button" value="로그인" onclick="LoginPage()">
                
                 </font></font></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                
                <input class="btn btn-primary" type="button" value="회원가입" onclick="registerPage()">
                
                </font></font></a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                 
                 <input class="btn btn-primary" type="button" value="상세페이지" onclick="memberInfo()">
                 
                </font></font></a>
                
                <ul class="dropdown-menu dropdown-menu-dark">
                  <li><a class="dropdown-item" href="#">내정보</a></li>
                  <li><a class="dropdown-item" href="#">예약현황</a></li>
                  <li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>

	<div id="wrap">
		<h1>맛집 추천 예약</h1>
		<div class="container">
			<div id="carouselExampleRide" class="carousel slide"
				data-bs-ride="true">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<svg
							class="bd-placeholder-img bd-placeholder-img-lg d-block w-100"
							width="800" height="400" xmlns="http://www.w3.org/2000/svg"
							role="img" aria-label="자리 표시자: 첫 번째 슬라이드"
							preserveAspectRatio="xMidYMid slice" focusable="false">
							<title>Placeholder</title><rect width="100%" height="100%"
								fill="#777"></rect>
							<text x="50%" y="80%" fill="#555" dy=".3em">First slide</text></svg>
					</div>
					<div class="carousel-item">
						<svg
							class="bd-placeholder-img bd-placeholder-img-lg d-block w-100"
							width="800" height="400" xmlns="http://www.w3.org/2000/svg"
							role="img" aria-label="자리 표시자: 두 번째 슬라이드"
							preserveAspectRatio="xMidYMid slice" focusable="false">
							<title>Placeholder</title><rect width="100%" height="100%"
								fill="#666"></rect>
							<text x="50%" y="80%" fill="#444" dy=".3em">Second slide</text></svg>
					</div>
					<div class="carousel-item">
						<svg
							class="bd-placeholder-img bd-placeholder-img-lg d-block w-100"
							width="800" height="400" xmlns="http://www.w3.org/2000/svg"
							role="img" aria-label="자리 표시자: 세 번째 슬라이드"
							preserveAspectRatio="xMidYMid slice" focusable="false">
							<title>Placeholder</title><rect width="100%" height="100%"
								fill="#555"></rect>
							<text x="50%" y="80%" fill="#333" dy=".3em">Third slide</text></svg>
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleRide" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden"><font
						style="vertical-align: inherit;"><font
							style="vertical-align: inherit;">이전의</font></font></span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleRide" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden"><font
						style="vertical-align: inherit;"><font
							style="vertical-align: inherit;">다음</font></font></span>
				</button>
			</div>
		</div>
	</div>
	
	<!-- 카드부분 -->
	<!-- <div id="cardcont">
		<div class="card" style="width: 18rem;">
			<img src="..." class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">가게명</h5>
				<p class="card-text">별점</p>
				<a href="#" class="btn btn-primary">예약하기</a>
			</div>
		</div>
	</div> -->


</body>
<script>
	function LoginPage() {
		// login.jsp 페이지로 이동
		window.location.href = "/login";
	}
	function registerPage() {
		// login.jsp 페이지로 이동
		window.location.href = "/register";
	}
</script>
</html>
