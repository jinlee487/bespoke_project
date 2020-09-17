<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<title>관리자 페이지 레이아웃 사이드메뉴</title>
</head>
<body>
	<nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
	  <div class="sidebar-sticky pt-3">
	  <ul class="nav flex-column">
	      <li class="nav-item"><a class="nav-link active" href="/admin/admin"><span data-feather="home"></span>관리자 페이지 홈</a></li>
	  </ul>
<hr>
  	    <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
	      <span>회원 정보 관리</span>
	      <a class="d-flex align-items-center text-muted" href="#" aria-label="Add a new report">
	        <span data-feather="plus-circle"></span>
	      </a>
	    </h6>
<hr>	    
	    <ul class="nav flex-column">
	      <li class="nav-item"><a class="nav-link" href="/admin/memberList"><span data-feather="globe"></span>웹 회원 리스트</a></li>
	      <li class="nav-item"><a class="nav-link" href="/admin/customerList"><span data-feather="search"></span>구매 고객 검색</a></li>
	      <li class="nav-item"><a class="nav-link" href="/admin/addCustomer"><span data-feather="user-plus"></span>신규 고객 등록</a></li>
	    </ul>
<hr>
	    <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
	      <span>구매 정보 관리</span>
	      <a class="d-flex align-items-center text-muted" href="#" aria-label="Add a new report">
	        <span data-feather="plus-circle"></span>
	      </a>
	    </h6>
<hr>
	    <ul class="nav flex-column mb-2">
	      <li class="nav-item"><a class="nav-link" href="#"><span data-feather="users"></span>사이즈 정보</a></li>
	      <li class="nav-item" ><a class="nav-link" href="#"><span data-feather="shopping-cart"></span>주문 정보</a></li>
	      <li class="nav-item"><a class="nav-link" href="/admin/cad"><span data-feather="layers"></span>패턴 정보</a></li>
		</ul>
<hr>
	    <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
	      <span>웹 페이지 관리</span>
	      <a class="d-flex align-items-center text-muted" href="#" aria-label="Add a new report">
	        <span data-feather="plus-circle"></span>
	      </a>
	    </h6>
<hr>
	    <ul class="nav flex-column mb-2">
			<li class="nav-item"><a class="nav-link" href="/admin/showcaseList"><span data-feather="users"></span>쇼케이스 검색</a></li>
			<li class="nav-item" ><a class="nav-link" href="/admin/addShowcase"><span data-feather="shopping-cart"></span>신규 쇼케이스 등록</a></li>
			<li class="nav-item"><a class="nav-link" href="#"><span data-feather="users"></span>공지사항</a></li>
			<li class="nav-item"><a class="nav-link" href="#"><span data-feather="users"></span>FAQ / QNA</a></li>
			<li class="nav-item"><a class="nav-link" href="#"><span data-feather="users"></span>리뷰</a></li>
	    </ul>
	  </div>
	</nav>
</body>
</html>