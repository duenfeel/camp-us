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

	<div class="site-section block-8">
		<div class="container">
			<div class="row justify-content-center  mb-5">
				<div class="col-md-7 site-section-heading text-center pt-4">
					<h2>회원정보수정</h2>
					<br> <br> 
					<input type="text" class="form-control py-4" value="${member.userId}"
						id="member_ID_subscribe" name="member_ID_subscribe" placeholder="아이디" disabled="disabled">	
						<input type="hidden" id="hidCheck" value="n">	
						
					<input type="password" class="form-control py-4" id="member_PW_subscribe"
						name="member_PW_subscribe" placeholder="비밀번호"> 
						
						<input type="password"
						class="form-control py-4" id="member_REPW_subscribe" name="member_REPW_subscribe"
						placeholder="비밀번호확인"> 
						
						<input type="text"
						class="form-control py-4" id="member_Email_subscribe" name="member_Email_subscribe"
						placeholder="이메일" value="${member.email}"> 
						
						<input type="text"
						class="form-control py-4" id="member_Num_subscribe" name="member_Num_subscribe"
						placeholder="핸드폰 번호" value="${member.contact}"> 
						
						<input type="text"
						class="form-control py-4" id="member_NicName_subscribe" name="member_NicName_subscribe"
						placeholder="닉네임" value="${member.nickname}"> 
						
						<input class="form-control py-4" value="${member.addr1}"
						type="text" id="sample6_postcode" name="sample6_postcode" placeholder="우편번호"  disabled="disabled">
						
					    <input class="btn btn-sm btn-primary form-control" type="button"
						onclick="sample6_execDaumPostcode()"  value="우편번호 찾기"> 
						
						<input class="form-control py-4" type="text" id="sample6_address" name="sample6_address"
						placeholder="주소" disabled="disabled" value="${member.addr2}"> 
						
						<input
						class="form-control py-4" type="text" id="sample6_detailAddress" name="sample6_detailAddress"
						placeholder="상세주소" value="${member.addr3}"> 
						
						<input class="form-control py-4" name="sample6_extraAddress"
						type="text" id="sample6_extraAddress" placeholder="참고항목" value="${member.addr4}" disabled="disabled">
						
						<!--  disabled="disabled" 를 주로 사용할것 -->

					<p>
					<p>
					<p>
					<p>
						<br>
						<!-- <input type="submit" class="btn btn-sm btn-primary form-control"
							value="회원가입"> -->
						<button id="join" class="btn btn-sm btn-primary form-control"
							type="button">회원정보수정하기</button>
						<br> <a type="submit"
							class="btn btn-sm btn-primary form-control" href="/"
							value="홈으로 이동">홈으로 이동</a>
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
								</div>
							</td>
							<td>
								<div class="box" style="background: #BDBDBD;">
									<img class="profile" src="/resources/images/naver.png">
								</div>
							</td>
							<td>
								<div class="box" style="background: #BDBDBD;">
									<img class="profile" src="/resources/images/kakao.png">
								</div>
							</td>
							</div>
						<tr>
					</table>

				</div>
			</div>
		</div>
	</div>

	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	var csrfHeaderName = "${_csrf.headerName}";
	var csrfTokenValue = "${_csrf.token}";
	var error = "${error}";
	//alert(error)
	if (error !="")
	{
		alert("로그인을 해주세요.")
		window.location.href="/member/login";
	}
		function sample6_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var addr = ''; // 주소 변수
							var extraAddr = ''; // 참고항목 변수

							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}

							// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
							if (data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}
								// 조합된 참고항목을 해당 필드에 넣는다.
								document.getElementById("sample6_extraAddress").value = extraAddr;

							} else {
								document.getElementById("sample6_extraAddress").value = '';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('sample6_postcode').value = data.zonecode;
							document.getElementById("sample6_address").value = addr;
							// 커서를 상세주소 필드로 이동한다.
							document.getElementById("sample6_detailAddress")
									.focus();
						}
					}).open();
		}

		// html loading 
		$(document).ready(function(){ 
			
		
			 
			 /// version up 버전업이 되면서 못찾는 경우가 발생함. 밑에처럼 찾아줘야함. 
			 // document 의 현재 문서의 click 이벤트를 찾고 #join 이라는 태그를 찾는다.
			 // 이렇게 찾으면 동적으로 테그가 추가되든 안되든 잘 찾아줌.
		$(document).on("click","#join",function(e){
			e.preventDefault();// 이벤트를 취소시키는 명령어
			 if($('#member_PW_subscribe').val() != $('#member_REPW_subscribe').val()){
					if($('#member_REPW_subscribe').val()!=''){
						alert("비밀번호가 일치하지 않습니다.");
						$('#member_REPW_subscribe').val('');
						$('#member_REPW_subscribe').focus();	
						return ;
					}					
				}	
				//hidCheck
			
				if($("#member_PW_subscribe").val() =="")
					{
					alert("비밀번호를 입력하여 주세요")
					return;
					}
				if($("#member_REPW_subscribe").val() =="")
				{
				alert("비밀번호확인을 입력하여 주세요")
				return;
				}
				if($("#member_Email_subscribe").val() =="")
				{
				alert("이메일을 입력하여 주세요")
				return;
				}
				if($("#member_Num_subscribe").val() =="")
				{
				alert("핸드폰번호를 입력하여 주세요")
				return;
				}
				if($("#member_NicName_subscribe").val() =="")
				{
				alert("닉네임을 입력하여 주세요")
				return;
				}
				if($("#sample6_postcode").val() =="")
				{
				alert("우편번호를 입력하여 주세요")
				return;
				}
				if($("#sample6_detailAddress").val() =="")
				{
				alert("상세주소를 입력하여 주세요")
				return;
				}
				
				 var params = {
						 userId   : $("#member_ID_subscribe").val() , 
						 password : $("#member_PW_subscribe").val()	,
						 email    :	$("#member_Email_subscribe").val()	,
						 nickname : $("#member_NicName_subscribe").val()	,
						 Addr1    : $("#sample6_postcode").val()	, 
						 Addr2	  : $("#sample6_address").val()	,
						 Addr3 	  : $("#sample6_detailAddress").val()	, 
						 Addr4 	  : $("#sample6_extraAddress").val()	, 
						 contact  : $("#member_Num_subscribe").val()
                   };
				 
			
				/*  $("#join_form").attr("action", "/member/join");
				$("#join_form").submit(); 
				
				alert("회원가입이 안료되었습니다");  */
				
				 $
              .ajax({
                 type : 'POST',
                 url : '/member/profile',
                 data : params,
                 beforeSend : function(
                       xhr) {
                      xhr
                        .setRequestHeader(
                                 csrfHeaderName,
                                csrfTokenValue); 
                  }, 
                 success : function(res) {
                    alert("회원정보수정이 완료되었습니다")
                    window.location.href = "/" //메인창으로
                 },
                 error : function(
                       XMLHttpRequest,
                       textStatus,
                       errorThrown) {
                    alert(errorThrown)
                 }
              });
		});
			 
			 
		});
		
		
		
		/* 아이디 a-z,0-9, 5자리부터15자리까지 */
		/* var idReg = /^[a-za-z0-9]{5,15}$/;
		var pwReg = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/;
		var emReg = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
		var phReg = /^[0-9]{11}$/;

		$("#member_ID_subscribe").focus(); */
		
</script>
</body>
</html>

