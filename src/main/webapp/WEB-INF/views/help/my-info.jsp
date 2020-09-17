<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>마이 페이지</title>
</head>
<body>
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
				</div>
			</div>
		</div>
	<div class="hero-wrap pt-5" style="height: auto;">
		<div class="container">
			<div class="row">
				<input id="session_time_out" type="hidden" value="${session_time_out}"/>
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