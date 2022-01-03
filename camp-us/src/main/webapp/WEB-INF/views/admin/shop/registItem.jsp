<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- jstl core 쓸때 태그에 c 로 표시. -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- jstl fmt 쓸때 위와 같음. fmt : formatter 형식 맞춰서 표시 -->
<%@ include file="../../includes/adminheader.jsp"%>


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

<div class="site-section block-8">
	<div class="container">
		<div class="row justify-content-center  mb-5">
			<div class="col-md-7 site-section-heading text-center pt-4">
				<h2>상품 등록</h2>
			</div>
			<div class="site-section">
				<div class="container">
					<div class="row">



						<div class="p-3 p-lg-5 border">
							<div class="form-group row">
								<div class="col-md-12">
									<label for="category" class="text-black">상품분류</label>
									<!-- <input type="text" class="form-control" id="category" name="category"> -->
									<select class="form-control" id="category" name="category">
										<option value="camping">camping</option>
										<option value="backpacking">backpacking</option>
										<option value="picnic">picnic</option>
									</select>
								</div>

								<div class="col-md-6">
									<label for="itemcode" class="text-black">코드</label> <input
										type="text" class="form-control" id="itemcode" name="itemcode"
										value="자동생성" disabled>
								</div>
								<div class="col-md-12">
									<label for="price" class="text-black">가격</label> <input
										type="text" class="form-control" id="price" name="price">
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label for="quantity" class="text-black">상품재고</label> <input
										type="text" class="form-control" id="quantity" name="quantity"
										placeholder="">
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label for="pname" class="text-black">상품명</label> <input
										type="text" class="form-control" id="itemname" name="itemname"
										placeholder="">
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label for="thumbnail" class="text-black">썸네일</label> <input
										type="file" class="form-control" id="thumbnail"
										name="thumbnail" placeholder="">
									<div class="select_img">
										<img src="" />
									</div>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-md-12">
									<label for="details" class="text-black">상품상세이미지</label> <input
										type="file" class="form-control" id="details" name="details">
									<div class="select_details">
										<img src="" />
									</div>
								</div>
							</div>
							<!-- 
								<div class="form-group row"> -->
							<div>
								<input type="button" id="enrollBtn" name="enrollBtn"
									class="btn btn-sm btn-primary form-control" value="등록">
								<!-- "등록" 버튼을 누르면 위쪽에 있는 스크립트문에서 product_write()함수가 호출되서 실행되 itemList페이지로 자료를 전송한다. -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 파일 업로드  -->
<input type="hidden" id="thumbnail" name="thumbnail">
<input type="hidden" id="details" name="details">

<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script src="/resources/js/jquery-ui.js"></script>
<script src="/resources/js/popper.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/owl.carousel.min.js"></script>
<script src="/resources/js/jquery.magnific-popup.min.js"></script>
<script src="/resources/js/aos.js"></script>

<script src="/resources/js/main.js"></script>

<script>
	var csrfHeaderName = "${_csrf.headerName}";
	var csrfTokenValue = "${_csrf.token}";
	$(document).ready(
			function() {

				// 이미지 첨부시 이미지 화면 출력
				$("#thumbnail").change(
						function() {
							if (this.files && this.files[0]) {
								var reader = new FileReader;

								reader.onload = function(data) {
									$(".select_img img").attr("src",
											data.target.result).width(500);
								}

								reader.readAsDataURL(this.files[0]);
								var formData = new FormData();
								formData.append("uploadFile", this.files[0]);
								///alert($(this).val())
								//ajax 
								$.ajax({
									type : 'POST',
									url : '/uploadAjaxAction',
									data : formData,

									processData : false,
									contentType : false,
									dataType : 'json',
									success : function(result) {
										console.log(result);
										alert(result)
									},

								});

								//ajax 
							}
						});
				$("#details").change(
						function() {
							if (this.files && this.files[0]) {
								var reader = new FileReader;

								reader.onload = function(data) {
									$(".select_details img").attr("src",
											data.target.result).width(500);
								}

								reader.readAsDataURL(this.files[0]);
								var formData = new FormData();
								formData.append("uploadFile", this.files[0]);
								///alert($(this).val())
								//ajax 
								$.ajax({
									type : 'POST',
									url : '/uploadAjaxAction',
									data : formData,

									processData : false,
									contentType : false,
									dataType : 'json',
									success : function(result) {
										console.log(result);
										alert(result)
									},

								});
							}

						});
				// 이미지 첨부시 이미지 화면 출력

				// 상품 수량과 가격에 숫자만 입력가능
				var regExp = /[^0-9]/gi;

				$("#price").keyup(function() {
					numCheck($(this));
				});
				$("#quantity").keyup(function() {
					numCheck($(this));
				});

				function numCheck(selector) {
					var tempVal = selector.val();
					selector.val(tempVal.replace(regExp, ""));
				}
				// 상품 수량과 가격에 숫자만 입력가능

			});
	// 등록버튼, 유효성 검사
	$("#enrollBtn").on("click", function(e) {
		e.preventDefault();
		if ($("#category").val() == "") {
			alert("상품분류를 입력하세요");
			return;
		}
		if ($("#price").val() == "") {
			alert("상품가격을 입력하세요");
			return;
		}

		if ($("#itemname").val() == "") {
			alert("상품명을 입력하세요");
			return;
		}
		if ($("#quantity").val() == "") {
			alert("상품재고를 입력하세요");
			return;
		}
		if ($("#thumbnail").val() == "") {
			alert("썸네일을 입력하세요");
			return;
		}
		if ($("#details").val() == "") {
			alert("상세이미지를 입력하세요");
			return;
		}

		var params = {

			itemname : $("#itemname").val(),
			price : $("#price").val(),
			quantity : $("#quantity").val(),
			category : $("#category").val(),
			thumbnail : $("#thumbnail").val(),
			details : $("#details").val()

		}
		// ajax 
		$.ajax({
			type : "POST", // HTTP method type(GET, POST) 형식이다.
			url : "/admin/shop/registItem", // 컨트롤러에서 대기중인 URL 주소이다.
			beforeSend : function(xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			}, // 이 부분은 시큐리티를 병합할 경우 필요함 로그인 처리를 하지 않고 할 경우 굳이 필요하지 않음.
			data : params, // Json 형식의 데이터이다.
			success : function(res) { // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.					
				alert("저장 되었습니다");
				window.location.href = "/admin/member/list"
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) { // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
				alert(errorThrown)
			}

		});
		//ajax 
		// 유효성 검사 
		console.log("itemList");

		///self.location = "/shop/itemList";
	});
</script>


<%@ include file="../../includes/adminfooter.jsp"%>

</html>