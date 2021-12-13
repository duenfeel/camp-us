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
    <title>Shoppers &mdash; Colorlib e-Commerce Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700"> 
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

	<div class="site-section block-8">
		<div class="container">
			<div class="row justify-content-center  mb-5">
				<div class="col-md-7 site-section-heading text-center pt-4">
					<h2>상품 등록</h2>
				</div>
				<div class="site-section">
					<div class="container">
						<div class="row">

							<form action="#" method="post">

								<div class="p-3 p-lg-5 border">
									<div class="form-group row">
										<div class="col-md-6">
											<label for="a-classify" class="text-black">상품분류</label> <input
												type="text" class="form-control" id="a-classify" name="a-classify" >
										</div>
										<div class="col-md-6">
											<label for="a-price" class="text-black">단가</label> <input
												type="text" class="form-control" id="a-price" name="a-price">
										</div>
									</div>
									<div class="form-group row">
										<div class="col-md-12">
											<label for="a-stock" class="text-black">재고</label> <input
												type="text" class="form-control" id="a-stock" name="a-stock"
												placeholder="">
										</div>
									</div>
									<div class="form-group row">
										<div class="col-md-12">
											<label for="a-tradename" class="text-black">상품명</label> <input
												type="text" class="form-control" id="a-tradename" name="a-tradename"
												placeholder="">
										</div>
									</div>
									<div class="form-group row">
										<div class="col-md-12">
											<label for="a-thumbnail" class="text-black">썸네일</label> <input
												type="file" class="form-control" id="a-thumbnail" name="a-thumbnail"
												placeholder="">
										</div>
									</div>
									<div class="form-group row">
										<div class="col-md-12">
											<label for="a-account" class="text-black">상품설명</label> <input
												type="file" class="form-control" id="a-account"
												name="a-account">
										</div>
									</div>

									<div class="form-group row">
										<div class="col-md-12">
											<label for="a-date" class="text-black">상품등록일</label> <input
												type="text" class="form-control" id="a-date"
												name="a-date" readonly>
										</div>
									</div>
									<div class="form-group row">
										<div class="col-lg-12">
											<input type="submit" class="btn btn-sm btn-primary form-control"
												value="등록완료">
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



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