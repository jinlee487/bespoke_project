<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>

<!DOCTYPE html>
<html>
	<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>고객센터 메인</title>

	</head>
<body>
<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">

      <!-- board area -->
			<div class="col-sm-10" style="margin: 10px; padding-top: 50px">
				<!-- 1st row -->
				<div class="row">
					<!-- notice -->
					<div class="col-sm-6">
						<div class="row">
						<div class="col"><h3>공지사항</h3></div><div class="col text-right"><a href="/help/notice" class="text-black">더보기 <span data-feather="plus"></span></a></div>
						</div>
						<p>소식과 이벤트를 공지합니다</p>
					
							<table class="table table-hover">
							<c:forEach var="noticePage" items="${noticePage.content}">
							<tr onclick="javascript:location.href='/noticeview/${noticePage.id}'" style="cursor: pointer;">
							<td class="text-left">[${noticePage.category}] ${noticePage.title}</td>
							</tr>
							</c:forEach>
							</table>
							
					</div>
					<!-- notice end -->
					<!-- <a href="/save" role="button" class="btn btn-dark">글 등록</a> -->
					<!-- faq -->
					<div class="col-sm-6">
						<div class="row">
						<div class="col"><h3>자주 묻는 질문</h3></div><div class="col text-right"><h6><a href="/help/faq" class="text-black">더보기 <i class="fa fa-chevron-right"></i></a></h6></div>
						</div>
						<p>기본적인 답은 여기에 있어요</p>
					 
							<table class="table table-hover">
							<c:forEach var="faqPage" items="${faqPage.content}">
							<tr>
							<td class="text-left">[${faqPage.category}] ${faqPage.title}</td>
							</tr>
							</c:forEach>
							</table>
							
					</div>
					<!-- faq end -->
				</div>
				<!-- 1nd row end -->
				
				<!-- 2nd row -->
				<div class="row">
					<!-- qna -->
					<div class="col-sm-6">
						<div class="row">
						<div class="col"><h3>질문과 답변</h3></div><div class="col text-right"><h6><a href="#" class="text-black">더보기 <i class="fa fa-chevron-right"></i></a></h6></div>
						</div>
						<p>궁금하신 모든 것을 질문하세요</p>
					  
							<table class="table table-hover">
							<c:forEach var="noticePage" items="${noticePage.content}">
							<tr>
							<td class="text-left">[${noticePage.category}] ${noticePage.title}</td>
							</tr>
							</c:forEach>
							</table>
							
					</div>
					<!-- qna end -->
					
					<!-- review -->
					<div class="col-sm-6">
						<div class="row">
						<div class="col"><h3>상품 후기</h3></div><div class="col text-right"><h6><a href="#" class="text-black">더보기 <i class="fa fa-chevron-right"></i></a></h6></div>
						</div>
						<p>앞서 이용하신 고객분들의 후기</p>
					
							<table class="table table-hover">
							<c:forEach var="noticePage" items="${noticePage.content}">
							<tr>
							<td class="text-left">[${noticePage.category}] ${noticePage.title}</td>
							</tr>
							</c:forEach>
							</table>
							
					</div>
					<!-- review end -->
				</div>
				<!-- 2nd row end -->
</div>
<!-- board area end -->
    </main>
<body>
</html>