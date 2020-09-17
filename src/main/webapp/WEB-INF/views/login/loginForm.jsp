<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BesPoke : 로그인</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="/login_form_sources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" href="/login_form_sources/css/util.css">
	<link rel="stylesheet" href="/login_form_sources/css/main.css">
    <!-- Font Icon -->
    <link rel="stylesheet" href="/sign_up_form_sources/fonts/material-icon/css/material-design-iconic-font.min.css">
    <!-- Main css -->
    <link rel="stylesheet" href="/sign_up_form_sources/css/style.css">

</head>
<body>
<div class="SignUpSuccess" style="display:none">${SignUpSuccess}</div>    

    <div class="main">

        <section class="signup">
            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">
                    <!-- 입력 / 제출 폼 -->
					<form class="login100-form validate-form p-b-33 p-t-5" action="/login" method="post">
						<h2 class="form-title">
							<span id ="SignUpSuccess" style="display:none">회원 가입에 성공하였습니다.</span><br>
							로그인</h2>
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
                    <p class="loginhere">
                       	비밀번호를 잊어버리셨나요? <a href="/search_pw_form" class="loginhere-link">비밀번호 찾기</a><br>
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
    <script src="/sign_up_form_sources/js/main.js"></script>
    <script src="/sign_up_form_sources/js/sign_up_check.js"></script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>