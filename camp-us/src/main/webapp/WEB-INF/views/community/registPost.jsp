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
	<div class="site-section block-8">
		<div class="container">
			<div class="row justify-content-center  mb-5">
				<div class="col-md-7 site-section-heading text-center pt-4">
					<h2>글 작성하기</h2>
				</div>

				<div class="site-section">
					<div class="container">
						<div class="row">

							<form action="#" method="post">

								<div class="p-3 p-lg-5 border">
								
								<!-- 글작성하는 테두리 가운데 정렬부분 css 추가(div-1) -->
									<div class="div-1">

										<div class="form-group row">
											<div class="col-md-12">
												<label for="a-classification" class="text-black">분류</label>

												<button type="button"
													class="btn btn-secondary btn-sm dropdown-toggle"
													id="dropdownMenuOffset" data-toggle="dropdown"
													aria-haspopup="true" aria-expanded="false"></button>
												<div class="dropdown-menu"
													aria-labelledby="dropdownMenuOffset">
													<a class="dropdown-item" href="#">A</a> <a
														class="dropdown-item" href="#">B</a> <a
														class="dropdown-item" href="#">C</a> <a
														class="dropdown-item" href="#">D</a> <a
														class="dropdown-item" href="#">E</a> <a
														class="dropdown-item" href="#">F</a>
												</div>
											</div>
										</div>
									</div>
									<div class="form-group row">
										<div class="col-md-12">
											<label for="a-writer" class="text-black">작성자</label> <input
												type="text" class="form-control" id="a-writer"
												name="a-writer" placeholder="닉네임" readonly>
										</div>
									</div>

									<div class="form-group row">
										<div class="col-md-12">
											<label for="a-redate" class="text-black">작성일</label> <input
												type="text" class="form-control py-3" id="a-redate"
												name="a-redate" readonly>
										</div>
									</div>
									<div class="form-group row">
										<div class="col-md-12">
											<label for="a-title" class="text-black">제목</label> <input
												type="text" class="form-control py-3" id="a-title"
												name="a-title">
										</div>
									</div>
									<div class="form-group row">
										<div class="col-md-12">
											<label for="a-content" class="text-black">내용 </label>
											<textarea name="a_content" id="a_content" cols="30" rows="7"
												class="form-control"></textarea>
										</div>
									</div>
									<div class="form-group row">
										<div class="col-lg-12">
											<input type="submit" class="btn btn-primary btn-lg btn-block"
												value="작성하기">
										</div>
									</div>
									<div class="form-group row">
										<div class="col-lg-12">

											<input type="submit" class="btn btn-primary btn-lg btn-block"
												value="취소">
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