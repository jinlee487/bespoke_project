<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BesPoke : 회원가입</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Font Icon -->
    <link rel="stylesheet" href="/sign_up_form_sources/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="/sign_up_form_sources/css/style.css">
</head>
<body>

    <div class="main">

        <section class="signup">
            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">
                    <form action="/sign_up" method="POST" id="signup-form" class="signup-form">
                        <h2 class="form-title">회원가입</h2>
                        <div class="form-group">
                            <input type="email" class="form-input" name="email" id="email" placeholder="이메일"/>
                            <div class="embtn-div"><input class="embtn" id="embtn" type="button" value="인증번호 전송"/></div>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-input" name="password" id="password" placeholder="비밀번호"/>
                            <span toggle="#password" class="zmdi zmdi-eye-off field-icon toggle-password"></span>
                            <div id="password_message" class="check-message"></div>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-input" name="re_password" id="re_password" placeholder="비밀번호 확인"/>
                            <div id="re_password_message" class="check-message"></div>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-input" name="name" id="name" placeholder="이름"/>
                            <div id="name_message" class="check-message"></div>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-input" name="phone_number" id="phone_number" placeholder="전화번호 ( ' - ' 없이 입력하세요)"/>
                            <div id="phone_number_message" class="check-message"></div>
                        </div>
                        <div class="form-group">
                            <label class="label">성별</label>
                            <div class="p-t-6 p-b-2">
                                <label class="radio-container m-r-45">남자
                                    <input type="radio" checked="checked" name="gender" value="M">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">여자
                                    <input type="radio" name="gender" value="F">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                        	<label class="label m-b-12">생년월일</label>
                            <input type="date" class="form-input" name="birthDay" id="birthDay"/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-input" name="c_id" id="c_id" placeholder="회원번호"/>
                            <input type="hidden" class="form-input" name="request" id="request" value='F' placeholder="인증 요청"/>
                        </div>
                        <div class="form-group">
                            <input type="submit" name="submit" id="submit" class="form-submit" value="회원가입" onclick="return sign_up_check()"/>
                        </div>
                    </form>
                    <p class="loginhere">
                       	아이디가 이미 있으세요 ? <a href="/loginForm" class="loginhere-link">로그인하러 가기</a><br>
                       	<a class="loginhere-link" href="/home">홈페이지로 돌아가기&nbsp;<i class="fa fa-home"></i></a>             	 	
                    </p>
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="/sign_up_form_sources/vendor/jquery/jquery.min.js"></script>
    <script src="/sign_up_form_sources/js/main.js"></script>
    <script src="/sign_up_form_sources/js/sign_up_check.js"></script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>