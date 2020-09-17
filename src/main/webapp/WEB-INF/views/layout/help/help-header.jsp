<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.1.1">
    <title>고객센터 레이아웃 헤더</title>
<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="/css/dashboard.css" rel="stylesheet">

<!-- <link rel="stylesheet" href="/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/bootstrap/css/bootstrap-reboot.css">
<link rel="stylesheet" href="/bootstrap/css/bootstrap-reboot.min.css">
<link rel="stylesheet" href="/bootstrap/css/bootstrap-grid.css">
<link rel="stylesheet" href="/bootstrap/css/bootstrap-grid.min.css"> -->

</head>
<body>
	<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
	  <a class="navbar-brand col-md-3 col-lg-2 mr-0 px-3" href="/home">Bespoke</a>
	  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-toggle="collapse" data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	 
	  <ul class="navbar-nav px-3">
	    <li class="nav-item text-nowrap">
	    <!-- 비로그인시 로그인 링크 노출 -->
       			<sec:authorize access="isAnonymous()">
           		<a href="/login" style="color:white; cursor: pointer;"><b><span data-feather="log-in"></span> 로그인/회원가입</b></a>
            	</sec:authorize>
		<!-- 로그인 시 -->
				<sec:authorize access="isAuthenticated()">
           		<a href="/logout" class="text-white"><b><span data-feather="log-out"></span>로그아웃</b></a>
            	</sec:authorize>
<%--            		<b class="text-white text-right"><sec:authentication property="name"/></b> --%>
	    </li>
	  </ul>
	</nav>
</body>
</html>