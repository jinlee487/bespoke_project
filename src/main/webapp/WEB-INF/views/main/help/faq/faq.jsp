<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Bespoke Help Faq</title>
<script type="text/javascript">

</script>

</head>
<body>
<section class="hero-wrap hero-wrap-2" style="background-image: url('/images/help/help_bg.jpg');background-attachment: fixed; background-size: cover;background-position: center center;" data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
      <div class="container-fluid">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate mb-5 text-center">
          	<p class="breadcrumbs mb-0"><span class="mr-2"><a href="/help">Help </a><i class="fa fa-chevron-right"></i><a href="/help/faq"> Faq</a></span> </p>
            <h1 class="mb-0 bread">자주 묻는 질문</h1><br>
            <p class="mb-0 bread">기본적인 답은 여기에 있어요

</p>
         </div>
      </div>
	</div>
</section>
		
<!-- body area -->		
<div class="hero-wrap pt-5" style="height: 1600px;">
	<div class="container">
		<!-- entire row -->
		<div class="row">
			<jsp:include page="../help-sidemenu.jsp"></jsp:include>
			<!-- board area -->
			<div class="col-sm-10">
			
			<sec:authorize access="hasRole('ROLE_ADMIN')">
			관리자 메뉴
  			<div class="btn-group align-right">
				<a href="/faqsave" class="page-link text-black"><b>등록</b></a>
				<a href="/faqsave" class="page-link text-black"><b>수정</b></a>
				<a href="/faqsave" class="page-link text-black"><b>삭제</b></a>
			</div>
			</sec:authorize>
			
			<form action="/help/faq">
				<select name="size">
					<option>---</option>
					<option value="3">3</option>
					<option value="5">5</option>
					<option value="7">7</option>
					<option value="10">10</option>
					<option value="20">20</option>
				</select> <input type="submit" value="확인" class="btn btn-dark" />
			</form>
			
			
			<div class="btn-group align-right">
			<a href="/help/faq?page=${faqPage.getNumber()}&size=5" class="page-link text-black">5</a>
			<a href="/help/faq?page=${faqPage.getNumber()}&size=10" class="page-link text-black">10</a>
			<a href="/help/faq?page=${faqPage.getNumber()}&size=15" class="page-link text-black">15</a>
			개씩 보기
			</div>
			<br>
			${faqPage.getTotalPages()}페이지 중 ${faqPage.getPageable().getPageNumber()+1}번째
			<br>
			<table class="table text-center">
				<thead class="table-dark">
					<tr>
						<th scope="col">번호</th>
						<th scope="col">분류</th>
						<th scope="col">제목</th>
						<th scope="col">등록일</th>
					</tr>
				</thead>
			<c:forEach var="faqPage" items="${faqPage.content}">
			<fmt:parseDate value="${faqPage.createdDate}" pattern="yyyy-MM-dd" var="parsedDateTime" type="both"/>
			<fmt:formatDate pattern="yyyy.MM.dd" value="${parsedDateTime}" var="createdDate"/>
					<tr>
						<td>${faqPage.id}</td>
						<td>[${faqPage.category}]</td> 
						<td>${faqPage.title}</td>
						<td>${createdDate}</td>
					</tr>
			</c:forEach>
			</table>
		
		<!-- 페이지네이션 -->
		<ul class="pagination justify-content-center">
		
			<c:if test="${faqPage.isFirst() eq false}">
			<li class="page-item"><a class="page-link text-black" href="/help/faq?page=1&size=${faqPage.getPageable().getPageSize()}">처음</a></li>
			<li class="page-item"><a class="page-link text-black" href="/help/faq?page=${faqPage.previousOrFirstPageable().getPageNumber()+1}&size=${faqPage.getPageable().getPageSize()}">이전</a></li>
			</c:if>

				<c:forEach var="i" begin="${startP}" end="${endP}">
					<c:choose>
						<c:when test="${i eq faqPage.getPageable().getPageNumber()+1}">
							<li class="page-item"><a class="page-link page-link-custom" href="/help/faq?page=${i}&size=${faqPage.getPageable().getPageSize()}">${i}</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link text-black" href="/help/faq?page=${i}&size=${faqPage.getPageable().getPageSize()}">${i}</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			
			<c:if test="${faqPage.isLast() eq false}">
			<li class="page-item"><a class="page-link text-black" href="/help/faq?page=${faqPage.nextOrLastPageable().getPageNumber()+1}&size=${faqPage.getPageable().getPageSize()}">다음</a></li>
			<li class="page-item"><a class="page-link text-black" href="/help/faq?page=${faqPage.getTotalPages()}&size=${faqPage.getPageable().getPageSize()}">끝</a></li>
			</c:if>
			
		</ul>
		
</div>
<!-- board area end -->
</div>
<!-- entire row end-->
</div>
<!-- container end-->
</div>
</body>
</html>