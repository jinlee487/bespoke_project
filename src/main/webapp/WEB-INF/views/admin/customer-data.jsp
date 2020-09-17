<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Admin - Customer Data Table </title>
	    <script src="/js/jquery-3.2.1.min.js"></script>
	    <script src="/js/bespoke-admin-customerdata.js"></script>
	</head>

	<body>
	  	<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
	    	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">

				<c:if test="${isNew !=true}">
		       	<h1 class="h2">구매 고객 상세 정보</h1>
	       		<div class="text-right">
						<button type="button" class="btn btn-outline-primary mr-3" onClick ="location.href='/admin/customerMeasure?c_id=${cData.c_id}'" id="customerSizeBtn">
						고객 치수(${measureCount})</button>
						<button type="button" class="btn btn-outline-primary mr-3" onClick ="location.href='/admin/customerOrder?c_id=${cData.c_id}'" id="customerOrderBtn">
						고객 주문 정보(${orderCount})</button>
		       	</div>
				</c:if>
				<c:if test="${isNew ==true}">
		       	<h1 class="h2">신규 고객 등록</h1>
				</c:if>
				
			<div class="row justify-content-between">
			      
			      
			</div>
				
	       	<div class="btn-toolbar mb-2 mb-md-0">
					<c:if test="${isNew !=true}">
						<button type="button" id="newCustomerBtn" class="btn btn-outline-primary form-inline mr-2" onClick ="location.href='/admin/addCustomer'"><i class ="fa fa-user-plus"></i> 신규 고객 등록</button>
					</c:if>
	       	</div>
	    	</div>
			<div class="container" role="main">
				<c:if test="${isNew !=true}">
					<form name="form" id="cDataForm" role="form" method="post" action="/admin/customerUpdate" enctype="multipart/form-data">
				</c:if>
				<c:if test="${isNew ==true}">
					<form ="was-validated" name="form" id="cDataForm" role="form" method="post" action="/admin/customerInsert" enctype="multipart/form-data">
				</c:if>
	
				  	<div class="form-row">
				    	<div class="form-group col-lg-4 col-sm-8">
				      	<label for="c_id">고객 번호</label>
					  		<input type="text" class="form-control" id="c_id"  name="c_id" placeholder="고객 번호"  readonly value="${cData.c_id}"style="text-align: center; padding-right:1px">
				     	</div>
		
						<!--  그룹 셀렉트 박스 테스트 -->
				    	<div class="form-group col-lg-3 col-sm-4">
					      <label for="inputGroup">그룹</label>
				      	<div class="input-group">
					      	<select class="form-control" id="inputGroup" >
									<c:forEach  items="${groupList}" var="i">
										<c:choose>
											<c:when test="${i.c_group==cData.c_group}">
								        		<option value="${i.c_group}" selected>${i.c_group} - &#40;${i.c_count}&#41; </option>
											</c:when>
											<c:otherwise>
								        		<option value="${i.c_group}">${i.c_group} - &#40;${i.c_count}&#41; </option>
											</c:otherwise>
										</c:choose>
									</c:forEach>
					      	</select>
					      	<input type="text" class="form-control" id="c_group" name="c_group" placeholder="그룹추가"  value="${cData.c_group}"style="text-align: center; padding-right:1px">
				    		</div>
				    	</div>
		
				    	<div class="form-group col-lg-3 col-sm-8">
				     		<label for="c_name">성함</label>
							<input type="text"class="form-control" id="c_name" name="c_name"  value="${cData.c_name}" required>
							<div class="invalid-feedback">
						    	고객 성함을 입력해 주세요.
						  	</div>
				     	</div>
		
				    	<div class="form-group col-lg-2 col-sm-4 ">
				     		<label for="c_name">직함</label>
							<input type="text"class="form-control" name="title"  value="${cData.title}">
				     	</div>
					</div>
					<hr>
					<!--연락처 -->
				  <div class="form-row">
				    	<div class="form-group col-lg-3 col-sm-6">
		 					<div class="input-group">
						  		<div class="input-group-prepend">
						    		<c:if test="${fn:length(cData.cp_no) >= 10}">
										<a class="input-group-text " href="tel:${cData.cp_no}"><i class="fa fa-mobile"> 휴대폰</i></a>
									</c:if>
						    		<c:if test="${fn:length(cData.cp_no) < 10}">
										<span class="input-group-text" ><i class="fa fa-mobile"> 휴대폰</i></span>
									</c:if>
						  		</div>
			  					<input type="text"class="form-control" name="cp_no"  value="${cData.cp_no}">
							</div>
				    	</div>
				    	<div class="form-group col-lg-3 col-sm-6">
		 					<div class="input-group">
						  		<div class="input-group-prepend">
						    		<c:if test="${fn:length(cData.hp_no) >= 8}">
										<a class="input-group-text " href="tel:${cData.hp_no}"><i class="fa fa-home"> 집전화</i></a>
									</c:if>
						    		<c:if test="${fn:length(cData.hp_no) < 8}">
							    		<span class="input-group-text" ><i class="fa fa-home"> 집전화</i></span>
									</c:if>
						  		</div>
			  					<input type="text"class="form-control" name="hp_no"  value="${cData.hp_no}">
							</div>
				    	</div>
				    	<div class="form-group col-lg-3 col-sm-6">
		 					<div class="input-group">
						  		<div class="input-group-prepend">
						    		<c:if test="${fn:length(cData.bzp_no) >= 8}">
										<a class="input-group-text " href="tel:${cData.bzp_no}"><i class="fa fa-building"> 사무실</i></a>
									</c:if>
						    		<c:if test="${fn:length(cData.bzp_no) < 8}">
							    		<span class="input-group-text" ><i class="fa fa-building"> 사무실</i></span>
									</c:if>
						  		</div>
			  					<input type="text"class="form-control" name="bzp_no"  value="${cData.bzp_no}">
							</div>
				    	</div>
				    	<div class="form-group col-lg-3 col-sm-6">
		 					<div class="input-group">
						  		<div class="input-group-prepend">
						    		<span class="input-group-text"><i class="fa fa-fax"> FAX</i></span>
						  		</div>
			  					<input type="text"class="form-control" name="fax_no"  value="${cData.fax_no}">
							</div>
				    	</div>
					</div>
					<!--  주소 검색 -->
				  	<div class="form-row">
				    	<div class="form-group col-lg-10">
				      	<label for="home_adrs">자택 주소</label>
				      	<div class="input-group">
							  	<div class="input-group-prepend">
							    	<span class="input-group-text" ><i class="fa fa-home"></i></span>
							  	</div>
				  				<input type="text"class="form-control bespoke-left" name="home_adrs" id="home_adrs"  readonly value="${cData.home_adrs} ">
				  				<input type="text"class="form-control bespoke-left" name="home_adrsd" id="home_adrsd" value="${cData.home_adrsd} ">
								<div class="input-group-append">
					      		<button type="button" class="form-control btn btn-primary"  id="homeAdrsBtn" ><i class="fa fa-search"></i></button>
								</div>
							</div>
				     </div>
					  <div class="form-group col-lg-2 col-md-4 col-sm-6">
					     	<label for="home_zipcode">우편번호</label>
							<input type="text"class="form-control" name="home_zipcode" id="home_zipcode" readonly value="${cData.home_zipcode}">
					  </div>
					</div>
		
				  <div class="form-row">
				    <div class="form-group col-lg-10 col-md-12">
				      	<label for="home_adrs">사무실 주소</label>
				      	<div class="input-group">
							  	<div class="input-group-prepend">
							    	<span class="input-group-text" ><i class="fa fa-building"></i></span>
							  	</div>
				  				<input type="text"class="form-control bespoke-left" name="bz_adrs" id="bz_adrs"  readonly value="${cData.bz_adrs} ">
				  				<input type="text"class="form-control bespoke-left" name="bz_adrsd"  id="bz_adrsd"value="${cData.bz_adrsd} ">
								<div class="input-group-append">
					      		<button type="button" class="form-control btn btn-primary" id="bzAdrsBtn" ><i class="fa fa-search"></i></button>
								</div>
							</div>
				     </div>
					  <div class="form-group col-lg-2 col-md-4 col-sm-6">
					     	<label for="home_zipcode">우편번호</label>
							<input type="text"class="form-control" name="bz_zipcode"  id="bz_zipcode" readonly value="${cData.bz_zipcode}">
					  </div>
					  <div class="form-group col-lg-9 col-md-5">
				      <label for="company">회사명</label>
				      <input type="text" class="form-control" name="company" id="company" value="${cData.company}">
				    </div>
				    <div class="form-group col-lg-3 col-md-3" >
				      <label for="mail">DM 수신처</label>
				      <div class="input-group bespoke-center">
					      <div class="form-check form-check-inline">
							  <input class="form-check-input" type="radio" name="mail" id="mailRadio1" value="0" <c:out value="${cData.mail eq 0 ? ' checked=checked':'' }"/>>
							  <label class="form-check-label" for="mailRadio1"><i class="fa fa-home">자택</i></label>
							</div>
							<div class="form-check form-check-inline">
							  <input class="form-check-input" type="radio" name="mail" id="mailRadio2" value="1" <c:out value="${cData.mail eq 1 ? ' checked=checked':'' }"/>>
							  <label class="form-check-label" for="mailRadio2"><i class="fa fa-building">사무실</i></label>
							</div>
					    </div>
					  </div>
					</div>
		  			
		  			<div class="form-row">
				    	<div class="form-group col-sm-6">
				      	<label for="email">E-mail</label>
				      	<div class="input-group">
				      		<input type="email" class="form-control" name="email" id="email" value="${cData.email}">
							  	<div class="input-group-append">
				      			<button type="button" class="form-control btn btn-primary" id="userCertiBtn">회원 인증</button>
							  	</div>
							</div>
				    	</div>
				    	<div class="form-group col-sm-6">
				      	<label for="website">웹사이트</label>
				      	<input type="url" class="form-control" name="website"  id="website" value="${cData.website}">
				    	</div>
				   </div>
				   
				   <div class="form-row">
					   <div class="form-group col-lg-3 col-md-4 col-sm-6">
			 				<label for="birth_day">생일</label>
							<input type="date" class="form-control" name="birth_day"  id="birth_day" value="${cData.birth_day}">
						</div>
						<div class="form-group col-lg-3 col-md-4 col-sm-6">
			 				<label for="birth_day"></label>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" name="birth_lunar_b" id="birth_lunar_b" value="0" <c:out value="${cData.birth_lunar_b eq 1 ? ' checked=checked':'' }"/>>
								<label class="form-check-label" for="birth_lunar_b"><i class="fa fa-moon-o"></i> 음력</label>
							</div>
						</div>
					   <div class="form-group col-lg-3 col-md-4 col-sm-6" >
			 				<label for="wedding_day">결혼기념일</label>
							<input type="date" class="form-control" name="wedding_day" id="wedding_day" value="${cData.wedding_day}">
						</div>
				    	<div class="form-group col-lg-3 col-md-4 col-sm-6">
				      	<label for="c_age">나이대</label>
				      	<input type="text" class="form-control" name="c_age" id="c_age" value="${cData.c_age}">
				    	</div>
				    	<div class="form-group col-lg-3 col-md-4 col-sm-6">
				      	<label for="c_body">체형</label>
				      	<input type="text" class="form-control" name="c_body" id="c_body" value="${cData.c_body}">
				    	</div>
				    	<div class="form-group col-lg-3 col-md-4 col-sm-6">
				      	<label for="c_feature">특징</label>
				      	<input type="text" class="form-control" name="c_feature" id="c_feature" value="${cData.c_feature}">
				    	</div>
				    	<div class="form-group col-lg-3 col-md-4 col-sm-6">
					      <label for="come_route">방문 경로</label>
				      	<input type="text" class="form-control" name="come_route" id="come_route" value="${cData.come_route}">
				    	</div>
				    	<div class="form-group col-lg-3 col-md-4 col-sm-6">
				      	<label for="firstvisit_day">최초 방문일</label>
				      	<input type="date" class="form-control" name="firstvisit_day" id="firstvisit_day"  value="${cData.firstvisit_day}">
				    	</div>
				    	<div class="form-group col-lg-3 col-md-4 col-sm-6">
				      	<label for="manager_id">담당자</label>
				      	<input type="text" class="form-control" name="manager_id" id="manager_id" value="${cData.manager_id}">
				    	</div>
					</div>
		
			    	<div class="form-group">
			      	<label for="memo">메모</label>
			      	<textarea class="form-control"  name="memo" id="memo" rows="4" >${cData.memo}</textarea>
			    	</div>
				
					<div class="form-row">
				    	<div class="col-sm-4 col-lg-2">
							<img class=""  id="c_photo_file_img" src="${cData.c_photo_file}"  width="100%"  class="img-thumbnail">
							<input type="text" class="form-control-file border" name="c_photo_file" id="c_photo_file" value="${cData.c_photo_file}" hidden ="false">
				    	</div>
				    	<div class="form-group col-sm-8 col-lg-5">
							<label for="c_photo_filef">고객 사진</label>
					      <input type="file" class="form-control-file border" name="c_photo_filef" id="c_photo_filef" accept="image/*" >
				    	</div>
				    	<div class="form-group col-lg-5">
					      <label for="projectf">치수 측정 파일</label>
							<input type="text" class="form-control-file border" name="project" id="project" value="${cData.project}" hidden ="false">
					      <input type="file" class="form-control-file border"  name="projectf" id="projectf" accept=".prj" >
				    	</div>
		   		</div>
		
					<div class="form-row">
						<div class="form-group col-lg-4 col-md-6 col-auto-mr ">
				      	<div class="input-group">
								<c:if test="${isNew !=true}">
									<div class="input-group-prepend">
								    	<span class="input-group-text" ><i class="fa fa-clock">최종 수정일</i></span>
								  	</div>
							      <input type="text" class="form-control" name="last_edit_day"  id="last_edit_day"  readonly value="${cData.last_edit_day}">
								</c:if>
							</div>
				    	</div>
				    	<div class="form-group col-lg-8 col-md-6">
					      <button type="submit" class="btn btn-outline-primary pull-right mr-1" id="submitbtn" disabled>저장</button>
					      <button type="reset" class="btn btn-outline-primary pull-right mr-1" id="resetbtn"  disabled>취소</button>
				   	</div>
					</div>
				</form>
			</div>
			<hr>

			<div class="row justify-content-between">
			   	<button type="button" class="btn btn-outline-primary ml-3" onClick ="javascript:window.history.back();"><i class="fa fa-chevron-left" ></i> 이전 페이지 </button>
			      <c:if test="${cData.c_id != null }">
						<button type="button" class="btn btn-outline-primary mr-3" onClick ="location.href='/admin/customerSize?c_id=${cData.c_id}'" id="customerSizeBtn"> 고객 치수 <i class="fa fa-chevron-right" ></i></button>
			      </c:if>
			      <c:if test="${cData.c_id != null }">
						<button type="button" class="btn btn-outline-primary mr-3" onClick ="location.href='/admin/customerOrder?c_id=${cData.c_id}'" id="customerOrderBtn"> 고객 주문 정보 <i class="fa fa-chevron-right" ></i></button>
			      </c:if>
			</div>
			<hr>
			<c:if test="${message != null}">
				<div class="alert alert-primary alert-dismissable show fade" id="message" role="alert">
			 			 => ${message}
	 			</div>
			</c:if>
		</main>
	</body>
</html>