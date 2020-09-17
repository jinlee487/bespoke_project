<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BesPoke : 비밀번호 찾기</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/login_form_sources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" href="/login_form_sources/css/util.css">
	<link rel="stylesheet" href="/login_form_sources/css/main.css">
    <!-- Font Icon -->
    <link rel="stylesheet" href="/sign_up_form_sources/fonts/material-icon/css/material-design-iconic-font.min.css">
    <!-- Main css -->
    <link rel="stylesheet" href="/sign_up_form_sources/css/style.css">
	<link rel="stylesheet" href="/login_form_sources/css/search_pw_form_css.css">
    

</head>
<body id = "search-success">

    <div class="main">

        <section class="signup">
            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">                
                    <!-- 입력 / 제출 폼 -->
					<form class="login100-form validate-form p-b-33 p-t-5" action="javascript:void(0);" method="post">
						<h2 class="form-title">						
							<span id = "ini">비밀번호 찾기<br>찾으시려는 이메일을 입력해주세요.</span><br>
							<span class="hidden" id = "success">회원님의 이메일에 임시 비밀번호를 <br>전송하였습니다.<br>임시 비밀번호로 로그인하여 주세요.<br> 
																<a href="/loginForm" class="loginhere-link">로그인하러 가기</a></span><br>
							<span class="hidden" id = "fail">존재하지 않는 이메일입니다. <br> 다시 시도 해주세요.</span><br>	
							<button class="spinner-border hidden" id="spinner"></button>						
						</h2> 
							<div class="wrap-input100 validate-input" data-validate = "Enter username">
								<input class="input100" type="text" name="e-mail" id="email" placeholder="이메일">
								<span class="focus-input100" data-placeholder="&#xe82a;"></span>
							</div>
						<input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}">
							<div class="container-login100-form-btn m-t-32">
								<button class="login100-form-btn" id="next_btn">
									비밀번호 찾기
								</button>
							</div>
						<br>
					</form>
                    <p class="loginhere">
                       	아이디가 이미 있으세요 ? <a href="/loginForm" class="loginhere-link">로그인하러 가기</a><br>
                       	아직 회원이 아니신가요?&nbsp;<a href="/sign_up_form" class="loginhere-link">회원가입 하기</a><br>
                       	<a class="loginhere-link" href="/home">홈페이지로 돌아가기&nbsp;<i class="fa fa-home"></i></a>             	
                    </p>
                </div>
            </div>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            
        </section>

    </div>

    <!-- JS -->
    <script src="/sign_up_form_sources/vendor/jquery/jquery.min.js"></script>
    <script src="/login_form_sources/js/search_pw.js"></script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>