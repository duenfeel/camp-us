<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- jstl core 쓸때 태그에 c 로 표시. -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- jstl fmt 쓸때 위와 같음. fmt : formatter 형식 맞춰서 표시 -->
<%@ include file="includes/header.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Shoppers &mdash; Colorlib e-Commerce Template</title>
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
   href="https://fonts.googleapis.com/css?family=Mukta:300,400,700">
<link rel="stylesheet" href="fonts/icomoon/style.css">

<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/magnific-popup.css">
<link rel="stylesheet" href="/resources/css/jquery-ui.css">
<link rel="stylesheet" href="/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="/resources/css/owl.theme.default.min.css">


<link rel="stylesheet" href="/resources/css/aos.css">

<link rel="stylesheet" href="/resources/css/style.css">

</head>
<body>


   <!-- <div class="site-wrap">
      <header class="site-navbar" role="banner">
         <div class="site-navbar-top">
            <div class="container">
               <div class="row align-items-center">

                  <div
                     class="col-6 col-md-4 order-2 order-md-1 site-search-icon text-left">
                     <form action="" class="site-block-top-search">
                        <span class="icon icon-search2"></span> <input type="text"
                           class="form-control border-0" placeholder="Search">
                     </form>
                  </div>

                  <div
                     class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
                     <div class="site-logo">
                        <a href="index.html" class="/resources/js-logo-clone">Shoppers</a>
                     </div>
                  </div>

                  <div class="col-6 col-md-4 order-3 order-md-3 text-right">
                     <div class="site-top-icons">
                        <ul>
                           <li><a href="#"><span class="icon icon-person"></span></a></li>
                           <li><a href="#"><span class="icon icon-heart-o"></span></a></li>
                           <li><a href="cart.html" class="site-cart"> <span
                                 class="icon icon-ping_cart"></span> <span class="count">2</span>
                           </a></li>
                           <li class="d-inline-block d-md-none ml-md-0"><a href="#"
                              class="site-menu-toggle js-menu-toggle"><span
                                 class="icon-menu"></span></a></li>
                        </ul>
                     </div>
                  </div>

               </div>
            </div>
         </div>
         <nav class="site-navigation text-right text-md-center"
            role="navigation">
            <div class="container">
               <ul class="site-menu js-clone-nav d-none d-md-block">
                  <li class="has-children"><a href="index.html">Home</a>
                     <ul class="dropdown">
                        <li><a href="#">Menu One</a></li>
                        <li><a href="#">Menu Two</a></li>
                        <li><a href="#">Menu Three</a></li>
                        <li class="has-children"><a href="#">Sub Menu</a>
                           <ul class="dropdown">
                              <li><a href="#">Menu One</a></li>
                              <li><a href="#">Menu Two</a></li>
                              <li><a href="#">Menu Three</a></li>
                           </ul></li>
                     </ul></li>
                  <li class="has-children"><a href="about.html">About</a>
                     <ul class="dropdown">
                        <li><a href="#">Menu One</a></li>
                        <li><a href="#">Menu Two</a></li>
                        <li><a href="#">Menu Three</a></li>
                     </ul></li>
                  <li class="active"><a href="shop.html">Shop</a></li>
                  <li><a href="#">Catalogue</a></li>
                  <li><a href="#">New Arrivals</a></li>
                  <li><a href="contact.html">Contact</a></li>
               </ul>
            </div>
         </nav>
      </header> -->

      <div class="bg-light py-3">
         <div class="container">
            <div class="row">
               <div class="col-md-12 mb-0">
                  <a href="index.html">Home</a> <span class="mx-2 mb-0">/</span> <strong
                     class="text-black">Wishlist</strong>
               </div>
            </div>
         </div>
      </div>

      <div class="site-section block-8">
         <div class="container">
            <div class="row justify-content-center  mb-5">
               <div class="col-md-7 site-section-heading text-center pt-4">
                  <h2>Wishlist!</h2>
               </div>
            </div>
         </div>
      </div>

      <div>

         <div class="site-section site-block-2">
            <div class="container">
               <div class="row justify-content-center  mb-5">
                  <div class="col-md-9 order-2">


                     <div class="row mb-5">

                        <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                           <div class="block-4 text-center border">
                              <figure class="block-4-image">

                                 <a href="shop-single.html"><img
                                    src="/resources/images/cloth_1.jpg" alt="Image placeholder"
                                    class="img-fluid""></a>
                              </figure>
                              <div class="block-4-text p-4">
                                 <h3>
                                    <a href="shop-single.html">Tank Top</a>
                                 </h3>
                                 <p class="mb-0">Finding perfect t-shirt</p>
                                 <p class="text-primary font-weight-bold">$50</p>
                              </div>
                           </div>
                        </div>
                        <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                           <div class="block-4 text-center border">
                              <figure class="block-4-image">
                                 <a href="shop-single.html"><img
                                    src="/resources/images/shoe_1.jpg" alt="Image placeholder"
                                    class="img-fluid"></a>
                              </figure>
                              <div class="block-4-text p-4">
                                 <h3>
                                    <a href="shop-single.html">Corater</a>
                                 </h3>
                                 <p class="mb-0">Finding perfect products</p>
                                 <p class="text-primary font-weight-bold">$50</p>
                              </div>
                           </div>
                        </div>
                        <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                           <div class="block-4 text-center border">
                              <figure class="block-4-image">
                                 <a href="shop-single.html"><img
                                    src="/resources/images/cloth_2.jpg" alt="Image placeholder"
                                    class="img-fluid"></a>
                              </figure>
                              <div class="block-4-text p-4">
                                 <h3>
                                    <a href="shop-single.html">Polo Shirt</a>
                                 </h3>
                                 <p class="mb-0">Finding perfect products</p>
                                 <p class="text-primary font-weight-bold">$50</p>
                              </div>
                           </div>
                        </div>

                        <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                           <div class="block-4 text-center border">
                              <figure class="block-4-image">
                                 <a href="shop-single.html"><img
                                    src="/resources/images/cloth_3.jpg" alt="Image placeholder"
                                    class="img-fluid"></a>
                              </figure>
                              <div class="block-4-text p-4">
                                 <h3>
                                    <a href="shop-single.html">T-Shirt Mockup</a>
                                 </h3>
                                 <p class="mb-0">Finding perfect products</p>
                                 <p class="text-primary font-weight-bold">$50</p>
                              </div>
                           </div>
                        </div>
                        <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                           <div class="block-4 text-center border">
                              <figure class="block-4-image">
                                 <a href="shop-single.html"><img
                                    src="/resources/images/shoe_1.jpg" alt="Image placeholder"
                                    class="img-fluid"></a>
                              </figure>
                              <div class="block-4-text p-4">
                                 <h3>
                                    <a href="shop-single.html">Corater</a>
                                 </h3>
                                 <p class="mb-0">Finding perfect products</p>
                                 <p class="text-primary font-weight-bold">$50</p>
                              </div>
                           </div>
                        </div>
                        <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                           <div class="block-4 text-center border">
                              <figure class="block-4-image">
                                 <a href="shop-single.html"><img
                                    src="/resources/images/cloth_1.jpg" alt="Image placeholder"
                                    class="img-fluid"></a>
                              </figure>
                              <div class="block-4-text p-4">
                                 <h3>
                                    <a href="shop-single.html">Tank Top</a>
                                 </h3>
                                 <p class="mb-0">Finding perfect t-shirt</p>
                                 <p class="text-primary font-weight-bold">$50</p>
                              </div>
                           </div>
                        </div>
                        <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                           <div class="block-4 text-center border">
                              <figure class="block-4-image">
                                 <a href="shop-single.html"><img
                                    src="/resources/images/shoe_1.jpg" alt="Image placeholder"
                                    class="img-fluid"></a>
                              </figure>
                              <div class="block-4-text p-4">
                                 <h3>
                                    <a href="shop-single.html">Corater</a>
                                 </h3>
                                 <p class="mb-0">Finding perfect products</p>
                                 <p class="text-primary font-weight-bold">$50</p>
                              </div>
                           </div>
                        </div>
                        <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                           <div class="block-4 text-center border">
                              <figure class="block-4-image">
                                 <a href="shop-single.html"><img
                                    src="/resources/images/cloth_2.jpg" alt="Image placeholder"
                                    class="img-fluid"></a>
                              </figure>
                              <div class="block-4-text p-4">
                                 <h3>
                                    <a href="shop-single.html">Polo Shirt</a>
                                 </h3>
                                 <p class="mb-0">Finding perfect products</p>
                                 <p class="text-primary font-weight-bold">$50</p>
                              </div>
                           </div>
                        </div>

                        <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                           <div class="block-4 text-center border">
                              <figure class="block-4-image">
                                 <a href="shop-single.html"><img
                                    src="/resources/images/cloth_3.jpg" alt="Image placeholder"
                                    class="img-fluid"></a>
                              </figure>
                              <div class="block-4-text p-4">
                                 <h3>
                                    <a href="shop-single.html">T-Shirt Mockup</a>
                                 </h3>
                                 <p class="mb-0">Finding perfect products</p>
                                 <p class="text-primary font-weight-bold">$50</p>
                              </div>
                           </div>
                        </div>
                        <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                           <div class="block-4 text-center border">
                              <figure class="block-4-image">
                                 <a href="shop-single.html"><img
                                    src="/resources/images/shoe_1.jpg" alt="Image placeholder"
                                    class="img-fluid"></a>
                              </figure>
                              <div class="block-4-text p-4">
                                 <h3>
                                    <a href="shop-single.html">Corater</a>
                                 </h3>
                                 <p class="mb-0">Finding perfect products</p>
                                 <p class="text-primary font-weight-bold">$50</p>
                              </div>
                           </div>
                        </div>
                        <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                           <div class="block-4 text-center border">
                              <figure class="block-4-image">
                                 <a href="shop-single.html"><img
                                    src="/resources/images/cloth_1.jpg" alt="Image placeholder"
                                    class="img-fluid"></a>
                              </figure>
                              <div class="block-4-text p-4">
                                 <h3>
                                    <a href="shop-single.html">Tank Top</a>
                                 </h3>
                                 <p class="mb-0">Finding perfect t-shirt</p>
                                 <p class="text-primary font-weight-bold">$50</p>
                              </div>
                           </div>
                        </div>

                        <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                           <div class="block-4 text-center border">
                              <figure class="block-4-image">
                                 <a href="shop-single.html"><img
                                    src="/resources/images/cloth_2.jpg" alt="Image placeholder"
                                    class="img-fluid"></a>
                              </figure>
                              <div class="block-4-text p-4">
                                 <h3>
                                    <a href="shop-single.html">Polo Shirt</a>
                                 </h3>
                                 <p class="mb-0">Finding perfect products</p>
                                 <p class="text-primary font-weight-bold">$50</p>
                              </div>
                           </div>
                        </div>

