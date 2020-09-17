<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Bespoke Help Notice Save</title>
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
			<jsp:include page="../help-sidemenu.jsp"></jsp:include>
			<!-- board area -->
			<div class="col-sm-10">
			<form>
<div class="form-group">
<select name="category" id="category">
  <option value="배송">배송</option>
  <option value="주문">주문</option>
  <option value="교환/환불">교환/환불</option>
  <option value="기타">기타</option>
</select>
</div>
<div class="form-group">
<input type="text" class="form-control" id="title" placeholder="제목">
</div>
<div class="form-group">
<input type="text" class="form-control" id="author" readonly="readonly" value="관리자">
</div>
<div class="form-group" style="height: 300px;">
<textarea class="form-control" id="content" placeholder="내용" style="height: 500px;"></textarea>
</div>
</form>
<div class="text-center">
<button type="button" class="btn btn-dark" id="btn-save">등록</button>
<a href="/" role="button" class="btn btn-dark">취소</a>
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
