<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- jstl core 쓸때 태그에 c 로 표시. -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- jstl fmt 쓸때 위와 같음. fmt : formatter 형식 맞춰서 표시 -->
<%@ include file="../../includes/adminheader.jsp"%>
<style>
.checkbox {
	width: 20px; /*Desired width*/
	height: 20px; /*Desired height*/
	cursor: pointer;
}
</style>
<div class="container">
	<div class="row justify-content-center ">
		<div class="col-lg-12 site-section-heading text-center pt-4">
			<h2>회원가입</h2>
			<div class="form-group row">
			<label class="control-label col-1">아이디 :</label>
			<div class="col-11">
			 <input type="text" class="form-control"
				id="member_ID_subscribe" name="member_ID_subscribe" value="${member.userId}"
				placeholder="아이디" disabled="disabled"> 
			</div>
			</div>
			<br>
			
			<div class="form-group row">
			<label class="control-label col-1">이메일 :</label>
			<div class="col-11">
			<input type="text"
				class="form-control" id="member_Email_subscribe" value="${member.email}"
				name="member_Email_subscribe" placeholder="이메일" disabled="disabled">			
			</div>
			</div> 
			<br>
			
			<div class="form-group row">
			<label class="control-label col-1">핸드폰 번호 :</label>
			<div class="col-11">
			<input type="text" class="form-control "
				id="member_Num_subscribe" name="member_Num_subscribe" value="${member.contact}"
				placeholder="핸드폰 번호" disabled="disabled"> 			
			</div>
			</div>
			<br>
			
			<div class="form-group row">
			<label class="control-label col-1">닉네임 :</label>
			<div class="col-11">
			<input type="text"
				class="form-control " id="member_NicName_subscribe"
				name="member_NicName_subscribe" placeholder="닉네임" value="${member.nickname}"
				disabled="disabled"> 			
			</div>
			</div>
			<br>
			
			<div class="form-group row">
			<label class="control-label col-1">우편번호 :</label>
			<div class="col-11">
			<input class="form-control"
				type="text" id="sample6_postcode" name="sample6_postcode" value="${member.addr1}"
				placeholder="우편번호" disabled="disabled"> 			
			</div>
			</div>
			<br>
			
			<!-- <div class="form-group row">
			<label class="control-label col-1">우편번호 찾기 :</label>
			<div class="col-11">
			<input
				class="form-control " type="button"
				onclick="sample6_execDaumPostcode()" value="우편번호 찾기"
				disabled="disabled">
			
			</div>
			</div>
			<br> -->
			<div class="form-group row">
			<label class="control-label col-1">주소 :</label>
			<div class="col-11">
			<input class="form-control"
				type="text" id="sample6_address" name="sample6_address" value="${member.addr2}"
				placeholder="주소" disabled="disabled"> 			
			</div>
			</div>
			<br>
			
			<div class="form-group row">
			<label class="control-label col-1">상세주소 :</label>
			<div class="col-11">
			<input
				class="form-control " type="text" id="sample6_detailAddress" value="${member.addr3 }"
				name="sample6_detailAddress" disabled="disabled" placeholder="상세주소">			
			</div>
			</div>
			<br>
			
			<div class="form-group row">
			<label class="control-label col-1">참고항목 :</label>
			<div class="col-11">
			<input class="form-control " name="sample6_extraAddress" value="${member.addr4 }"
				type="text" id="sample6_extraAddress" placeholder="참고항목"
				disabled="disabled">			
			</div>
			</div>
			<br>		

			<!--  disabled="disabled" 를 주로 사용할것 -->
			
				<!-- 디자인 수정 -->

					관리자:<input class="checkbox  py-4" type="checkbox" id="ROLE_ADMIN">
					<br> 사용자:<input class="checkbox py-4" type="checkbox"
						id="ROLE_MEMBER">
			<p>
			<p>
			<p>
			<p>
				<br>
				<!-- <input type="submit" class="btn btn-sm btn-primary form-control"
							value="회원가입"> -->
				<a type="submit" class="btn btn-warning" href="/admin/member/list" value="관리자 페이지">관리자페이지로 이동</a>
				<br><p><p><p><p><p> 
				<a type="submit"
					class="btn btn-warning" href="/" value="홈으로 이동">홈으로
					이동</a>
		</div>
	</div>
</div>
<%@ include file="../../includes/adminfooter.jsp"%>
<script>
var csrfHeaderName = "${_csrf.headerName}";
var csrfTokenValue = "${_csrf.token}";
var ROLE_MEMBER = '<c:out value="${member.authList[0].auth}" ></c:out>'
var ROLE_ADMIN = '<c:out value="${member.authList[1].auth}" ></c:out>'
 
//alert(ROLE_MEMBER);
//alert(ROLE_ADMIN);  
	   if (String(ROLE_ADMIN) == "ROLE_ADMIN") {	      
	      $("#ROLE_ADMIN").attr("checked", true)
	   }
	   if (String(ROLE_MEMBER) == "ROLE_MEMBER") {
	      $("#ROLE_MEMBER").attr("checked", true)
	   }
	   $(document).ready(function() {

			$("#list").on("click", function() {
				window.location.href = "/admin/member/list";
			});
			$(".checkbox").on("change", function() {
				var auth = $(this).attr("id");

				var params = {
					userid : $("#member_ID_subscribe").val(),
					auth : auth,
					checkyn : $(this).is(":checked") ? "y" : "n"
				}
				//
				$.ajax({
					type : "POST", // HTTP method type(GET, POST) 형식이다.
					url : "/admin/member/memberauth", // 컨트롤러에서 대기중인 URL 주소이다.
					beforeSend : function(xhr) {
						xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
					},
					data : params, // Json 형식의 데이터이다.
					success : function(res) { // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
						alert("수정되었습니다.")
						//
					},
					error : function(XMLHttpRequest, textStatus, errorThrown) { // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
						alert("통신 실패.")
					}
				});
				////
			});

		});
</script>



</body>
</html>