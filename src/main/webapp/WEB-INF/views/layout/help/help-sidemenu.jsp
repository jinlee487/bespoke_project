<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
  <style>
  body {
    position: relative;
  }
  ul.nav-pills {
    top: 20px;
    position: fixed;
  }
  </style>

<title>고객센터 레이아웃 사이드메뉴</title>
</head>
<body>
	<nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse myScrollspy">
	      <div class="sidebar-sticky pt-3">
	     
	      <ul class="nav flex-column mb-2">
    	      <li class="nav-item">
	            <a class="nav-link" href="/help">
	              <span data-feather="home"></span>
	              		고객센터 홈
	            </a>
	          </li>
	          </ul>
	          <hr>
	        <ul class="nav flex-column">

	          <li class="nav-item">
	            <a class="nav-link" href="/help/notice">
	              <span data-feather="bell"></span>
	              		공지사항
	            </a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="/help/faq">
	              <span data-feather="shopping-cart"></span>
	              		자주 묻는 질문
	            </a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="/help/qna">
	              <span data-feather="users"></span>
	              		질문과 답변
	            </a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="/help/faq">
	              <span data-feather="bar-chart-2"></span>
	              		상품 후기
	            </a>
	          </li>
	        </ul>
	<hr>
	        <!-- <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
	          <span>Saved reports</span>
	          <a class="d-flex align-items-center text-muted" href="#" aria-label="Add a new report">
	            <span data-feather="plus-circle"></span>
	          </a>
	        </h6> -->
	        <ul class="nav flex-column mb-2">
	          <li class="nav-item">
	            <a class="nav-link" href="/help/myInfo">
	              <span data-feather="user"></span>
	              	마이 페이지
	            </a>
	          </li>
	        </ul>
	<hr>
	        <ul class="nav flex-column mb-2">
	          <li class="nav-item">
	            <a class="nav-link" href="/help/myInfo">
	              <span data-feather="user"></span>
	              	사이즈 정보
	            </a>
	          </li>
	
	          <li class="nav-item">
	            <a class="nav-link" href="#">
	              <span data-feather="file-text"></span>
	              	주문 정보
	            </a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="#">
	              <span data-feather="file-text"></span>
	              	패턴 정보
	            </a>
	          </li>
	        </ul>
	        
	<hr>
	        <ul class="nav flex-column mb-2">
	                    <li class="nav-item">
	            <a class="nav-link" href="#">
	              <span data-feather="map-pin"></span>
	              	찾아오시는 길
	            </a>
	          </li>
	        </ul>
	        
	        
	        
	  </div>
	</nav>
</body>
	
</html>