<!-- <script>
function cba(event) {
   event.img
   
}




function cbd
</script>
 -->
                     </div>
                     <div class="row" data-aos="fade-up">
                        <div class="col-md-12 text-center">
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
               </div>

               <div class="row">
                  <div class="col-md-12">
                     <div class="site-section site-blocks-2">
                        <div class="row justify-content-center text-center mb-5">
                           <div class="col-md-7 site-section-heading pt-4">
                              <h2>Categories</h2>
                           </div>
                        </div>
                        <div class="row">
                           <div class="col-sm-6 col-md-6 col-lg-4 mb-4 mb-lg-0"
                              data-aos="fade" data-aos-delay="">
                              <a class="block-2-item" href="#">
                                 <figure class="image">
                                    <img src="images/women.jpg" alt="" class="img-fluid">
                                 </figure>
                                 <div class="text">
                                    <span class="text-uppercase">Collections</span>
                                    <h3>Women</h3>
                                 </div>
                              </a>
                           </div>
                           <div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0"
                              data-aos="fade" data-aos-delay="100">
                              <a class="block-2-item" href="#">
                                 <figure class="image">
                                    <img src="images/children.jpg" alt="" class="img-fluid">
                                 </figure>
                                 <div class="text">
                                    <span class="text-uppercase">Collections</span>
                                    <h3>Children</h3>
                                 </div>
                              </a>
                           </div>
                           <div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0"
                              data-aos="fade" data-aos-delay="200">
                              <a class="block-2-item" href="#">
                                 <figure class="image">
                                    <img src="images/men.jpg" alt="" class="img-fluid">
                                 </figure>
                                 <div class="text">
                                    <span class="text-uppercase">Collections</span>
                                    <h3>Men</h3>
                                 </div>
                              </a>
                           </div>
                        </div>

                     </div>
                  </div>
               </div>

            </div>
         </div>


         <footer class="site-footer border-top">
            <div class="container">
               <div class="row">
                  <div class="col-lg-6 mb-5 mb-lg-0">
                     <div class="row">
                        <div class="col-md-12">
                           <h3 class="footer-heading mb-4">Navigations</h3>
                        </div>
                        <div class="col-md-6 col-lg-4">
                           <ul class="list-unstyled">
                              <li><a href="#">Sell online</a></li>
                              <li><a href="#">Features</a></li>
                              <li><a href="#">Shopping cart</a></li>
                              <li><a href="#">Store builder</a></li>
                           </ul>
                        </div>
                        <div class="col-md-6 col-lg-4">
                           <ul class="list-unstyled">
                              <li><a href="#">Mobile commerce</a></li>
                              <li><a href="#">Dropshipping</a></li>
                              <li><a href="#">Website development</a></li>
                           </ul>
                        </div>
                        <div class="col-md-6 col-lg-4">
                           <ul class="list-unstyled">
                              <li><a href="#">Point of sale</a></li>
                              <li><a href="#">Hardware</a></li>
                              <li><a href="#">Software</a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-6 col-lg-3 mb-4 mb-lg-0">
                     <h3 class="footer-heading mb-4">Promo</h3>
                     <a href="#" class="block-6"> <img
                        src="/resources/images/hero_1.jpg" alt="Image placeholder"
                        class="img-fluid rounded mb-4">
                        <h3 class="font-weight-light  mb-0">Finding Your Perfect
                           Shoes</h3>
                        <p>Promo from nuary 15 &mdash; 25, 2019</p>
                     </a>
                  </div>
                  <div class="col-md-6 col-lg-3">
                     <div class="block-5 mb-5">
                        <h3 class="footer-heading mb-4">Contact Info</h3>
                        <ul class="list-unstyled">
                           <li class="address">203 Fake St. Mountain View, San
                              Francisco, California, USA</li>
                           <li class="phone"><a href="tel://23923929210">+2 392
                                 3929 210</a></li>
                           <li class="email">emailaddress@domain.com</li>
                        </ul>
                     </div>

                     <div class="block-7">
                        <form action="#" method="post">
                           <label for="email_subscribe" class="footer-heading">Subscribe</label>
                           <div class="form-group">
                              <input type="text" class="form-control py-4"
                                 id="email_subscribe" placeholder="Email"> <input
                                 type="submit" class="btn btn-sm btn-primary" value="Send">
                           </div>
                        </form>
                     </div>
                  </div>
               </div>
               <div class="row pt-5 mt-5 text-center">
                  <div class="col-md-12">
                     <p>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;
                        <script data-cfasync="false"
                           src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
                        <script>
                           document.write(new Date().getFullYear());
                        </script>
                        All rights reserved | This template is made with <i
                           class="icon-heart" aria-hidden="true"></i> by <a
                           href="https://colorlib.com" target="_blank"
                           class="text-primary">Colorlib</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                     </p>
                  </div>

               </div>
            </div>
         </footer>
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
<%@ include file="includes/footer.jsp"%>