<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- jstl core 쓸때 태그에 c 로 표시. -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- jstl fmt 쓸때 위와 같음. fmt : formatter 형식 맞춰서 표시 -->
<%@ include file="../includes/header.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>CAMP-US</title>
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
	<div id="ab" style="display: none">
		<table width="1200" height="100" align="center">
			<tr>
				<td><font size="2em">상품분류</font></td>
				<td><input type="text" name="name" size="20"></td>
				<td><font size="2em">상품코드</font></td>
				<td><input type="text" name="name" size="20"></td>
				<td><font size="2em">재고</font></td>
				<td><input type="text" name="name" size="20"></td>
				<td><font size="2em">상품등록일</font></td>
				<td><input type="text" name="name" size="20"></td>
				<td><input type="submit"
					class="btn btn-sm btn-primary form-control" value="상품수정"></td>
			</tr>
		</table>
	</div>


	<div class="site-section">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<img src="/resources/images/cloth_1.jpg" alt="Image"
						class="img-fluid">
				</div>
				<div class="col-md-6">
					<a name="itemName"><h3><c:out value="${item.itemName}"/></h3></a>
					<!-- <input type="text" class="form-control py-4" placeholder="상품명"
						style="width: 400px;">  -->
						<!-- <select id="c_country"
						class="form-control" style="width: 400px;">
						<option value="1">옵션:</option>
						<option value="2">최종혁1</option>
						<option value="3">최종혁2</option>
						<option value="4">최종혁3</option>
						<option value="5">최종혁4</option>
						<option value="6">최종혁5</option>
						<option value="7">최종혁6</option> 
					</select>  -->
					<p>
					<a>택배배송</a>&nbsp;&nbsp;<a>|</a>&nbsp;&nbsp;<a>무료배송</a>
					<p>
					<p>
					<p>
						<font size="3em">가격</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
						<font size="6em" class=" py-4"><fmt:formatNumber value="${item.price}" pattern="#,###"/></font> 
						<font size="3em">원</font>
					<p>
						<input type="submit" class="btn btn-sm btn-primary form-control"
							id="wishlist" value="찜하기" style="width: 200px;"> 
						<input type="submit" class="btn btn-sm btn-primary form-control" 
							id="cart" value="장바구니" style="width: 200px;">
				</div>
			</div>
		</div>
	</div>
	<div style="text-align: center;">
		<img src="resources/images/facebook.png" width="1000" height="400">
	</div>
	<div class="site-section">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<p>
						<font size="5em">REVIEW</font>
					<p>
					<p>
					<p>
					<p>
					<div class="box" style="background: #BDBDBD;">
						<img class="profile" src="resources/images/profile.png">
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 프로필사진, 별점, 닉네임, 작성일, 수정, 신고버튼 미구현
                    페이징 처리 미구현
                    Q&A 미구현 -->





	<script src="/resources/js/jquery-3.3.1.min.js"></script>
	<script src="/resources/js/jquery-ui.js"></script>
	<script src="/resources/js/popper.min.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/owl.carousel.min.js"></script>
	<script src="/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="/resources/js/aos.js"></script>
	<script src="/resources/js/main.js"></script>
</body>

<script>
$(document).ready(function() {
	$("#wishlist").on("click", function(e) {
		console.log("add to wishlist");
		self.location = "/user/wishlist";
	});
}); //document ready function end
</script>
</html>

<%@ include file="../includes/footer.jsp"%>