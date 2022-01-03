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

   <div class="site-wrap">
      <div class="bg-light py-3">
         <div class="container">
            <div class="row">
               <div class="col-md-12 mb-0">
                  <a href="/common/main">Home</a> <span class="mx-2 mb-0">/</span>
                  <strong class="text-black">Shop</strong>
               </div>
            </div>
         </div>
      </div>
   </div>
   
    <div class="site-section block-8">
      <div class="container">
         <div class="row justify-content-center  mb-5">
            <div class="col-md-7 site-section-heading text-center pt-4">
               <h2>New Items</h2>
            </div>
         </div>
      </div>
   </div>



	<div class="site-section">
		<div class="container">
			<div class="row mb-5">
				<div class="row">
				
					<div class="row mb-5">

						<c:forEach var="item" items="${itemList}">
							<input id="quantity" name="quantity" type="hidden" value="${item.quantity}">
							<c:if test="${item.quantity >0}">
								<div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
									<div class="block-4 text-center border">
										<figure class="block-4-image">
											<a href="${item.itemCode}" class="move"> <img
												src="/resources/images/cloth_1.jpg" alt="Image placeholder"
												class="img-fluid"></a>
										</figure>
										<div class="block-4-text p-4">
											<h3>
												<a href="${item.itemCode}" class="move"><c:out
														value="${item.itemName}" /></a>
											</h3>
											<p class="mb-0">
												<fmt:formatNumber value="${item.price}" pattern="#,###" />원
											</p>
										</div>
									</div>
								</div>
							</c:if>
							<!-- 재고가 없을 때 Sold Out 표시 및 하이퍼링크 삭제 -->
							<c:if test="${item.quantity eq 0}">
								<div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
									<div class="block-4 text-center border">
										<figure class="block-4-image">
											<img src="/resources/images/cloth_1.jpg"
												alt="Image placeholder" class="img-fluid">
										</figure>
										<div class="block-4-text p-4">
											<h3>
												<c:out value="${item.itemName}" />
											</h3>
											<p class="mb-0">Sold Out</p>
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>

					</div>
					
					<!-- 페이징처리 -->
					<div class="col-md-12 text-center">
						<div class="site-block-27">
							<ul>
								<c:if test="${pageMaker.prev}">
									<li class="page-item"><a href="${pageMaker.startPage-1}">&lt;</a></li>
								</c:if>
								<c:forEach var="num" begin="${pageMaker.startPage}"
									end="${pageMaker.endPage}">
									<li class='page-item ${pageMaker.cri.pageNum==num?"active":""}'><a href="${num}">${num}</a></li>
								</c:forEach>
								<c:if test="${pageMaker.next}">
									<li class="page-item"><a href="${pageMaker.endPage+1}">&gt;</a></li>
								</c:if>
							</ul>
						</div>
					</div>

					<form id="actionForm" action="/shop/itemList" method="get">
						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}"> 
						<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
						<input type="hidden" name="category" value="${pageMaker.cri.category}">
					</form>

				</div> <!-- div row -->
			</div> <!-- div row mb-5 -->
		</div> <!-- div container -->
	</div> <!-- div section -->

	<!-- <div class="col-md-3 order-1 mb-5 mb-md-0">
               <div class="border p-4 rounded mb-4">
                  <h3 class="mb-3 h6 text-uppercase text-black d-block">Categories</h3>
                  <ul class="list-unstyled mb-0">
                     <li class="mb-1"><a href="#" class="d-flex"><span>Camping</span>
                           <span class="text-black ml-auto">(2,220)</span></a></li>
                     <li class="mb-1"><a href="#" class="d-flex"><span>Backpacking</span>
                           <span class="text-black ml-auto">(2,550)</span></a></li>
                     <li class="mb-1"><a href="#" class="d-flex"><span>Picnic</span>
                           <span class="text-black ml-auto">(2,124)</span></a></li>
                  </ul>
               </div>
            </div> -->
<!--       </div> -->





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
	$("#registItem").on("click", function(e) {
		console.log("regist item");
		self.location = "/shop/registItem";
	});
	
	var actionForm = $("#actionForm");
	
	//페이지 버튼 스크립트
	$(".page-item a").on("click", function(e) {
		e.preventDefault();
		console.log("clicked");
		actionForm.find("input[name='pageNum']").val($(this).attr("href"));
		actionForm.submit();
	});
	
	// readItem 페이지로 넘어갈 때 URL에 페이지정보 넣기
	$(".move").on("click", function(e) {
		e.preventDefault();
		actionForm.append("<input type='hidden' name='itemCode' "+"value='"+$(this).attr("href")+"'>");
		actionForm.attr("action","/shop/readItem");
		actionForm.submit();
	});
	
}); //document ready function end
</script>

</html>
<%@ include file="../includes/footer.jsp"%>