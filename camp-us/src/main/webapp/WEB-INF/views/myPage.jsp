<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- jstl core 쓸때 태그에 c 로 표시. -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- jstl fmt 쓸때 위와 같음. fmt : formatter 형식 맞춰서 표시 -->
<%@ include file="includes/header.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Shoppers &mdash; Colorlib e-Commerce Template</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Mukta:300,400,700">
<link rel="stylesheet" href="fonts/icomoon/style.css">

<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/magnific-popup.css">
<link rel="stylesheet" href="/resources/css/jquery-ui.css">
<link rel="stylesheet" href="/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="/resources/css/owl.theme.default.min.css">


<link rel="stylesheet" href="/resources/css/aos.css">

<link rel="stylesheet" href="/resources/css/style.css">

</head>
<body>

	<div class="bg-light py-3">
		<div class="container">
			<div class="row">
				<div class="col-md-12 mb-0">
					<a href="index.html">My Page</a>
				</div>
			</div>
		</div>
	</div>

	<div class="site-section block-8">
		<div class="container">
			<div class="row justify-content-center  mb-5">
				<div class="col-md-7 site-section-heading text-center pt-4">
					<h2>My Page</h2>
				</div>
			</div>
		</div>
	</div>

	<!-- 프로필 부분 -->
	<!-- <div class="site-section block-3 site-blocks-2 bg-light">
		<div class="box" style="background: #BDBDBD;">
			<div>			
				<img class="profile" src="/resources/images/My Page.png">				
				</div>				
			</div>			
			<div class="font">닉네임</div>						
		</div> -->
	<!-- 프로필 부분 -->

<!-- 프로필 부분 --><!-- 프로필 이미지 크기 조절필요함. -->

	<table width="1300" height="100" align="center">
		<tr>
			<td rowspan="1" align="center">
				<div>
					<img class="profile" src="/resources/images/My Page.png">
				</div>
			</td>

			<td>
				<div class="wrap">
					<a href="#" class="button"> Edit Profile</a>
				</div>
			</td>

			<td rowspan="1" align="center">
				<div class="wrap">
					<a href="#" class="button">SHOPPING</a>
				</div>
			</td>
			<td rowspan="1" align="center">
				<div class="wrap">
					<a href="#" class="button">COMMUNITY</a>
				</div>
			</td>
		</tr>
		<tr>
			<td align="center"><font size="25">닉네임</font></td>
		</tr>

	</table>
	<!-- 프로필 부분 -->



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

<!-- 아래 아이콘 3개 나오지 않음 수정해야함. -->
<%@ include file="includes/footer.jsp"%>