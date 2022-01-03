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

<!-- readPost.jsp -->

</head>
<body>

	<input type="hidden" id="cnt" name="cnt" value="1000">
	<!-- 화면에는 보이지는 않음(내부에만 보이는것) 데이터베이스를 가져와서 총 건수를 알아올때 -->

	<div class="site-section block-8">
		<div class="container">
			<div class="row justify-content-center  mb-5">
				<div class="col-md-7 site-section-heading text-center pt-4">
					<h2>글 제목</h2>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<br> <br> <br>
		<table width="700" height="100" align="center">
			<thead>
				<tr>
					<th><font size="3em">분류</font></th>
					<th><input type="text" name="name" size="10"></th>
					<th><font size="3em">작성자</font></th>
					<th><input type="text" name="name" size="10"></th>
					<th><font size="3em">작성일</font></th>
					<th><input type="text" name="name" size="10"></th>
			</thead>
			<tbody>
				<tr>
					<td>내용</td>
				</tr>
				<c:forEach var="board" items="${boardlist}">
					<tr>
						<td>${board.bno }</td>
						<td><c:out value="${board.title }" /></td>
						<td><c:out value="${board.writer }" /></td>
						<td><fmt:formatDate pattern="yyyy-MM-dd"
								value="${board.regdate }" /></td>
						<td><fmt:formatDate pattern="yyyy-MM-dd"
								value="${board.updateDate }" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<br>
	<br>

	<div style="text-align: center;">
		<input class="btn btn-primary" type="submit" value="수정"> <input
			class="btn btn-danger" type="submit" value="삭제"> <input
			class="btn btn-info" type="submit" value="목록">
	</div>



	<!-- <div class="kategorie">
		<input type="submit" class="btn btn-sm btn-primary form-control"
			value="노하우"> <input type="submit"
			class="btn btn-sm btn-primary form-control" value="장소추천"> <input
			type="submit" class="btn btn-sm btn-primary form-control"
			value="제품추천"> <input type="submit"
			class="btn btn-sm btn-primary form-control" value="여행기"> <input
			type="submit" class="btn btn-sm btn-primary form-control" value="Q&A">
	</div> -->


	<div class="card-body">
		<div class="table-responsive">
			<table class="table table-bordered" id="dataTable" width="100%"
				cellspacing="0">
				<thead>
				</thead>
				<tbody>
					<tr>
						<th>작성자<br>.....<br>2021.12.12
						</th>

					</tr>
					<c:forEach var="board" items="${replylist }">
						<tr>
							<td>${board.bno }</td>
							<td><a href="${board.bno }" class="move"> <c:out
										value="${board.title }" /> <c:if
										test="${board.replyCnt ne 0 }">
										<span style="color: red;">[ <c:out
												value="${board.replyCnt }" />]
										</span>
									</c:if>

							</a></td>
							<td><c:out value="${board.writer }" /></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd"
									value="${board.regdate }" /></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd"
									value="${board.updateDate }" /></td>

						</tr>
						<c:if test="${pinfo.username eq board.writer }">
							<!-- 인증되었으면서 작성자가 본인 일때 수정과 삭제 버튼 표시 -->
							<button type="submit" data-oper='modify' class="btn btn-success">수정</button>
							<button type="submit" data-oper='remove' class="btn btn-danger">삭제</button>
						</c:if>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	<br>
	<br>
	<div class="row aos-init aos-animate" data-aos="fade-up" align="center">
		<div class="col-md-12 text=center">
			<div class="site-block-27">
				<div class="search">
					<ul>
						<li><a href="#"><</a></li>
						<li class="active"><span>1</span></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
</body>

<script>
	
</script>
</html>
<%@ include file="../includes/footer.jsp"%>