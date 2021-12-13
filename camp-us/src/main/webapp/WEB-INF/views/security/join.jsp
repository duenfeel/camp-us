<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- jstl core 쓸때 태그에 c 로 표시. -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- jstl fmt 쓸때 위와 같음. fmt : formatter 형식 맞춰서 표시 -->

<!-- my page 전체 수정 예정 기존 home.jsp 에 드롭박스로 추가 예정-->


<!DOCTYPE html>
<html lang="en">
<head>
<title>Shoppers &mdash; Colorlib e-Commerce Template</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Mukta:300,400,700">
<link rel="stylesheet" href="/resources/fonts/icomoon/style.css">

<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/magnific-popup.css">
<link rel="stylesheet" href="/resources/css/jquery-ui.css">
<link rel="stylesheet" href="/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="/resources/css/owl.theme.default.min.css">


<link rel="stylesheet" href="/resources/css/aos.css">

<link rel="stylesheet" href="/resources/css/style.css">

</head>
<body>

	<div class="site-section block-8" >
		<div class="container">
			<div class="row justify-content-center  mb-5">
				<div class="col-md-7 site-section-heading text-center pt-4">
					<h2>회원가입</h2>
					<br> <br> <input type="text" class="form-control py-4"
						id="member_ID_subscribe" placeholder="아이디">
						<input type="password" class="form-control py-4"
						id="member_PW_subscribe" placeholder="비밀번호">
						<input type="password" class="form-control py-4"
						id="member_REPW_subscribe" placeholder="비밀번호확인">
						<input type="text" class="form-control py-4"
						id="member_Email_subscribe" placeholder="이메일">
						<input type="text" class="form-control py-4"
						id="member_NicName_subscribe" placeholder="닉네임">
						<input type="text" class="form-control py-4"
						id="member_address_subscribe" placeholder="주소지">
						
					<p>
					<p>
					<p>
					<p>
					<br>
						<input type="submit" class="btn btn-sm btn-primary form-control"
							value="회원가입">
					<br>
					<input type="submit" class="btn btn-sm btn-primary form-control"
							value="홈으로 이동">
							
							<div class="py-4">
						<span
							style="font: italic bold 0.7em/1em Verdana, Geneva, Arial, sans-serif;">SNS계정으로
							간편로그인</span>
					</div>

					<table width="300" align="center">
						<tr>
							<td>
								<div class="box" style="background: #BDBDBD;">
									<img class="profile" src="/resources/images/facebook.png">
							</td>
							<td>
								<div class="box" style="background: #BDBDBD;">
									<img class="profile" src="/resources/images/naver.png">
							</td>
							<td>
								<div class="box" style="background: #BDBDBD;">
									<img class="profile" src="/resources/images/kakao.png">
							</td>
							</div>
						<tr>
					</table>

				</div>
			</div>
		</div>
	</div>
	
	<!-- style.css 에 스타일 추가했음
	  /* 이미지 둥글게 */
  .box {
    width: 60px;
    height: 60px; 
    border-radius: 70%;
    overflow: hidden;
}
.profile {
    width: 100%;
    height: 100%;
    object-fit: cover;
}
  /* 이미지 둥글게 */
  
  
   -->





	<script src="/resources/js/jquery-3.3.1.min.js"></script>
	<script src="/resources/js/jquery-ui.js"></script>
	<script src="/resources/js/popper.min.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/owl.carousel.min.js"></script>
	<script src="/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="/resources/js/aos.js"></script>
	<script src="/resources/js/main.js"></script>


</body>
</html>

