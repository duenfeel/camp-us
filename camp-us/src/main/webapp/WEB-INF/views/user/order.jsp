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

<script type="text/javascript"
   src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
   src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

</head>
<body>
   <div class="bg-light py-3">
      <div class="container">
         <div class="row">
            <div class="col-md-12 mb-0">
               <a href="/common/main">HOME</a> <span class="mx-2 mb-12 mb-0">/</span>
               <strong class="text-black">Order</strong>
            </div>
         </div>
      </div>
   </div>
   <br>


   <!--    <div class="site-section block-8"> -->
   <div class="container">
      <div class="row justify-content-center  mb-5">
         <div class="col-md-7 site-section-heading text-center pt-4">
            <h2>주문/결제</h2>
         </div>
         <!--          <div class="div-1"> -->
         <div class="site-section">
            <div class="container">
               <div class="row">

                  <div class="div-1">
                     <form action="#" method="post">
                        <!--                      <div class="div-1"> -->
                        <div class="p-3 p-lg-5 border">

                           <h1>주문자</h1>
                           <br>
                           <div class="form-group row">
                              <div class="col-md-12">
                                 <input type="text" class="form-control py-4" id="a-name"
                                    name="a-name" placeholder="이름">
                              </div>
                           </div>

                           <div class="form-group row">
                              <div class="col-md-12">
                                 <input type="text" class="form-control" id="c-email"
                                    name="c-email" placeholder="이메일">
                              </div>
                           </div>

                           <div class="form-group row">
                              <div class="col-md-12">
                                 <input type="text" class="form-control" id="a-phonenumber"
                                    name="a-phonenumber" placeholder="휴대폰번호">

                              </div>
                           </div>
                           <br> <br> <br>

                           <h1>배송지</h1>
                           <br>
                           <div class="form-group row">
                              <div class="col-md-12">
                                 <input type="text" class="form-control py-4" id="b-name"
                                    name="b-name" placeholder="받는 사람">
                              </div>
                           </div>

                           <div class="form-group row">
                              <div class="col-md-12">
                                 <input type="text" class="form-control" id="c-phonenumber"
                                    name="phonenumber" placeholder="휴대폰번호">

                              </div>
                           </div>

                           <div class="form-group row">
                              <div class="col-md-12">
                                 <input class="form-control py-4" type="text"
                                    id="sample6_postcode" placeholder="우편번호"> <input
                                    class="form-control py-4" type="button"
                                    onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
                                 <input class="form-control py-4" type="text"
                                    id="sample6_address" placeholder="주소"> <input
                                    class="form-control py-4" type="text"
                                    id="sample6_detailAddress" placeholder="상세주소"> <input
                                    class="form-control py-4" type="text"
                                    id="sample6_extraAddress" placeholder="참고항목">
                              </div>
                           </div>
                           <br> <br>


                           <!--                          <ul class="form-group row"> -->
                           <!--                 <li class="cell_discount_tit">배송 메모<br /> -->
                           <!--                 </li> -->

                           <!--                 <div class="div-1"> -->
                           <h1>배송 메모</h1>
                           <lable class="cell_discount_detail box_memo"> <select
                              name="dlv_selectbox" id="dlv_selectbox">
                              <option value="">배송 시 요청사항을 선택해주세요</option>
                              <option value="부재 시 경비실에 맡겨주세요">부재 시 경비실에 맡겨주세요</option>
                              <option value="부재 시 택배함에 넣어주세요">부재 시 택배함에 넣어주세요</option>
                              <option value="부재 시 집 앞에 놔주세요">부재 시 집 앞에 놔주세요</option>
                              <option value="배송 전 연락 바랍니다">배송 전 연락 바랍니다</option>
                              <option value="파손의 위험이 있는 상품입니다. 배송 시 주의해주세요">파손의 위험이
                                 있는 상품입니다. 배송 시 주의해주세요</option>
                           </select>
                           </label>
                        </div>

                        <br> <br> <br>

                        <h1>결제 수단</h1>
                        <br>
                        <div class="form-group row">
                           <div class="col-md-12">
                              <label for="a-tradename" class="text-black">카카오페이&nbsp;&nbsp;&nbsp;</label>
                              <a><img type="button"
                                 src="/resources/images/kakaopay_1.jpg"></a>
                              <!--                                  <input -->
                              <!--                                     type="text" class="form-control" id="a-tradename" name="a-tradename" -->
                              <!--                                     placeholder=""> -->
                           </div>
                           <br> <br>
                        </div>
                        <!--                      </div> -->
                     </form>
                  </div>
               </div>
            </div>

            <div class="container">
               <div class="row justify-content-center  mb-5">
                  <div class="col-md-7 site-section-heading text-center pt-4">
                     <h2>주문 내역</h2>
                  </div>
               </div>
            </div>


            <div class="site-section">
               <div class="container">
                  <div class="row mb-5">
                     <form class="col-md-12" method="post">
                        <div class="site-blocks-table">
                           <table class="table table-bordered">
                              <thead>
                                 <tr>
                                    <th class="product-thumbnail">Image</th>
                                    <th class="product-name">Product</th>
                                    <th class="product-price">Price</th>
                                    <th class="product-quantity">Quantity</th>
                                    <th class="product-total">Total</th>
                                    <th class="product-remove">Remove</th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <tr>
                                    <td class="product-thumbnail"><img
                                       src="/resources/images/cloth_1.jpg" alt="Image"
                                       class="img-fluid"></td>
                                    <td class="product-name">
                                       <h2 class="h5 text-black">Top Up T-Shirt</h2>
                                    </td>
                                    <td>$49.00</td>
                                    <td>
                                       <div class="input-group mb-3" style="max-width: 120px;">
                                          <div class="input-group-prepend">
                                             <button class="btn btn-outline-primary js-btn-minus"
                                                type="button">&minus;</button>
                                          </div>
                                          <input type="text" class="form-control text-center"
                                             value="1" placeholder=""
                                             aria-label="Example text with button addon"
                                             aria-describedby="button-addon1">
                                          <div class="input-group-append">
                                             <button class="btn btn-outline-primary js-btn-plus"
                                                type="button">&plus;</button>
                                          </div>
                                       </div>

                                    </td>
                                    <td>$49.00</td>
                                    <td><a href="#" class="btn btn-primary btn-sm">X</a></td>
                                 </tr>
                              </tbody>
                           </table>
                        </div>
                     </form>
                  </div>
               </div>
            </div>
         </div>
         <!--          </div> -->



         <div class="container">
            <div class="row justify-content-center  mb-5">
               <div class="col-md-7 site-section-heading text-center pt-4">
                  <div class="row">
                     <div class="div-1">
                        <div class="col-md-12">
                           <div class="row">
                              <div class="col-md-12 text-right border-bottom mb-5">
                                 <h3 class="text-black h4 text-uppercase" align="center">Cart
                                    Totals</h3>
                              </div>
                           </div>
                           <div class="row mb-5">
                              <div class="col-md-6">
                                 <span class="text-black" name="total">Total</span>
                              </div>
                              <div class="col-md-6 text-right">
                                 <strong class="text-black">$230.00</strong>
                              </div>
                           </div>

                           <div class="row">
                              <div class="col-md-12">
                                 <button class="btn btn-primary btn-lg py-3 btn-block"
                                    onclick="window.location='test.html'" id="pays">결제하기</button>
                              </div>
                              <br> <br>
                              <p>테스트 결제</p>
                              <br>
                              <button id="check_module" type="button"
                                 onclick="location.href='test.jsp'">결제 테스트</button>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

   <script
      src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
   <script>
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
<%@ include file="../includes/footer.jsp"%>