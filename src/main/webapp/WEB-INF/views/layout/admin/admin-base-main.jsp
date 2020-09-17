<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
    <title>::: Bespoke 관리자 페이지</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
</head>
<body>
	<section class="content">
		<tiles:insertAttribute name="header"/> <!--  /WEB-INF/views/common/layout/header.jsp -->
		<tiles:insertAttribute name="sidemenu"/> <!--  /WEB-INF/views/common/layout/sidemenu.jsp -->
		<tiles:insertAttribute name="body"/> <!-- body -->
		<tiles:insertAttribute name="footer"/> <!-- /WEB-INF/views/common/layout/footer.jsp -->
    </section>
</body>
</html>