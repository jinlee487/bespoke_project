<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Bespoke Help</title>
</head>
<body>
<section class="hero-wrap hero-wrap-2" style="background-image: url('/images/help/help_bg.jpg');background-attachment: fixed; background-size: cover;background-position: center center;" data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
      <div class="container-fluid">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate mb-5 text-center">
          	<p class="breadcrumbs mb-0"><span class="mr-2"><a href="/help">Help<!--  <i class="fa fa-chevron-right"></i> --></a></span> </p>
            <h1 class="mb-0 bread">고객센터</h1>
            <p class="mb-0 bread">운영시간<br>월요일 - 토요일<br>09:00 - 18:00</p>
         </div>
      </div>
	</div>
</section>
		
<!-- body area -->		
<div class="hero-wrap pt-5" style="height: 1600px;">
	<div class="container">
		<!-- entire row -->
		<div class="row">
			<jsp:include page="help-sidemenu.jsp"></jsp:include>
			<!-- board area -->
			<div class="col-sm-10">
				<!-- 1st row -->
				<div class="row">
					<!-- notice -->
					<div class="col-sm-6">
						<div class="row">
						<div class="col"><h3>공지사항      </h3></div><div class="col text-right"><h6><a href="/help/notice" class="text-black">더보기 <i class="fa fa-chevron-right"></i></a></h6></div>
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
						<div class="col"><h3>질문과 답변 </h3></div><div class="col text-right"><h6><a href="#" class="text-black">더보기 <i class="fa fa-chevron-right"></i></a></h6></div>
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
						<div class="col"><h3>상품 후기     </h3></div><div class="col text-right"><h6><a href="#" class="text-black">더보기 <i class="fa fa-chevron-right"></i></a></h6></div>
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
</div>
<!-- entire row end-->
</div>
<!-- container end-->
</div>
</body>
</html>