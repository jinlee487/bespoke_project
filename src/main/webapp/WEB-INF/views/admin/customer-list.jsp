<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
	<title>Admin - Customer List</title>
    <script src="/js/jquery-3.2.1.min.js"></script>
    <script src="/js/bespoke-admin.js"></script>
<script>
$(function(){
	var sType = $('#searchType').val();
	if(sType =='led'){
		$('#keyword').hide();
		$('#fromDate').show();
		$('#toDate').show();
	}else if(sType =='li' ){
		$('#keyword').hide();
		$('#fromDate').hide();
		$('#toDate').hide();
	}else{
		$('#keyword').show();
		$('#fromDate').hide();
		$('#toDate').hide();
	};//검색 설정 세팅

	$("#keyword").keydown(function(key) {
        if (key.keyCode == 13) {
         $('#searchBtn').click();
        }
    }); // keyword_enterkey 
    //submit을  사용할경우 뒤로가기시 브라우저에서 안내 화면 출력 

	$('#searchBtn').on("click",function(){
		self.location="/admin/customerList"
			+"?currpage=1"
			+"&perPageRow="+$("#perPageRow").val()
			+"&searchType="+$("#searchType").val()
			+"&keyword="+$("#keyword").val()
			+"&fromDate="+$("#fromDate").val()
			+"&toDate="+$("#toDate").val();
	});//serarchBtn_click
	
	$('#searchType').on("click",function(){
		//alert($(this).val());
		if($(this).val()=='led'){
			$('#keyword').hide();
			$('#fromDate').show();
			$('#toDate').show();
		}else if($(this).val() =='li' ){
			$('#keyword').hide();
			$('#fromDate').hide();
			$('#toDate').hide();
		}else{
			$('#keyword').show();
			$('#fromDate').hide();
			$('#toDate').hide();
		};		
	}); //searchType_click
	
	$(".clickable-row").click(function() {
        window.location = $(this).data("href");
    }); //clickable-row_click
	
	$('th').each(function (column) {
	      $(this).click(function() {
              if($(this).is('.asc')) {
                  $(this).removeClass('asc');
                  $(this).addClass('desc');
                  sortdir=-1;
              } else {
                 $(this).addClass('asc');
                 $(this).removeClass('desc'); sortdir=1;
              }
              $(this).siblings().removeClass('asc');
              $(this).siblings().removeClass('desc');

              var rec = $('table').find('tbody>tr').get();
             rec.sort(function (a, b) {
                  var val1 = $(a).children('td').eq(column).text().toUpperCase();
                  var val2 = $(b).children('td').eq(column).text().toUpperCase();
                  return (val1 < val2)?-sortdir:(val1>val2)?sortdir:0;
             });
             $.each(rec, function(index, row) {
                  $('tbody').append(row);
             });
	      });
	});//th_each 테이블 정렬
}); // ready 
</script>
</head>

