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
<title>LoginPage</title>
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
					<h2>로그인</h2>
					<h2>${error}</h2>
					<h2>${logout}</h2>
					<form method="post" action="/login">
            <div class="form-group">
               <input type="text" name="username" placeholder="userid" class="form-control">
            </div>
            <div class="form-group">
               <input type="password" name="password" placeholder="password" class="form-control">
            </div>
            <div class="form-group">
               <input type="checkbox" name="remember-me">
               <h class="jb-xx-small">자동 로그인</h>
               <a href="/member/join">회원가입</a>&nbsp;&nbsp;&nbsp;
               <a href="/email/send" >비밀번호 찾기</a>
            </div>
            <div class="form-group ">
               <input type="submit" id="login" value="login" class="btn btn-sm btn-primary form-control">  
               <a type="submit"
							class="btn btn-sm btn-primary form-control" href="/"
							value="홈으로 이동">홈으로 이동</a>             
            </div>
            
            <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token}" />
         </form>
					<br>
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

<script>

$(document).ready(function(){
	$("#login").on("click",function(e){
		e.preventDefault();
		
		var params = {
				 userid : $("#member_ID_subscribe").val() ,
				 password : $("#member_PW_subscribe").val()
		};
		
		alert(params.userid)
		$.ajax({
			type : 'POST',
			url : '/member/login',
			data : params,
			success : function(res) {
				alert("로그인이 되었습니다")
				window.location.href = "/main"
			},
			error : function(
					)
		})
	});
});


</script>




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

