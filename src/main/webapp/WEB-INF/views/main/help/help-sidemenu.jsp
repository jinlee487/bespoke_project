<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Bespoke Help sidemenu</title>
</head>
<body>
			<!-- side menu -->
			<div class="col-sm-2">
				<div class="sidemenu-custom">
					<h4 class="text-left">
					<b onclick="javascript:location.href='/help'" style="cursor: pointer;">고객센터</b>
					</h4>
				</div>
				
				<div class="list-group list-group-flush text-left sidemenu-item-custom">
						<a href="/help/notice" class="text-black">공지사항</a> 
						<a href="/help/faq" class="text-black">자주 묻는 질문</a> 
						<a href="/help/qna" class="text-black">질문과 답변</a>
						<a href="/help/review" class="text-black">상품후기</a>
				</div>
					<br>
					<a href="#" class="list-group-item list-group-item-action text-center">마이페이지</a>
			<!-- side menu end -->
			</div>
</body>
</html>