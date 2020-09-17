<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Bespoke Help Notice</title>
<script src="/js/jquery-3.2.1.min.js"></script>
<script>
/* 페이지 갯수 active */
$(function(){
	var pSize = document.location.href.split("&");
	var pSize2 = ${noticePage.getSize()};
	$('.pagecount').removeClass('page-link-custom');
	$('.pagecount').each(function(){
		if(pSize2 == $(this).attr('id')){
		$(this).addClass('page-link-custom');
		}
	});
});
</script>
</head>
<body>
<section class="hero-wrap hero-wrap-2" style="background-image: url('/images/help/help_bg.jpg');background-attachment: fixed; background-size: cover;background-position: center center;" data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
      <div class="container-fluid">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate mb-5 text-center">
          	<p class="breadcrumbs mb-0"><span class="mr-2"><a href="/help">Help </a><i class="fa fa-chevron-right"></i><a href="/help/notice"> Notice</a></span> </p>
            <h1 class="mb-0 bread">공지사항</h1><br>
            <p class="mb-0 bread">소식과 이벤트를 공지합니다</p>
         </div>
      </div>
	</div>
</section>
<!-- body area -->		
<div class="hero-wrap pt-5" style="height: auto;">
	<div class="container">
		<!-- entire row -->
		<div class="row">
			<!-- board area -->
			<div class="col-sm-10">
 				
			<!-- 검색 및 페이지 사이즈 설정 -->
			<div class="row m-b-6">
				<div class="col text-left">
					<form action="/help/notice/search" class="form-inline">
						<select class="form-inline mr-2" id="search_type">
							<option value="serarch_notice">소식</option>
							<option value="search_event">이벤트</option>
							<option value="title">제목</option>
							<option value="search_content">내용</option>
							<option value="search_title&content">제목+내용</option>
						</select>
						<input id="search_input" type="text" placeholder="검색어를 입력하세요" class="form-inline mr-2" style="border: 1px black solid;">
						<input name="page" type="hidden" value="${1}">
						<input name="size" type="hidden" value="${size}">
						<button class="form-inline mr-2"><span class="fa fa-search"></span></button>
					</form>
				</div>
				<a href="/help/notice/noticesave" class="btn btn-dark">등록페이지</a>
				<div class="col text-right" style="margin: auto;">
					<div class="btn-group text-right">
						<a href="/help/notice?title=${title}&page=${page+1}&size=10" id="10" class="page-link text-black pagecount">10</a>
						<a href="/help/notice?title=${title}&page=${page+1}&size=20" id="20" class="page-link text-black pagecount">20</a>
						<a href="/help/notice?title=${title}&page=${page+1}&size=30" id="30" class="page-link text-black pagecount">30</a>
						개씩 보기
					</div>
				</div>
			</div>
			<!-- 검색 및 페이지 사이즈 설정 끝-->
			
			<!-- 테이블 시작 -->
			<table class="table text-center table-hover">
				<thead style="border-top: 3px solid black; border-bottom: 3px solid black;">
					<tr>
						<th scope="col">번호</th>
						<th scope="col">분류</th>
						<th scope="col">제목</th>
						<th scope="col">등록일</th>
						<th scope="col">조회수</th>
					</tr>
				</thead>
			<c:forEach var="noticePage" items="${content}">
			<fmt:parseDate value="${noticePage.createdDate}" pattern="yyyy-MM-dd" var="parsedDateTime" type="both"/>
			<fmt:formatDate pattern="yyyy.MM.dd" value="${parsedDateTime}" var="createdDate"/>
					<tr>
						<td>${noticePage.id}</td>
						<td>[${noticePage.category}]</td>
						<td onclick="javascript:location.href='/help/notice/noticedetail/${noticePage.id}'" style="cursor: pointer;">${noticePage.title}</td>
						<td>${createdDate}</td>
						<td>${noticePage.count}</td>
					</tr>
			</c:forEach>
			</table>
			
		<!-- 페이지네이션 -->
		<ul class="pagination justify-content-center">
			<c:if test="${isFirst eq false}">
			<li class="page-item"><a class="page-link text-black" href="/help/notice?&title=${title}&page=1&size=${size}">처음</a></li>
			<li class="page-item"><a class="page-link text-black" href="/help/notice?&title=${title}&page=${startP-1}&size=${size}">이전</a></li>
			</c:if>

				<c:forEach var="i" begin="${startP}" end="${endP}">
					<c:choose>
						<c:when test="${i eq page+1}">
							<li class="page-item"><a class="page-link page-link-custom" href="/help/notice?${category}&title=${title}&page=${i}&size=${size}">${i}</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link text-black" href="/help/notice?${category}&title=${title}&page=${i}&size=${size}">${i}</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			
			<c:if test="${noticePage.isLast() eq false}">
			<li class="page-item"><a class="page-link text-black" href="/help/notice?&title=${title}&page=${endP+1}&size=${size}">다음</a></li>
			<li class="page-item"><a class="page-link text-black" href="/help/notice?&title=${title}&page=${totalPage}&size=${size}">끝</a></li>
			</c:if>
		</ul>
		<div class="text-right m-t-17 m-b-17 m-r-35">
			<b>${totalRow}개, ${totalPage}페이지 중 ${page+1}번째</b>
		</div>
</div>
<!-- board area end -->
</div>
<!-- entire row end-->
</div>
<!-- container end-->
</div>
</body>
</html>