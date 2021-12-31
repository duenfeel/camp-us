<%@ page language="java" 	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- jstl core 쓸때 태그에 c 로 표시. -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- jstl fmt 쓸때 위와 같음. fmt : formatter 형식 맞춰서 표시 -->
<%@ include file="../../includes/adminheader.jsp"%>
<style>
.center {
    justify-content: center;
    align-items: center;
}
</style>
<a onclick="ExportToExcel()" id="Excel"><button class="btn btn-warning">엑셀저장</button></a>
<p></p><div class="col-lg-12">총 건수 :
<select id="amount" name="amount">
<option value="10">10</option>
<option value="30">30</option>
<option value="50">50</option>
<option value="100">100</option>
</select>
<input type="hidden" name="pageNum" id="pageNum" value="1">
<input type="hidden" id="cnt" name="cnt" value="10"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;분류 :

	&nbsp;&nbsp;&nbsp;<select name="type" id="type">
		<option value="T">아이디</option>
		<option value="C">닉네임</option>
		<option value="W">이메일</option>
		<option value="X">주소</option>
	</select> &nbsp;&nbsp;&nbsp; <input type="text" id="keyword">
	<button id="btnSearch" class="btn btn-warning">검색</button>
	<a type="submit" class="btn btn-warning" href="/admin/member/list" value="이전">이전</a>

</div>
<table class="table table-bordered " id="dataTable" width="100%">
	<thead>
		<tr>
			<th>아이디</th>
			<th>닉네임</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>주소</th>
		</tr>
	</thead>
</table>

<div class="row center" id="pager"></div>


<script >
var csrfHeaderName = "${_csrf.headerName}";
var csrfTokenValue = "${_csrf.token}";
var auth ='<c:out value="${auth}"></c:out>';
//alert(String(auth).length)
if(String(auth).length==0)
{
	window.location.href="/"	
}
function ExportToExcel() {
	var htmltable = document.getElementById("dataTable");

	var html = htmltable.outerHTML;
	//alert(html)
	window
			.open('data:application/vnd.ms-excel,'
					+ encodeURIComponent(html));
}
	
	function List()
	{
	
		var params = {
				type :    $("#type").val(),
				keyword : $("#keyword").val(),
				pageNum : $("#pageNum").val(),
				amount  : $("#amount").val()
			}
		
		
		$.ajax({
			type : "POST", // HTTP method type(GET, POST) 형식이다.
			url : "/admin/member/searchlist", // 컨트롤러에서 대기중인 URL 주소이다.
			beforeSend : function(xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			},
			data : params, // Json 형식의 데이터이다.
			success : function(res) { // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
			//	alert(Object.keys(res).length)
			var str ="<thead><tr><th>아이디</th><th>닉네임</th><th>이메일</th><th>전화번호</th><th>주소</th></tr></thead>"; 
			if(Object.keys(res).length==0)
			{
				str+="<tr><td colspan=5 style='text-align: center;'>검색된 데이터가 없습니다</td></tr>"
					$('#dataTable').append(str);	
			}
			$('#dataTable').empty();
			
				$.each(res,	function(i, v) { //i 인덱스
					//alert(v.cnt)
					$("#cnt").val(v.cnt)
					str += "<tr onmouseover=this.style.background='#f5f2f2' onmouseout=this.style.background='white'>";
					str += "<td style='cursor:pointer' onclick=getRowData('"+ v.userId + "'";
					str += ")>" + v.userId + "</td>"
					str += '<td>' + v.nickname + '</td>';
					str += '<td>' + v.email + '</td>';
					str += '<td>' + v.contact + '</td>';
					str += '<td>' + v.addr2 + '</td>'; 
					str += '</tr>'
				})
				$('#dataTable').append(str);	
				getPager();
			
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) { // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
				alert("통신 실패.") 
			}
		});
	//	getPager();
	}
	
	function getRowData(userid)
	{
		window.location.href="/admin/member/view?userid="+userid
		//alert(userid)
	} 
	
	function getPager()
	   {
			var totalData =$("#cnt").val(); //총 데이터 수
			var dataPerPage = $("#amount").val(); //한 페이지에 나타낼 글 수
			var pagelist = Math.ceil($("#cnt").val()/$("#amount").val(),0);
			if(pagelist>10) pagelist =10;
			var pageCount = pagelist //페이징에 나타낼 페이지 수 무족건 10
			//alert("총건수:"+$("#cnt").val()+",amount:"+$("#amount").val()+",pageCount:"+pageCount)
			var currentPage=$("#pageNum").val(); //현재 페이지
			var pageNum =1;
			if($("#pageNum").val() !="1")
			{
				pageNum = 	$("#pageNum").val()
			}
			
			var endNum = Math.ceil(pageNum / 10) * 10;
			//var startNum = endNum - (endNum -currentPage);// 1
			var startNum = (endNum +1) -dataPerPage
		  	if(startNum <0)
		  	{
		  		startNum =1;	
		  	}
			totalPage = Math.ceil(totalData / dataPerPage); //총 페이지 수
		  
		   if(totalPage<pageCount){
		     pageCount=totalPage;
		   }
		   //alert(startNum+","+totalPage+","+totalPage)
		  var totalPage = Math.ceil(totalData/dataPerPage);    // 총 페이지 수
	      var pageGroup = Math.ceil(currentPage/pageCount);    // 페이지 그룹
		   

			var last = pageGroup * pageCount;    // 화면에 보여질 마지막 페이지 번호
	        if(last > totalPage)
	            last = totalPage;
	        var first = last - (pageCount-1);    // 화면에 보여질 첫번째 페이지 번호
	        var next = last+1;
	        var prev = first-1;
		   //let pageHtml = "";
		   
	          var str = "<ul class='pagination";
	          str+=" justify-content-center'>";
	          if (currentPage>10) {
	             str += "<li class='page-item'><a ";
	             str += "class='page-link' href='";
	             str += (startNum - 1);
	             str += "'>이전</a></li>";
	          }
	          //alert(Math.round((10/currentPage) == prev))
	          for (var i = startNum; i <= pageCount; i++) {
	             var active = pageNum == i ? "active" : "";
	             str += "<li class='page-item "+ active
	             +"'><a  class='page-link' ";
	             
	             if(last ==i)
	            {
	            	 str+="href='"+i+"'>마지막</a></li>";
	            }
	            else
	            {
	            	 str+="href='"+i+"'>"
	                 + i + "</a></li>";
	            }
	            
	          }
	          if (last < totalPage) {
	             str += "<li class='page-item'>";
	             str += "<a  class='page-link' href='";
	             str += (endNum + 1) + "'>다음</a></li>";
	          }

	          str += "</ul>";
	        //  alert(str);
	       $("#pager").html(str);
	   }     
	
	$(document).ready(function(){
		List();
	//	getPager();
		$("#btnSearch").on("click",function(){
			List();
		});
		
		// 현재 페이지를 명시함.  .page-item a로 찾으면 못찾는 경우가 발생할수 있음.
		// $(document).on("click",".page-item a",function(e){ document에 클릭할 이벤트를 다 찾음 
			//$("#pageNum").val($(this).attr("href")); 다 찾음 : 모든 동적으로 실행되는것을 다 찾을수 있음.
		$(document).on("click",".page-item a",function(e){ // 페이징 처리 부분.
			console.log("click");
			e.preventDefault();
			//alert("")
			$("#pageNum").val($(this).attr("href"));
			List();
		});
		
		$("#amount").on("change",function(){
			$("#pageNum").val("1")
		
			List();
		});
	});
</script>
<%@ include file="../../includes/adminfooter.jsp"%>
</body>
</html>