<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<!DOCTYPE html>
<html>

<!-- bootstrap template 사용 -->
<!-- https://themewagon.com/themes/free-bootstrap-4-html5-agency-website-templates-law-firm/ -->

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
  	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  	
	<link rel="stylesheet" href="/login_form_sources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" href="/login_form_sources/css/util.css">
	<link rel="stylesheet" href="/login_form_sources/css/main.css">
	
    <link rel="stylesheet" href="/css/animate.css">
    <link rel="stylesheet" href="/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/css/magnific-popup.css">
    <link rel="stylesheet" href="/css/flaticon.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/bespoke-main.css">

    <link rel="stylesheet" href="/css/header.css">
    <link rel="stylesheet" href="/css/help.css">
    <link rel="stylesheet" href="/css/remote.css">  
    <link rel="stylesheet" href="/css/summernote/summernote-bs4.css">
    <link rel="stylesheet" href="/css/showcase.css">  

    <title>header</title>
  </head>
	
<body>
<!-- top bar -->
<div class="wrap zindex1001">
	<div class="container">
		<div class="row">
			<!-- 전화,메일 -->
			<div class="col-md-6 d-flex align-items-center">
				<p class="mb-0 phone pl-md-2">
					<a href="tel:010-1004-1004" class="mr-2"><span class="fa fa-phone mr-1"></span>010-1004-1004</a> 
					<a href="#"><span class="fa fa-paper-plane mr-1"></span> bespokeofficial1@gmail.com </a>
				</p>
			</div>
			<div class="col-md-6 d-flex justify-content-md-end">
       			<!-- 비로그인시 로그인 링크 노출 -->
       			<sec:authorize access="isAnonymous()">
           		<a data-toggle="modal" data-target="#loginmodal" style="color:white; cursor: pointer;"><b><span class="fa fa-unlock"> 로그인/회원가입</span></b></a>
            	</sec:authorize>
       			
       			<div class="dropdown">
            	<!-- 관리자 로그인 시 관리자 페이지 링크 노출 -->
            	<sec:authorize access="hasRole('ROLE_ADMIN')">
	    			<a href="/admin/admin"><span class="fa fa-bar-chart-o"><b>관리자페이지</b></span></a>
	    		</sec:authorize>
	    		</div>
	    		&nbsp;&nbsp;&nbsp;
				<!-- 로그인 후 권한 부여시 내 정보 아이콘과 함께 웰컴 메시지 출력 -->
				<sec:authorize access="isAuthenticated()">
					<div class="dropdown" style="font-family: 'Do Hyeon', sans-serif;">
						
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"  style="color:white;">
						<span class="fa fa-user-o mr-1"></span><b><sec:authentication property="name"/></b>
						</a>
							<div class="dropdown-menu dropdown-menu-custom info-dropdown-menu">
								<div class="dropdown-header-custom">
									<h5 style="color: white;">${member.name}</h5>
									<c:if test="${member.email ne null}">
									<h6>${member.email}</h6>
									</c:if>
									<c:if test="${member.email eq null}">
									<h6>이메일 미등록</h6>
									</c:if>
								</div>
							<div class="text-center p-t-10 p-b-10">
								<a href="#" class="dropdown-item dropdown-item-custom">1</a>
								<a href="#" class="dropdown-item dropdown-item-custom">2</a>
								<a href="#" class="dropdown-item dropdown-item-custom">3</a>
							</div>
							<div class="logout-custom">
								<a href="/logout" class="btn color-white"><span class="fa fa-lock">&nbsp;로그아웃</span></a>
							</div>
						</div>
					</div>
				</sec:authorize>
			</div>
		</div>
	</div>
</div>
<!-- /top bar end -->	
	  
<!-- nav bar -->
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="/home">Bespoke</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto text-center">
          <li class="nav-item active"><a href="/home" class="nav-link" >홈<br>Home</a></li>
          <li class="nav-item"><a href="/about" class="nav-link" >비스포크란?<br>About Bespoke</a></li>
          <li class="nav-item"><a href="/showcase" class="nav-link">쇼케이스<br>Showcase</a></li>
          <li class="nav-item"><a href="/help" class="nav-link" >고객센터<br>Help</a></li>
        </ul>
      </div>
    </div>
  </nav>
<!-- /nav bar end -->

<!-- 로그인 폼 modal -->
<div class="modal fade" id="loginmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
    <!-- modal body -->
      <div class="modal-body">
	      <div class="limiter">
	      	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	        
			<div class="container-login100">
				<div class="wrap-login100 p-t-30">
				
					<span class="login100-form-title p-b-41">
						BESPOKE
					</span>
					
					<!-- modal-header 라인 -->
					<div class="modal-header">
					</div>
					
					<!-- 입력 / 제출 폼 -->
					<form class="login100-form validate-form p-b-33 p-t-5" action="/login" method="post">
							<div class="wrap-input100 validate-input" data-validate = "Enter username">
								<input class="input100" type="text" name="e-mail" placeholder="이메일">
								<span class="focus-input100" data-placeholder="&#xe82a;"></span>
							</div>
							<div class="wrap-input100 validate-input" data-validate="Enter password">
								<input class="input100" type="password" name="password" placeholder="비밀번호">
								<span class="focus-input100" data-placeholder="&#xe80f;"></span>
							</div>
						<input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}">
							<div class="container-login100-form-btn m-t-32">
								<button class="login100-form-btn">
									Login
								</button>
							</div>
						<br>
						<div align="center">
								<b>SNS 간편 로그인</b><br><br>
								<a href="/oauth2/authorization/google" id="googleloginbtn"><img src="/login_form_sources/social_button/google.png" style="border-radius:15px;"></a>&nbsp;&nbsp;
								<a href="/oauth2/authorization/naver" id="naverloginbtn"><img src="/login_form_sources/social_button/naver.png" style="border-radius:15px;"></a>&nbsp;&nbsp;
								<a href="/oauth2/authorization/kakao" id="kakaologinbtn"><img src="/login_form_sources/social_button/kakao.png	" style="border-radius:15px;"></a>&nbsp;&nbsp;
								<a href="/oauth2/authorization/facebook"><img src="/login_form_sources/social_button/facebook.png" style="border-radius:15px"></a>
						</div>
					</form>
					
				</div>
			</div>
		</div>
      </div>
     <!-- modal-footer 라인 --> 
     <div class="modal-footer">
     </div>
           <div style="text-align: center">아직 회원이 아니신가요?&nbsp;<a href="/sign_up_form">회원가입 하기</a></div>
           <br>
    </div>
  </div>
</div>
<!-- 로그인 폼 modal End -->


</body>
</html>