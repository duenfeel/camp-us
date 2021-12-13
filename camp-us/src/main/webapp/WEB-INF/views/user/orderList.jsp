<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- jstl core 쓸때 태그에 c 로 표시. -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- jstl fmt 쓸때 위와 같음. fmt : formatter 형식 맞춰서 표시 -->
<%@ include file="../includes/header.jsp"%>

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

	<div class="bg-light py-3">
		<div class="container">
			<div class="row">
				<div class="col-md-12 mb-0">
					<a href="index.html">HOME</a> <span class="mx-2 mb-12 mb-0">/</span>
					<strong class="text-black">Order List</strong>
				</div>
			</div>
		</div>
	</div>

	<div class="site-section block-8">
		<div class="container">
			<div class="row justify-content-center  mb-5">
				<div class="col-md-7 site-section-heading text-center pt-4">
					<h2>주문목록</h2>
				</div>
			</div>
		</div>
	</div>
	<div class="row justify-content-center  mb-5">
		<table width="600" height="50" align="left">
			<tr>
				<td>기간선택</td>
				<td>
				<input type="text" class="form-control py-4"
				id="startDate" placeholder="-">
				</td>
				<td>-</td>
				<td>
				<input type="text" class="form-control py-4"
				id="endDate" placeholder="-">
				</td>&emsp;&emsp;
				<td>
				<input type="submit" class="btn btn-sm btn-primary form-control" value="조회">
				</td>
			</tr>
		</table>
	</div><!-- 
	
	<hr>
	<table width="1300" height="1" align="center">
	<tr>
	<td>&emsp;&emsp;&emsp;&emsp;상품정보</td>
	<td>&emsp;&emsp;주문일자</td>
	<td>&emsp;주문번호</td>
	<td>&emsp;주문금액(수량)</td>
	<td>&emsp;주문상태</td>
	</tr>
	</table>
	<hr> -->
	
	
	<div class="site-section">
	<div class="container">
	<div class="row mb-5">
	<form class="col-md-12" method="post">
	<div class="site-blocks-table">
	<table class="table table-bordered">
	<thead>
	<tr>
	<th class="product-thumbnail">상품정보</th>
	<th class="product-name">주문일자</th>
	<th class="product-price">주문번호</th>
	<th class="product-total">주문금액(수량)</th>
	<th class="product-remove">주문상태</th>
	<th class="product-review">후기작성</th>
	</tr>
	</thead>
	
	<tbody>
	<tr>
	<td class="product-thumbnail">
	<img src="resources/images/facebook.png" alt="Image" class="img-fluid">
	</td>
	<td class="product-name">
	<h2 class="h5 text-black">2021.11.01</h2>
	</td>
	<td>202111011557060001</td>
	<td>
	<div>79,200원</div>
	<div>1개</div>
	</td>
	<td>
	<div><u>구매 확정</u></div>
	<div>
	<input type="submit" class="btn btn-sm btn-primary form-control" value="배송조회">
	</div>
	</td>	
	<td>
	<div>
	<input type="submit" class="btn btn-sm btn-primary form-control" value="후기작성">
	</div>
	</td>
	</tr>
	
	
	<td class="product-thumbnail">
	<img src="resources/images/naver.png" alt="Image" class="img-fluid">
	</td>
	<td class="product-name">
	<h2 class="h5 text-black">2021.12.24</h2>
	</td>
	<td>20211102254890012</td>
	<td>
	<div>85,600원</div>
	<div>2개</div>
	</td>
	<td>
	<div><u>구매 미확정</u></div>
	<div>
	<input type="submit" class="btn btn-sm btn-primary form-control" value="배송조회">
	</div>
	</td>	
	<td>
	<div>
	<input type="submit" class="btn btn-sm btn-primary form-control" value="후기작성불가">
	</div>
	</td>
	<tr>
	
	</tr>
	</tbody>
	
	
	</table>
	</div>
	</form>
	</div>
	</div>
	</div>
	
	<div id="warning" style="display:none">
	<div class="site-section block-8">
		<div class="container">
			<div class="row justify-content-center  mb-5"><!-- 
				<div class="col-md-7 site-section-heading text-center pt-4"> -->
				 <span class="icon icon-warning"></span>
				<h4>주문하신 내역이 없습니다.</h4>
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
<%@ include file="../includes/footer.jsp"%>
