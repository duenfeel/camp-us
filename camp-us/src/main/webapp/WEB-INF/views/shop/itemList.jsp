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

   <div class="site-wrap">
      <div class="bg-light py-3">
         <div class="container">
            <div class="row">
               <div class="col-md-12 mb-0">
                  <a href="/resources/index.html">Home</a> <span class="mx-2 mb-0">/</span>
                  <strong class="text-black">Shop</strong>
               </div>
            </div>
         </div>
      </div>
   </div>



    <div class="site-section" >
      <div class="container">
         <div class="row mb-5">
               <div class="row">
               <div class="div-1">
                  <div class="col-md-12 mb-5">
                     <div class="float-md-left mb-4">
                        <h2 class="text-black h5">Shop All</h2>
                     </div>
                      <div class="div-1"> 
                     <div class="d-flex">
                        <div class=" mr-1 ml-md-auto">
                           <button type="button" class="btn form-control border-0"
                              id="dropdownMenuOffset">상품등록</button>
                        </div>
                        <div class="btn-group">
                           <button type="button"
                              class="btn dropdown-toggle btn-primary btn-lg btn-block"
                              id="dropdownMenuReference" data-toggle="dropdown">최신순</button>
                           <div class="dropdown-menu"
                              aria-labelledby="dropdownMenuReference">
                              <a class="dropdown-item" href="#">Relevance</a> <a
                                 class="dropdown-item" href="#">Name, A to Z</a> <a
                                 class="dropdown-item" href="#">Name, Z to A</a>
                              <div class="dropdown-divider"></div>
                              <a class="dropdown-item" href="#">Price, low to high</a> <a
                                 class="dropdown-item" href="#">Price, high to low</a>
                           </div>
                        </div>
                     </div>
                     </div> 
                  </div>
               </div>
               <div class="row mb-5">

                  <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                     <div class="block-4 text-center border">
                        <figure class="block-4-image">
                           <a href="/resources/shop-single.html"><img
                              src="/resources/images/cloth_1.jpg" alt="Image placeholder"
                              class="img-fluid"></a>
                        </figure>
                        <div class="block-4-text p-4">
                           <h3>
                              <a href="/resources/shop-single.html">Tank Top</a>
                           </h3>
                           <p class="mb-0">Finding perfect t-shirt</p>
                           <p class="text-primary font-weight-bold">$50</p>
                        </div>
                     </div>
                  </div>
                  <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                     <div class="block-4 text-center border">
                        <figure class="block-4-image">
                           <a href="/resources/shop-single.html"><img
                              src="/resources/images/shoe_1.jpg" alt="Image placeholder"
                              class="img-fluid"></a>
                        </figure>
                        <div class="block-4-text p-4">
                           <h3>
                              <a href="/resources/shop-single.html">Corater</a>
                           </h3>
                           <p class="mb-0">Finding perfect products</p>
                           <p class="text-primary font-weight-bold">$50</p>
                        </div>
                     </div>
                  </div>
                  <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                     <div class="block-4 text-center border">
                        <figure class="block-4-image">
                           <a href="/resources/shop-single.html"><img
                              src="/resources/images/cloth_2.jpg" alt="Image placeholder"
                              class="img-fluid"></a>
                        </figure>
                        <div class="block-4-text p-4">
                           <h3>
                              <a href="/resources/shop-single.html">Polo Shirt</a>
                           </h3>
                           <p class="mb-0">Finding perfect products</p>
                           <p class="text-primary font-weight-bold">$50</p>
                        </div>
                     </div>
                  </div>

                  <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                     <div class="block-4 text-center border">
                        <figure class="block-4-image">
                           <a href="/resources/shop-single.html"><img
                              src="/resources/images/cloth_3.jpg" alt="Image placeholder"
                              class="img-fluid"></a>
                        </figure>
                        <div class="block-4-text p-4">
                           <h3>
                              <a href="/resources/shop-single.html">T-Shirt Mockup</a>
                           </h3>
                           <p class="mb-0">Finding perfect products</p>
                           <p class="text-primary font-weight-bold">$50</p>
                        </div>
                     </div>
                  </div>
                  <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                     <div class="block-4 text-center border">
                        <figure class="block-4-image">
                           <a href="/resources/shop-single.html"><img
                              src="/resources/images/shoe_1.jpg" alt="Image placeholder"
                              class="img-fluid"></a>
                        </figure>
                        <div class="block-4-text p-4">
                           <h3>
                              <a href="/resources/shop-single.html">Corater</a>
                           </h3>
                           <p class="mb-0">Finding perfect products</p>
                           <p class="text-primary font-weight-bold">$50</p>
                        </div>
                     </div>
                  </div>
                  <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                     <div class="block-4 text-center border">
                        <figure class="block-4-image">
                           <a href="/resources/shop-single.html"><img
                              src="/resources/images/cloth_1.jpg" alt="Image placeholder"
                              class="img-fluid"></a>
                        </figure>
                        <div class="block-4-text p-4">
                           <h3>
                              <a href="/resources/shop-single.html">Tank Top</a>
                           </h3>
                           <p class="mb-0">Finding perfect t-shirt</p>
                           <p class="text-primary font-weight-bold">$50</p>
                        </div>
                     </div>
                  </div>
                  <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                     <div class="block-4 text-center border">
                        <figure class="block-4-image">
                           <a href="/resources/shop-single.html"><img
                              src="/resources/images/shoe_1.jpg" alt="Image placeholder"
                              class="img-fluid"></a>
                        </figure>
                        <div class="block-4-text p-4">
                           <h3>
                              <a href="/resources/shop-single.html">Corater</a>
                           </h3>
                           <p class="mb-0">Finding perfect products</p>
                           <p class="text-primary font-weight-bold">$50</p>
                        </div>
                     </div>
                  </div>
                  <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                     <div class="block-4 text-center border">
                        <figure class="block-4-image">
                           <a href="/resources/shop-single.html"><img
                              src="/resources/images/cloth_2.jpg" alt="Image placeholder"
                              class="img-fluid"></a>
                        </figure>
                        <div class="block-4-text p-4">
                           <h3>
                              <a href="/resources/shop-single.html">Polo Shirt</a>
                           </h3>
                           <p class="mb-0">Finding perfect products</p>
                           <p class="text-primary font-weight-bold">$50</p>
                        </div>
                     </div>
                  </div>

                  <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                     <div class="block-4 text-center border">
                        <figure class="block-4-image">
                           <a href="/resources/shop-single.html"><img
                              src="/resources/images/cloth_3.jpg" alt="Image placeholder"
                              class="img-fluid"></a>
                        </figure>
                        <div class="block-4-text p-4">
                           <h3>
                              <a href="/resources/shop-single.html">T-Shirt Mockup</a>
                           </h3>
                           <p class="mb-0">Finding perfect products</p>
                           <p class="text-primary font-weight-bold">$50</p>
                        </div>
                     </div>
                  </div>
                  <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                     <div class="block-4 text-center border">
                        <figure class="block-4-image">
                           <a href="/resources/shop-single.html"><img
                              src="/resources/images/shoe_1.jpg" alt="Image placeholder"
                              class="img-fluid"></a>
                        </figure>
                        <div class="block-4-text p-4">
                           <h3>
                              <a href="/resources/shop-single.html">Corater</a>
                           </h3>
                           <p class="mb-0">Finding perfect products</p>
                           <p class="text-primary font-weight-bold">$50</p>
                        </div>
                     </div>
                  </div>
                  <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                     <div class="block-4 text-center border">
                        <figure class="block-4-image">
                           <a href="/resources/shop-single.html"><img
                              src="/resources/images/cloth_1.jpg" alt="Image placeholder"
                              class="img-fluid"></a>
                        </figure>
                        <div class="block-4-text p-4">
                           <h3>
                              <a href="/resources/shop-single.html">Tank Top</a>
                           </h3>
                           <p class="mb-0">Finding perfect t-shirt</p>
                           <p class="text-primary font-weight-bold">$50</p>
                        </div>
                     </div>
                  </div>

                  <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                     <div class="block-4 text-center border">
                        <figure class="block-4-image">
                           <a href="/resources/shop-single.html"><img
                              src="/resources/images/cloth_2.jpg" alt="Image placeholder"
                              class="img-fluid"></a>
                        </figure>
                        <div class="block-4-text p-4">
                           <h3>
                              <a href="/resources/shop-single.html">Polo Shirt</a>
                           </h3>
                           <p class="mb-0">Finding perfect products</p>
                           <p class="text-primary font-weight-bold">$50</p>
                        </div>
                     </div>
                  </div>


               </div>
                  <div class="col-md-12 text-center" >
                     <div class="site-block-27">
                        <ul>
                           <li><a href="#">&lt;</a></li>
                           <li class="active"><span>1</span></li>
                           <li><a href="#">2</a></li>
                           <li><a href="#">3</a></li>
                           <li><a href="#">4</a></li>
                           <li><a href="#">5</a></li>
                           <li><a href="#">&gt;</a></li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
            </div></div>

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
</html>
<%@ include file="../includes/footer.jsp"%>