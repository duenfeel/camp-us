<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- jstl core 쓸때 태그에 c 로 표시. -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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
<script src="/resources/js/jquery-3.3.1.min.js"></script>
<script src="/resources/js/jquery-ui.js"></script>
<script src="/resources/js/popper.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/owl.carousel.min.js"></script>
<script src="/resources/js/jquery.magnific-popup.min.js"></script>
<!-- <script src="/resources/js/aos.js"></script> -->
<!-- <script src="/resources/js/main.js"></script> -->

<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
<body>


	<!-- <table>
	<tr>
		<td>
			<input type="text" id="subject"  value="제목">
		</td>
	</tr>
	<tr>
		<td>
			<textarea id="content"  rows="30" cols="30">
			</textarea>
		</td>
	</tr>
	<tr>
		<td>
			<input type="text" id="from" value="whdvkf2000@naver.com"  >
			보내는 이메일
		</td>
	</tr>
	<tr>
		<td>
			<input type="text" id="to"  >
			받는 이메일
		</td>
	</tr>
	<tr>
		<td>
			<button id="send">Send</button>
		</td>
	</tr>
</table> -->
	<div class="site-section block-8">
		<div class="container">
			<div class="row justify-content-center  mb-5">
				<div class="col-md-7 site-section-heading text-center pt-4">
					<h2>비밀번호 찾기</h2>
					<br> <br>
					<input type="hidden" id="subject"  value="camp-us 회원 비밀번호 찾기" class="form-control py-4">
			<input type="hidden" id="from" value="whdvkf2000@naver.com" class="form-control py-4" readonly >
			
			<input type="text" id="to" placeholder="고객 이메일" class="form-control py-4" value="" >
		
			<button id="send" class="btn btn-sm btn-primary form-control">비밀번호 발송</button>
			<a type="submit"
							class="btn btn-sm btn-primary form-control" href="/member/login"
							value="로그인화면으로 이동">로그인화면 이동</a>
				</div>
			</div>
		</div>
	</div>



</body>
<script type="text/javascript">
	var csrfHeaderName = "${_csrf.headerName}";
	var csrfTokenValue = "${_csrf.token}";

	$(document).ready(function() {
		$("#send").on("click", function() {
			var params = {
				subject : $("#subject").val(),
				content : $("#content").val(),
				from : $("#from").val(),
				to : $("#to").val(),
				type : "pwdfind"
			};

			/*  $("#join_form").attr("action", "/member/join");
			$("#join_form").submit(); 
			
			alert("회원가입이 안료되었습니다");  */

			$.ajax({
				type : 'POST',
				url : '/email/send',
				data : params,
				beforeSend : function(xhr) {
					xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
				},
				success : function(res) {
					alert(" 메일 발송")
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					alert(errorThrown)
				}
			});
		});
	});
</script>


</html>