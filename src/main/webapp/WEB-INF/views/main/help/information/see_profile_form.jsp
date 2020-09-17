<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보 수정하기</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
</head>
<body>
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('/images/help/help_bg.jpg'); background-attachment: fixed; background-size: cover; background-position: center center;"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container-fluid">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate mb-5 text-center">
					<p class="breadcrumbs mb-0">
						<span class="mr-2"> <a href="/help">Help </a> <i
							class="fa fa-chevron-right"></i> <a href="/help/notice">Notice</a>
						</span>
					</p>
					<h1 class="mb-0 bread">공지사항</h1>
					<br>
					<p class="mb-0 bread">소식과 이벤트를 공지합니다</p>
				</div>
			</div>
		</div>
	</section>
	<div class="hero-wrap pt-5" style="height: auto;">
		<div class="container">
			<div class="row">
				<input id="session_time_out" type="hidden" value="${session_time_out}"/>
				<jsp:include page="../help-sidemenu.jsp"></jsp:include>
				<sec:authorize access="hasRole('ROLE_USER')">
					<jsp:include page="user_profile.jsp" flush="true" />
				</sec:authorize>
				<sec:authorize access="hasRole('ROLE_GUEST')">
					<jsp:include page="guest_profile.jsp" flush="true" />
				</sec:authorize>
				<sec:authorize access="isAnonymous()">
					<script type="text/javascript">
						if (document.getElementById("session_time_out").value != "true") {
							alert("세션 시간이 만료되었습니다. 다시 로그인하세요.");
							location.replace("/see_profile_form?session_time_out=true");
						}
					</script>
				</sec:authorize>
			</div>
		</div>
	</div>

</body>
</html>