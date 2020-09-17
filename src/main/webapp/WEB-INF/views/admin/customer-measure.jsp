<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
	<title>치수 페이지</title>
    <script src="/js/jquery-3.2.1.min.js"></script>
    <script src="/js/bespoke-admin.js"></script>
    <script src="/js/bespoke-admin-measurement.js"></script>
    <script src="/js/bespoke-admin-measurement-api.js"></script>
</head>

<body>
    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
	        <h1 class="h2"><c:if test="${cData.c_name != null}">고객명 : ${cData.c_name} / 고객번호 : ${cData.c_id}
	        </c:if>
	        </h1>
      </div>
      
      
<!-- 치수 정보 선택 콤보박스 및 치수 출력 영역 -->
<div class="row">
	
   	<div class="col-lg-6 jumbotron" style="border:1px solid black;margin-right:-1px;">


	<div id="combo1Defaulthidden" style="display:none; height:61px; margin:0px;">
	   	<div class="row" id="combo1">
			<div class="col-8 text-center align-self-center">
				<h3>치수를 입력하세요</h3>
			</div>   
			<div class="btn-group btn-group-md text-center col-4">
				<button type="button" class="btn btn-outline-dark" id="cancel"">취소</button>
			</div>
		</div>
	</div>
	
	<div id="combo1DefaultShow">
	<!-- 콤보박스1 -->
   	검색된 치수 총 ${measureCount}건
	   	<div class="row">
	   		<div class="col-8">
			   	<select class="form-control" name="measure1" id="measure1">
					<%-- <option id="blankoption">치수를 선택해 주세요</option> --%>
					<c:forEach items="${measureList}" var="measureList">
					  <option id="option1" value="<c:out value="${measureList.mid}"/>">
					  치수번호
 : <c:out value="${measureList.mid}"/>&nbsp;&nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;<c:out value="${measureList.m_day}" />
					  </option>
					</c:forEach>
				</select>
			</div>
			<div class="btn-group btn-group-md text-center col-4">
				<button type="button" id="add" class="btn btn-outline-dark" value="${cData.c_id}">치수 추가</button>
			</div>
		</div>
    </div>
	
	<hr>
	
    <div id="measureDetail1">
	<!-- 출력영역 -->
	</div>
   	</div>
   	<!-- 콤보박스1 끝 -->
   	
   	
   	<!-- 콤보박스2 -->
   	<div class="col-lg-6 jumbotron" style="border:1px solid black;">
   	검색된 치수 총 ${measureCount}건
   	<select class="form-control" name="measure2" id="measure2">
	  <c:forEach items="${measureList}" var="measureList">
	  <option value="<c:out value="${measureList.mid}"/>">
	  치수번호
 : <c:out value="${measureList.mid}"/>&nbsp;&nbsp;&nbsp;&nbsp;체촌일시 : <c:out value="${measureList.m_day}"/>
	  </option>
	  </c:forEach>
	</select>
   	<hr>
	<div id="measureDetail2">
	<!-- 출력영역 -->
	</div>
   	</div>
   	<!-- 콤보박스 2 끝 -->
   	
   	
</div>
<!-- 치수 정보 선택 콤보박스 및 치수 출력 영역 끝 -->
 
 
 
 
 		</main>
	</body>
</html>