<body>
    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">구매 고객 리스트</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
			<select class="form-inline mr-2"  name="searchType" id="searchType">
				<option value="n" <c:out value="${pageMaker.cri.searchType==null ? 'selected':'' }"/>>---</option>
				<option value="na" <c:out value="${pageMaker.cri.searchType eq 'na' ? 'selected':'' }"/>>성함</option>
				<option value="i" <c:out value="${pageMaker.cri.searchType eq 'i' ? 'selected':'' }"/>>고객번호</option>
				<option value="g" <c:out value="${pageMaker.cri.searchType eq 'g' ? 'selected':'' }"/>>그룹</option>
				<option value="pn" <c:out value="${pageMaker.cri.searchType eq 'pn' ? 'selected':'' }"/>>전화번호</option>
				<option value="ad" <c:out value="${pageMaker.cri.searchType eq 'ad' ? 'selected':'' }"/>>주소</option>
				<option value="led" <c:out value="${pageMaker.cri.searchType eq 'led' ? 'selected':'' }"/>>최종 수정일</option>
				<option value="li" <c:out value="${pageMaker.cri.searchType eq 'li' ? 'selected':'' }"/>>최근 등록 고객</option>
			</select>
			<input class="form-inline mr-2" type="text" name="currPage" id="currPage" value="${pageMaker.cri.currPage}"  hidden="true">
			<input class="form-inline mr-2" type="text" name="keyword" id="keyword" value="${pageMaker.cri.keyword}">
 			<input class="form-inline mr-2" type="date" id="fromDate"  value="${pageMaker.cri.fromDate}" >
			<input class="form-inline mr-2" type="date" id="toDate" value="${pageMaker.cri.toDate}" >

			<button type="button" id="searchBtn" class="btn btn-outline-primary form-inline mr-2">Search</button>
          
          <select class="form-inline mr-2"  name="perPageRow" id="perPageRow">
				<option value=10 <c:out value="${pageMaker.cri.perPageRow == 10 ? 'selected':'' }"/>>10 줄</option>
				<option value=15 <c:out value="${pageMaker.cri.perPageRow == 15 ? 'selected':'' }"/>>15 줄</option>
				<option value=20 <c:out value="${pageMaker.cri.perPageRow == 20 ? 'selected':'' }"/>>20 줄</option>
				<option value=25 <c:out value="${pageMaker.cri.perPageRow == 25 ? 'selected':'' }"/>>25 줄</option>
			</select>
        </div>
      </div>
  
      <div class="table-responsive-sm">
        <table class="table table-striped table-sm" id="ctable" >
          <thead>
            <tr align="center" height=30>
              <th scope="col" style="min-width: 100px;">고객 번호</th><th scope="col" style="min-width: 50px;">그룹</th><th style="min-width:80px;">성함</th>
              <th scope="col" style="text-align:left; min-width: 100px;">연락처</th><th scope="col" style="text-align:left;min-width:300px; ">주소</th><th scope="col" style="min-width: 90px;">최종 수정일</th>
            </tr>
          </thead>
          <tbody>
				<c:forEach var="customerlist" items="${customerList}">
					<tr align="center" height=30 class='clickable-row' data-href='/admin/customerData?c_id=${customerlist.c_id}' onclick="window.location='#';">
						<td>${customerlist.c_id}</td>
						<td>${customerlist.c_group}</td>
						<td>${customerlist.c_name}</td>
						<td style="text-align:left">
							<c:if test="${fn:length(customerlist.cp_no) >= 10}">
								<a href="tel:${customerlist.cp_no}"><i class="fa fa-mobile"> ${customerlist.cp_no}&nbsp;&nbsp; </i> </a>
							</c:if>
							<c:if test="${fn:length(customerlist.hp_no) >= 8}">
								<a href="tel:${customerlist.hp_no}"><i class="fa fa-home"> ${customerlist.hp_no}&nbsp;&nbsp; </i> </a>
							</c:if>
							<c:if test="${fn:length(customerlist.bzp_no) >=8 }">
								<a href="tel:${customerlist.bzp_no}"><i class="fa fa-building"> ${customerlist.bzp_no}&nbsp;&nbsp; </i> </a>
							</c:if>
							<c:if test="${fn:length(customerlist.fax_no) >= 8}">
								<a href="#"><i class="fa fa-fax"> ${customerlist.fax_no}</i></a>
							</c:if>		
						</td>
						<td style="text-align:left">
							<c:if test="${fn:length(customerlist.home_adrs) >= 4}">
								<i class="fa fa-home"> ${customerlist.home_adrs} ${customerlist.home_adrsd}</i>
							</c:if>
							<c:if test="${fn:length(customerlist.bz_adrs) >=4 && fn:length(customerlist.home_adrs) >= 4}">
								<br>
							</c:if>
							<c:if test="${fn:length(customerlist.bz_adrs) >=4 }">
								<i class="fa fa-building"> ${customerlist.bz_adrs} ${customerlist.bz_adrsd}</i>
							</c:if>		
						</td>
						<td>${customerlist.last_edit_day.substring(0,10)}</td>
					</tr>
				</c:forEach>
          </tbody>
        </table>
      </div>
		<hr>					

		<!-- 1) -->
		<nav aria-label="Page navigation example">
		  <ul class="pagination justify-content-center">
				<c:if test="${pageMaker.prev}">
					<li class="page-item"><a class="page-link"  href="/admin/customerList${pageMaker.makeSearch(1)}">First</a></li>
					<li class="page-item"><a class="page-link"  href="/admin/customerList${pageMaker.makeSearch(pageMaker.sPageNo-1) }">prev</a></li>
			  	</c:if>
					<!-- 2) -->
				<c:forEach begin="${pageMaker.sPageNo}"  end="${pageMaker.ePageNo}" var="i">
					<c:choose>
						<c:when test="${i==pageMaker.cri.currPage}">
							<li class="page-item active"><span class="page-link">${i}<span class="sr-only">(current)</span></span></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link"  href="/admin/customerList${pageMaker.makeSearch(i)}">${i}</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<!-- 3) -->
			  <c:if test="${pageMaker.next && pageMaker.ePageNo > 0}">
					<li class="page-item"><a class="page-link"  href="/admin/customerList${pageMaker.makeSearch(pageMaker.ePageNo+1)}">next</a></li>
					<li class="page-item"><a class="page-link"  href="/admin/customerList${pageMaker.makeSearch(pageMaker.lastPageNo)}">Last</a></li>
				</c:if>
		  	</ul>
		  	<c:if test="${message != null}">
				<div class="alert alert-primary alert-dismissable show fade" role="alert">
		 			 => ${message}
		 		</div>
			</c:if>
  
		</nav>
	</main>
</body>
</html>