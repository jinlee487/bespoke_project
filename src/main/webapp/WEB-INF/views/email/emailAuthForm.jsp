<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>인증하기</title>

<link rel="stylesheet" href="resources/sign_up_form_sources/css/emailAuth_style.css">
</head>
<body onload="authTime()">
	<div class="emailAuth-div">
		<input type="text" class="input-text" name="userAuthCode" id="userAuthCode" placeholder="인증번호"/>
		<input type="hidden" name="serverAuthCode" id="serverAuthCode" value="${authCode}"/>
		<input type="button" class="authbtn" value="인증하기"/><br>
		<div id="authMessage"></div>
	</div>
	<script src="resources/sign_up_form_sources/vendor/jquery/jquery.min.js"></script>
    <script src="resources/sign_up_form_sources/js/main.js"></script>
</body>
</html>