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
	    <input type="hidden" id="cnt" name="cnt" value="1000">
   <!-- 화면에는 보이지는 않음(내부에만 보이는것) 데이터베이스를 가져와서 총 건수를 알아올때 -->

<div class="container">
      <br><br><br>
         <h3>
            SHOP 검색결과&emsp;
         <input type="submit" class="btn btn-sm btn-primary " value="더보기">
         </h3>     
      
      <div class="row mb-5">

              <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                <div class="block-4 text-center border">
                  <figure class="block-4-image">
                    <a href="/resources/shop-single.html"><img src="/resources/images/cloth_1.jpg" alt="Image placeholder" class="img-fluid"></a>
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="/resources/shop-single.html">Tank Top</a></h3>
                    <p class="mb-0">Finding perfect t-shirt</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                <div class="block-4 text-center border">
                  <figure class="block-4-image">
                    <a href="/resources/shop-single.html"><img src="/resources/images/shoe_1.jpg" alt="Image placeholder" class="img-fluid"></a>
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="/resources/shop-single.html">Corater</a></h3>
                    <p class="mb-0">Finding perfect products</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                <div class="block-4 text-center border">
                  <figure class="block-4-image">
                    <a href="/resources/shop-single.html"><img src="/resources/images/cloth_2.jpg" alt="Image placeholder" class="img-fluid"></a>
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="/resources/shop-single.html">Polo Shirt</a></h3>
                    <p class="mb-0">Finding perfect products</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>

              <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                <div class="block-4 text-center border">
                  <figure class="block-4-image">
                    <a href="/resources/shop-single.html"><img src="/resources/images/cloth_3.jpg" alt="Image placeholder" class="img-fluid"></a>
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="/resources/shop-single.html">T-Shirt Mockup</a></h3>
                    <p class="mb-0">Finding perfect products</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                <div class="block-4 text-center border">
                  <figure class="block-4-image">
                    <a href="/resources/shop-single.html"><img src="/resources/images/shoe_1.jpg" alt="Image placeholder" class="img-fluid"></a>
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="/resources/shop-single.html">Corater</a></h3>
                    <p class="mb-0">Finding perfect products</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
              <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                <div class="block-4 text-center border">
                  <figure class="block-4-image">
                    <a href="/resources/shop-single.html"><img src="/resources/images/cloth_1.jpg" alt="Image placeholder" class="img-fluid"></a>
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="/resources/shop-single.html">Tank Top</a></h3>
                    <p class="mb-0">Finding perfect t-shirt</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
              </div>
              
              <input type="hidden" id="cnt" name="cnt" value="1000">
	<!-- 화면에는 보이지는 않음(내부에만 보이는것) 데이터베이스를 가져와서 총 건수를 알아올때 -->


	<br>
	<br>
	<br>
	<br>


      <h3>COMMUNITY 검색결과
         <input type="submit" class="btn btn-sm btn-primary " value="더보기">
      </h3>
      <!-- 레코드의 갯수를 출력 -->
      
      <div class="container">
		<br> <br> <br> <span>
			<h3>
				전체 게시글
			</h3>
		</span>

		<!-- <h3>
			전체 게시글 <input type="submit" style=" value="글쓰기">
		</h3> -->
		<!-- 레코드의 갯수를 출력 -->
		<table width="1200px">
			<thead>
				<tr>
					<th>카테고리</th>
					<th>제목&emsp;&emsp;&emsp;&emsp;&emsp;</th>
					<th>작성자&emsp;&emsp;</th>
					<th>작성일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="board" items="${list}">
					<tr>
						<td>내용</td>
						<td>내용</td>
						<td>내용</td>
						<td>내용</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
          
      
</div>
<br><br><br><br><br><br>

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