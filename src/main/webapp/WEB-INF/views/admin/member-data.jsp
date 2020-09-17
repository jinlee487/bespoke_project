<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Admin - Member Data Form </title>
	    <script src="/js/jquery-3.2.1.min.js"></script>
	    <script src="/js/bespoke-admin-memberdata.js"></script>
	</head>

	<body>
	  	<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
	    	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
	       	<h1 class="h2">웹 회원 정보</h1>
	    	</div>
			<div class="container" role="main">
				<form name="form" id="cDataForm" role="form" method="post" action="/admin/memberUpdate">
				  	<div class="form-row">
				    	<div class="form-group col-lg-2 col-sm-3">
				      		<label for="id">웹 회원 번호</label>
					  		<input type="text" class="form-control" id="id"  name="id" placeholder="회원 ID" readonly value="${cData.id}" style="text-align: center; padding-right:1px">
				     	</div>

				    	<div class="form-group col-lg-6 col-sm-5">
				     		<label for="email">e-mail(ID)</label>
							<input type="email" class="form-control" id="email" name="email" value="${cData.email}" required>
						</div>
		
				    	<div class="form-group col-lg-4 col-sm-4">
				     		<label for="name">성함</label>
							<input type="text" class="form-control" id="name" name="name" value="${cData.name}" required>
							
				     	</div>		
					</div>
					<!--연락처 -->
				  <div class="form-row">
				    	<div class="form-group col-lg-4 col-md-4 col-sm-6">
		 					<label for="phone_number">연락처</label>
		 					<div class="input-group">
						  		<div class="input-group-prepend">
						    		<c:if test="${fn:length(cData.phone_number) >= 10}">
										<a class="input-group-text" href="tel:${cData.phone_number}"><i class="fa fa-mobile"> 연락처</i></a>
									</c:if>
						    		<c:if test="${fn:length(cData.phone_number) < 10}">
										<span class="input-group-text" ><i class="fa fa-mobile"> 연락처</i></span>
									</c:if>
						  		</div>
			  					<input type="text"class="form-control" name="phone_number"  value="${cData.phone_number}">
							</div>
				    	</div>

				    	<div class="form-group col-lg-4 col-md-4 col-sm-6">
					      	<label for="c_id">주문 고객 번호</label>
					      	<div class="input-group">
					      		<input type="text" class="form-control" name="c_id" id="c_id" readonly value="${cData.c_id}">
							  	<div class="input-group-append">
				      				<button type="button" class="form-control btn btn-primary" id="CustomerSBtn"><i class="fa fa-link">연동</i></button>
							  	</div>
							</div>
				    	</div>
					  	<div class="form-group col-lg-4 col-md-4 col-sm-6">
			 				<label for="birth">생일</label>
							<input type="date" class="form-control" name="birth" id="birth" value="${cData.birth}">
						</div>
				    	<div class="form-group col-lg-3 col-md-4 col-sm-6">
					      	<label for="created_date">회원 가입일</label>  
					      	<input type="text" class="form-control" name="created_date" id="created_date" value="<tf:formatDateTime value="${cData.created_date}" pattern="yyyy-MM-dd" />" disabled>
				    	</div>
				    	<div class="form-group col-lg-3 col-md-4 col-sm-6">
					      	<label for="role">권한</label>
					      	<%-- <input type="text" class="form-control" name="role" id="role" value="${cData.role}"> --%>
					         <select class="form-control" name="role" id="role" >
								<option value='ROLE_ADMIN' <c:out value="${cData.role eq 'ROLE_ADMIN'  ? 'selected':'' }"/>>관리자</option>
								<option value='ROLE_GUEST' <c:out value="${cData.role eq 'ROLE_GUEST'  ? 'selected':'' }"/>>홈페이지 회원</option>
								<option value='ROLE_USER' <c:out value="${cData.role eq 'ROLE_USER' ? 'selected':'' }"/>>구매 고객</option>
								<option value='ROLE_MANEGER' <c:out value="${cData.role eq 'ROLE_MANEGER' ? 'selected':'' }"/>>매니저</option>
							</select>
				    	</div>
				    	<div class="form-group col-lg-3 col-md-4 col-sm-6">
					      	<label for="request">인증 요청</label>
					      	<select class="form-control" name="request" id="request" >
								<option value='F' <c:out value="${cData.request eq 'F' ? 'selected':'' }"/>>---</option>
								<option value='T' <c:out value="${cData.request eq 'T' ? 'selected':'' }"/>>인증 요청 중</option>
								<option value='P' <c:out value="${cData.request eq 'P' ? 'selected':'' }"/>>인증 승인</option>
								<option value='E' <c:out value="${cData.request eq 'E' ? 'selected':'' }"/>>인증 취소</option>
							</select>
				    	</div>
					</div>
				
					<div class="form-row">
				    	<div class="form-group col-lg-4 col-sm-6" >
							<label for="c_photo_file_img">회원 사진</label>
							<img class=""  id="c_photo_file_img" src="${cData.picture}"  width="100%"  class="img-thumbnail">
				    	</div>

						<div class="form-group col-lg-4 col-sm-6 col-auto-mr ">
				      	<div class="input-group">
								<c:if test="${isNew !=true}">
									<div class="input-group-prepend">
								    	<span class="input-group-text" ><i class="fa fa-clock">최종 수정일</i></span>
								  	</div>
							      <input type="text" class="form-control" name="modified_date" id="modified_date" value="<tf:formatDateTime value="${cData.modified_date}" pattern="yyyy-MM-dd" />" disabled="disabled">
								</c:if>
							</div>
				    	</div>
				    	<div class="form-group col-lg-4 col-sm-6">
					      <button type="submit" class="btn btn-outline-primary pull-right mr-1" id="submitbtn" disabled>저장</button>
					      <button type="reset" class="btn btn-outline-primary pull-right mr-1" id="resetbtn"  disabled>취소</button>
				   	</div>
					</div>
				</form>
			</div>
			<hr>
			<c:if test="${message != null}">
				<div class="alert alert-primary alert-dismissable show fade" id="message" role="alert">
			 			 => ${message}
	 			</div>
			</c:if>
			<hr>
			<div class="row justify-content-between">
			   	<button type="button" class="btn btn-outline-primary ml-3" onClick ="javascript:window.history.back();"><i class="fa fa-chevron-left" ></i> 이전 페이지 </button>
			     <c:if test="${cData.c_id != null }">
					<button type="button" class="btn btn-outline-primary mr-3" onClick ="location.href='/admin/customerData?c_id=${cData.c_id}'" id="customerBtn"> 구매 고객 정보 <i class="fa fa-chevron-right" ></i></button>
				</c:if>
			</div>
		</main>
		
		
		
	</body>
</html>