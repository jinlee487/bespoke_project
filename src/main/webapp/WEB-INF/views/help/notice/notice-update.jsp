<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Bespoke Help Notice View</title>
</head>
<body>
<section class="hero-wrap hero-wrap-2" style="background-image: url('/images/help/help_bg.jpg');background-attachment: fixed; background-size: cover;background-position: center center;" data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
      <div class="container-fluid">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate mb-5 text-center">
          	<p class="breadcrumbs mb-0"><span class="mr-2"><a href="/help">Help </a><i class="fa fa-chevron-right"></i><a href="/help/notice"> Notice</a></span> </p>
            <h1 class="mb-0 bread">공지사항</h1>
            <p class="mb-0 bread">소식과 이벤트를 공지합니다</p>
         </div>
      </div>
	</div>
</section>
		
<!-- body area -->		
<div class="hero-wrap pt-5" style="height: 1600px;">
<div class="container">
<!-- entire row -->
<div class="row">
<!-- board area -->
		<div class="col-sm-10">
        <form>
            <div class="form-group">
                <label for="title">글 번호</label>
                <input type="text" class="form-control" id="id" value="${noticeView.id}" readonly>
            </div>
            <div class="form-group">
                <label for="title">제목</label>
                <input type="text" class="form-control" id="title" value="${noticeView.title}">
            </div>
            <div class="form-group">
                <label for="author"> 작성자 </label>
                <input type="text" class="form-control" id="author" value="${noticeView.author}" readonly>
            </div>
            <div class="form-group">
                <label for="content"> 내용 </label>
                <textarea class="form-control" id="content">${noticeView.content}</textarea>
            </div>
        </form>
        	
       	<a href="/help/notice" role="button" class="btn btn-dark">취소</a>
        <sec:authorize access="hasRole('ROLE_ADMIN')">
        <button type="button" class="btn btn-dark" id="btn-update">수정</button>
        <button type="button" class="btn btn-dark" id="btn-delete">삭제</button>
        </sec:authorize>
			
</div>
<!-- board area end -->
</div>
<!-- entire row end-->
</div>
<!-- container end-->
</div>
</body>
</html>
