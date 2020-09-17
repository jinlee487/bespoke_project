<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix = "fn"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
	<head>
		<title>Admin - ShowCase Data Table </title>
	    <script src="/js/jquery-3.2.1.min.js"></script>
	    <script src="/js/bespoke-admin-showcasedata.js"></script>
		  
	</head>

	<body>
	  	<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
	    	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">

		       	<h1 class="h2">쇼케이스  정보</h1>
				<c:if test="${message != null}">
					<div class="alert alert-primary alert-dismissable show fade" id="message" role="alert">
				 			 => ${message}
		 			</div>
				</c:if>
				
	       	<div class="btn-toolbar mb-2 mb-md-0">
				<button type="button" id="newShowcaseBtn" class="btn btn-outline-primary form-inline mr-2" onClick ="location.href='/admin/addShowcase'"><i class ="fa fa-briefcase"></i> 신규 쇼케이스 등록</button>
	       	</div>
	    	</div>
	    	<br>				    
			<div class="container" role="main">
				<form name="form" id="sDataForm" role="form" method="post" action="/admin/showcaseUpdate" enctype="multipart/form-data">
					  	
				  <div class="form-row">
				 	   <div class="form-group col-lg-12 col-sm-12">
						    <label for="샤싣">제목</label>
							<input type="text"class="form-control" name="title" id="title" value="${sData.title}">
				    	</div>
					</div>					
					<div class="form-row">
						<div class="form-group col-lg-4 col-sm-12">
					      	<label for="id">쇼케이스 번호</label>
							<input type="text" class="form-control" name="id" placeholder="글 번호"  readonly value="${sData.id}"style="text-align: center; padding-right:1px">
				     	</div>
				 		<div class="form-group col-lg-8 col-sm-12">
				     		<label for="name">작성사</label>
							<input type="text"class="form-control" name="author"  value="${sData.author}">
				     	</div>
			     	</div>
				  <br>				    
					<hr>
				  <br>	
			     	<div class="form-row">
				    	<div class="form-group col-lg-4 col-sm-12">
					    <label for="category">카테고리</label>
				      	<div class="input-group">
					      	<select class="form-control" id="inputCategory" >
									<c:forEach  items="${category}" var="i">
										<c:choose>
											<c:when test="${i.category==sData.category}">
								        		<option value="${i.category}" selected>${i.category}</option>
											</c:when>
											<c:otherwise>
								        		<option value="${i.category}">${i.category}</option>
											</c:otherwise>
										</c:choose>
									</c:forEach>
					      	</select>
					      	<input type="text" class="form-control" id="category" name="category" placeholder="카테고리 추가"  value="${sData.category}" style="text-align: center; padding-right:1px">
				    		</div>
				    	</div>			    	
				    	<div class="form-group col-lg-4 col-sm-12">
					    <label for="work">Work</label>
				      	<div class="input-group">
					      	<select class="form-control" id="inputWork" >
									<c:forEach  items="${workList}" var="i">
										<c:choose>
											<c:when test="${i.work==sData.work}">
								        		<option value="${i.work}" selected>${i.work}</option>
											</c:when>
											<c:otherwise>
								        		<option value="${i.work}">${i.work}</option>
											</c:otherwise>
										</c:choose>
									</c:forEach>
					      	</select>
					      	<input type="text" class="form-control" id="work" name="work" value="${sData.work}" style="text-align: center; padding-right:1px" readonly="readonly">
				    		</div>
				    	</div>
				    	<div class="form-group col-lg-4 col-sm-12">
					    <label for="brand">brand</label>
				      	<div class="input-group">
					      	<select class="form-control" id="inputBrand" >
									<c:forEach  items="${brandList}" var="i">
										<c:choose>
											<c:when test="${i.brand==sData.brand}">
								        		<option value="${i.brand}" selected>${i.brand}</option>  
											</c:when>
											<c:otherwise>
								        		<option value="${i.brand}">${i.brand}</option>
											</c:otherwise>
										</c:choose>
									</c:forEach>
					      	</select>
					      	<input type="text" class="form-control" id="brand" name="brand" value="${sData.brand}" style="text-align: center; padding-right:1px" readonly="readonly">
				    		</div>
				    	</div>
				    </div>
				    <div class="form-row">
				    	<div class="form-group col-lg-12 col-sm-12">
					    <label for="tags">tags</label>
				      	<div class="input-group">
					      	<input type="checkbox" class="form-control" name="tags" value="" disabled="disabled">
					      	<input type="checkbox" class="form-control" name="tags" value="" disabled="disabled">
					      	<input type="checkbox" class="form-control" name="tags" value="" disabled="disabled">
					      	
				    		</div>
				    	</div>
				    </div>
				  <br>				    
					<hr>
				  <br>					
					<div class="form-row">
					   <div class="form-group col-lg-4 col-md-4 col-sm-6">
			 				<label for="createdDate">최초 작성일</label>			 				
							<input type="text" class="form-control" name="createdDate"  id="createdDate" readonly="readonly" value="${sData.createdDate}" style="text-align: center; padding-right:1px">
						</div>
					   <div class="form-group col-lg-4 col-md-4 col-sm-6">
			 				<label for="modifiedDate">마지막 수정일</label>
							<input type="text" class="form-control" name="modifiedDate"  id="modifiedDate" value="${sData.modifiedDate}" readonly="readonly" style="text-align: center; padding-right:1px">
						</div>		
						<div class="form-group col-lg-4 col-md-4 col-sm-12">
			 				<label for="lastEditor">마지막 수정자</label>
							<input type="text" class="form-control" name="lastEditor"  id="lastEditor" value="${sData.lastEditor}" readonly="readonly">
						</div>									
					</div>
					<div class="form-row">
				    	<div class="col-sm-4 col-lg-2">
				    		<div style="width:'200px'; height:'200px';borderline:solid"> </div>				    	
							<img class=""  id="featuredImage_img" src="${sData.featuredImage}"  width="100%"  class="img-thumbnail">
							<input type="text" class="form-control-file border" name="featuredImage" id="featuredImage" value="${sData.featuredImage}" hidden ="false">
				    	</div>
				    	<div class="form-group col-sm-8 col-lg-5">
							<label for="photo_filef">썸네일 사진</label>
					      <input type="file" class="form-control-file border" name="photo_filef" id="photo_filef" accept="image/*" disabled>
				    	</div>
		   		   </div>
				  <br>		   		   
		   		   <hr>
		   		   <br>		   		   
				  <div class="form-row">
				 	 <div class="col-sm-12 col-lg-2">
				 	 	<div class="col-sm-12 col-lg-12">		 	 
				  		<label for="visual">공개/비공개 설정</label>
				  		</div>
				  		<div class="col-sm-12 col-lg-12">	
				  			<c:if test="${sData.visual eq 'true'}"> 	 				  		
				  				<div class="form-check-inline">
			   						<label class="form-check-label">
								    <input type="radio" class="form-check-input" name="visual" value="true" checked>공개
								  	</label>
								</div>
								<div class="form-check-inline">
								  	<label class="form-check-label">
								    <input type="radio" class="form-check-input" name="visual" value="false">비공개
									</label>
								</div>
							</c:if>
			   				<c:if test="${sData.visual eq 'false'}">
			   					<div class="form-check-inline">
									<label class="form-check-label">
								   		<input type="radio" class="form-check-input" name="visual" value="true">공개
								 	</label>
								</div>
								<div class="form-check-inline">
								  	<label class="form-check-label">
								   		<input type="radio" class="form-check-input" name="visual" value="false" checked>비공개
								  	</label>
								</div>
			   				</c:if>							  							
						</div>
					</div>
					<div class="col-sm-12 col-lg-2">
						<label for="customerAge">고객 연령</label>
				      	<div class="input-group">
					      	<select class="form-control" id="inputCustomerAge" >
				      			<c:forEach  items="${ageList}" var="i">
									<c:choose>
										<c:when test="${i.age==sData.customerAge}">
							        		<option value="${i.age}" selected>${i.age}</option>  
										</c:when>
										<c:otherwise>
							        		<option value="${i.age}">${i.age}</option>
										</c:otherwise>
									</c:choose>
								</c:forEach>
					      	</select>
					      	<input type="text" class="form-control" id="customerAge" name="customerAge" value="${sData.customerAge}" style="text-align: center; padding-right:1px" readonly="readonly">
				    		</div>
					</div>
					<div class="col-sm-12 col-lg-4">
						<label for="bodyType">고객 체형</label>
				      	<div class="input-group">
					      	<select class="form-control" id="inputBodyType" >
								<c:forEach  items="${bodyTypeList}" var="i">
									<c:choose>
										<c:when test="${i.bodyType==sData.bodyType}">
							        		<option value="${i.bodyType}" selected>${i.bodyType}</option>  
										</c:when>
										<c:otherwise>
							        		<option value="${i.bodyType}">${i.bodyType}</option>
										</c:otherwise>
									</c:choose>
								</c:forEach>
					      	</select>
					      	<input type="text" class="form-control" id="bodyType" name="bodyType" value="${sData.bodyType}" style="text-align: center; padding-right:1px" readonly="readonly">
				    		</div>					
					</div>
					<div class="col-sm-12 col-lg-4">
						<label for="manufacturedDate">제작 년월</label>
						<input type="date" class="form-control" name="manufacturedDate"  id="manufacturedDate" value="${sData.manufacturedDate}">
					</div>													
				  </div>
				  <br>
				  <div class="form-row">				  
				  	<div class="col-sm-12 col-lg-12">
						<label for="fabricPostId">번치북 포스트</label>
				      	<div class="input-group">
					      	<select class="form-control" id="inputFabricPostId">
					      		<option value="" selected>blank</option>				      		
					      	</select>
					      	<input type="text" class="form-control" id="fabricPostId" name="fabricPostId" value="${sData.fabricPostId}" style="text-align: center; padding-right:1px" disabled="disabled">
				    		</div>					
					</div>
				 </div>	
				  <br>	
				  <div class="form-row">  	
				  	<div class="col-sm-12 col-lg-12">
				  		<div class="form-group">
					      	<label for="fabricContent">메모</label>
					      	<textarea class="form-control"  name="fabricContent" id="fabricContent" rows="4" >${sData.fabricContent}</textarea>
				      	</div>
			    	</div>
			    </div>	
			    <br>	
			    <div class="form-row">  	
				 	 <div class="col-sm-12 col-lg-12">		 	 
				  		<label for="fabricPattern">원단 무늬</label>
				  		</div>
				  		<div class="col-sm-12 col-lg-12">	
							<c:forEach  items="${fabricPatternList}" var="i">
								<c:choose>
									<c:when test="${i.fabricPattern==sData.fabricPattern}">
										<div class="form-check-inline">
											<label class="form-check-label">
										 	   <input type="radio" class="form-check-input" name="fabricPattern" value="${i.fabricPattern}" checked="checked">${i.fabricPattern}
										  	</label>
										</div>											
									</c:when>
									<c:otherwise>
										<div class="form-check-inline">
											<label class="form-check-label">
										 	   <input type="radio" class="form-check-input" name="fabricPattern" value="${i.fabricPattern}">${i.fabricPattern}
										  	</label>
										</div>								
									</c:otherwise>
								</c:choose>
							</c:forEach>				  		
						</div>
				</div>	
				  <br>		   		   
		   		   <hr>
		   		   <br>		
			    <div class="form-row">  
					<div class="col-sm-12 col-lg-4">			    	
				 	 <div class="col-sm-12 col-lg-12">		 	 
				  		<label for="lapelWidth">라펠 폭</label>
				  		</div>
				  		<div class="col-sm-12 col-lg-12">	
							<c:forEach  items="${lapelWidthList}" var="i">
								<c:choose>
									<c:when test="${i.lapelWidth==sData.lapelWidth}">
										<div class="form-check-inline">
											<label class="form-check-label">
										 	   <input type="radio" class="form-check-input" name="lapelWidth" value="${i.lapelWidth}" checked="checked">${i.lapelWidth}
										  	</label>
										</div>											
									</c:when>
									<c:otherwise>
										<div class="form-check-inline">
											<label class="form-check-label">
										 	   <input type="radio" class="form-check-input" name="lapelWidth" value="${i.lapelWidth}">${i.lapelWidth}
										  	</label>
										</div>								
									</c:otherwise>
								</c:choose>
							</c:forEach>					  			 	 				  		
						</div>
					</div>
					<div class="col-sm-12 col-lg-4">
						<label for="lapel">라펠</label>
				      	<div class="input-group">
					      	<select class="form-control" id="inputlapelType" >
								<c:forEach  items="${lapelList}" var="i">
									<c:choose>
										<c:when test="${i.lapel==sData.lapel}">
							        		<option value="${i.lapel}" selected>${i.lapel}</option>  
										</c:when>
										<c:otherwise>
							        		<option value="${i.lapel}">${i.lapel}</option>
										</c:otherwise>
									</c:choose>
								</c:forEach>					      	</select>
					      	<input type="text" class="form-control" id="lapel" name="lapel" value="${sData.lapel}" style="text-align: center; padding-right:1px" readonly="readonly">
				    	</div>					
					</div>	
				</div>		
				<br>
 			  <div class="form-row">  
 			  	<div class="col-sm-12 col-lg-4">			    	
 			  		<div class="col-sm-12 col-lg-12">		 	 
				  		<label for="breasted">브레스티드</label>
				  		</div>
				  		<div class="col-sm-12 col-lg-12">	
				  			<c:if test="${sData.breasted eq 'Single'}"> 	 				  		
				  				<div class="form-check-inline">
			   						<label class="form-check-label">
							    <input type="radio" class="form-check-input" name="breasted" value="Single" checked="checked">Single
								  	</label>
								</div>
								<div class="form-check-inline">
								  	<label class="form-check-label">
							    <input type="radio" class="form-check-input" name="breasted" value="Double">Double
									</label>
								</div>
							</c:if>
			   				<c:if test="${sData.visual eq 'Double'}">
			   					<div class="form-check-inline">
									<label class="form-check-label">
							    <input type="radio" class="form-check-input" name="breasted" value="Single">Single
								 	</label>
								</div>
								<div class="form-check-inline">
								  	<label class="form-check-label">
							    <input type="radio" class="form-check-input" name="breasted" value="Double" checked="checked">Double
								  	</label>
								</div>
			   				</c:if>					 	 				  		
						</div>
					</div>
					<div class="col-sm-12 col-lg-4">
						<label for="button">버튼</label>						
							<div class="input-group">
							<div class="col-sm-6 col-md-6 col-lg-6">
								<input type="range" class="form-control-range" id="buttonRange" min="0" max="10" value="${sData.button}">
							</div>
							<div class="col-sm-6 col-md-6 col-lg-6">										  	
								<input type="text" class="form-control" id="button" name="button" value="${sData.button}" readonly="readonly">
							</div>
					    </div>					
					</div>	
					<div class="col-sm-12 col-lg-4">
						<label for="buttonHole">단추 구멍</label>	
						<div class="input-group">						
							<div class="col-sm-6 col-md-6 col-lg-6">										  	
								<input type="range" class="form-control-range" id="buttonHoleRange" min="0" max="10">
							</div>
							<div class="col-sm-6 col-md-6 col-lg-6">										  	
						      	<input type="text" class="form-control" id="buttonHole" name="buttonHole" value="" readonly="readonly">
						    </div>
						</div>										
					</div>	
				</div>
				<br>
 			   <div class="form-row">  
					<div class="col-sm-12 col-lg-4">
						<label for="pocket">주머니</label>
				      	<div class="input-group">				      	
							<c:forEach  items="${pocketList}" var="i" varStatus="status">
								<c:choose>
										<c:when test="${fn:contains(sData.pocket, i.pocket)}">
											<div class="form-check-inline">
												<label class="form-check-label" for="pocket+${status.index}">
											 	   <input type="checkbox" class="form-check-input pockets" name="pocket+${status.index}" value="${i.pocket}" checked="checked">${i.pocket}
											  	</label>
											</div>											
										</c:when>
										<c:otherwise>
											<div class="form-check-inline">
												<label class="form-check-label" for="pocket+${status.index}">
											 	   <input type="checkbox" class="form-check-input pockets" name="pocket+${status.index}" value="${i.pocket}">${i.pocket}
											  	</label>
											</div>								
										</c:otherwise>
								</c:choose>
							</c:forEach>					      						 	    						    						    
					      	<input hidden="true" class="form-control" id="pocket" name="pocket" value="" style="text-align: center; padding-right:1px">
				    		</div>					
					</div>
					<div class="col-sm-12 col-lg-4">
						<label for="sleeveLength">소매산</label>
				      	<div class="input-group">
					      	<c:forEach  items="${sleeveLengthList}" var="i" varStatus="status">
								<c:choose>
										<c:when test="${fn:contains(sData.sleeveLength, i.sleeveLength)}">
										<div class="form-check-inline">
											<label class="form-check-label" for="sleeveLength+${status.index}">
										 	   <input type="checkbox" class="form-check-input sleeveLengths" name="sleeveLength+${status.index}" value="${i.sleeveLength}" checked="checked">${i.sleeveLength}
										  	</label>
										</div>											
									</c:when>
									<c:otherwise>
										<div class="form-check-inline">
											<label class="form-check-label" for="sleeveLength+${status.index}">
										 	   <input type="checkbox" class="form-check-input sleeveLengths" name="sleeveLength+${status.index}" value="${i.sleeveLength}">${i.sleeveLength}
										  	</label>
										</div>								
									</c:otherwise>
								</c:choose>
							</c:forEach>					    						    						    
					      	<input hidden="true" class="form-control" id="sleeveLength" name="sleeveLength" value="" style="text-align: center; padding-right:1px">
				    	</div>					
					</div>	
					<div class="col-sm-12 col-lg-4">
						<label for="slit">뒤트임</label>
				      	<div class="input-group">
					      	<c:forEach  items="${slitList}" var="i">
								<c:choose>
									<c:when test="${i.slit==sData.slit}">
										<div class="form-check-inline">
											<label class="form-check-label">
										 	   <input type="radio" class="form-check-input" name="slit" value="${i.slit}" checked="checked">${i.slit}
										  	</label>
										</div>											
									</c:when>
									<c:otherwise>
										<div class="form-check-inline">
											<label class="form-check-label">
										 	   <input type="radio" class="form-check-input" name="slit" value="${i.slit}">${i.slit}
										  	</label>
										</div>								
									</c:otherwise>
								</c:choose>
							</c:forEach>				    						    						    
				    	</div>					
					</div>																												
				</div>	
				<br>	
 			   <div class="form-row">  
					<div class="col-sm-12 col-lg-4">
						<label for="lining">안감</label>
				      	<div class="input-group">				      	
							<c:if test="${sData.lining eq 'Regular Lining'}"> 	 				  		
				  				<div class="form-check-inline">
			   						<label class="form-check-label">
								    <input type="radio" class="form-check-input" name="lining" value="Regular Lining" checked>Regular Lining
								  	</label>
								</div>
								<div class="form-check-inline">
								  	<label class="form-check-label">
								    <input type="radio" class="form-check-input" name="lining" value="Padded Lining">Padded Lining
									</label>
								</div>
							</c:if>
			   				<c:if test="${sData.lining eq 'Padded Lining'}">
			   					<div class="form-check-inline">
									<label class="form-check-label">
								   		<input type="radio" class="form-check-input" name="lining" value="Regular Lining">Regular Lining
								 	</label>
								</div>
								<div class="form-check-inline">
								  	<label class="form-check-label">
								   		<input type="radio" class="form-check-input" name="lining" value="Padded Lining" checked>Padded Lining
								  	</label>
								</div>
			   				</c:if>						      	
				    	</div>					
					</div>			
					<div class="col-sm-12 col-lg-4">
						<label for="stiching">바느질</label>
				      	<div class="input-group">
							<c:forEach  items="${stichingList}" var="i">
								<c:choose>
									<c:when test="${i.stiching==sData.stiching}">
										<div class="form-check-inline">
											<label class="form-check-label">
										 	   <input type="radio" class="form-check-input" name="stiching" value="${i.stiching}" checked="checked">${i.stiching}
										  	</label>
										</div>											
									</c:when>
									<c:otherwise>
										<div class="form-check-inline">
											<label class="form-check-label">
										 	   <input type="radio" class="form-check-input" name="stiching" value="${i.stiching}">${i.stiching}
										  	</label>
										</div>								
									</c:otherwise>
								</c:choose>
							</c:forEach>								      	
				    	</div>					
					</div>														
					<div class="col-sm-12 col-lg-4">
						<label for="extraDesign">추가 디자인</label>
				      	<div class="input-group">
							<c:forEach  items="${extraDesignList}" var="i" varStatus="status">
								<c:choose>
									<c:when test="${fn:contains(sData.extraDesign, i.extraDesign)}">
										<div class="form-check-inline">
											<label class="form-check-label" for="extraDesign+${status.index}">
										 	   <input type="checkbox" class="form-check-input extraDesigns" name="extraDesign+${status.index}" value="${i.extraDesign}" checked="checked">${i.extraDesign}
										  	</label>
										</div>											
									</c:when>
									<c:otherwise>
										<div class="form-check-inline">
											<label class="form-check-label" for="extraDesign+${status.index}">
										 	   <input type="checkbox" class="form-check-input extraDesigns" name="extraDesign+${status.index}" value="${i.extraDesign}">${i.extraDesign}
										  	</label>
										</div>								
									</c:otherwise>
								</c:choose>
							</c:forEach>					    						    						    
					      	<input hidden="true" class="form-control" id="extraDesign" name="extraDesign" value="" style="text-align: center; padding-right:1px">
				    		</div>					
					</div>	
				</div>			
				<br>
				<hr>
				<br>
				<div class="form-row">		
				  	<div class="form-group col-lg-12 col-md-12">						    				
						 <textarea id="content" name="content">${sData.content}</textarea>		
					</div>		  	
				</div> 	
				<div class="form-row">				    				
				  	<div class="form-group col-lg-12 col-md-12">
					      <button type="submit" class="btn btn-outline-primary btn-lg pull-right mr-1" id="submitbtn" disabled>저장</button>
					      <button type="reset" class="btn btn-outline-primary btn-lg pull-right mr-1" id="resetbtn"  disabled>취소</button>
				   	</div>			    							   	
				</div>
				</form>
			</div>
			<hr>

			<div class="row justify-content-between">
			   	<button type="button" class="btn btn-outline-primary ml-3" onClick ="javascript:window.history.back();"><i class="fa fa-chevron-left" ></i> 이전 페이지 </button>
			      <c:if test="${sData.id != null }">
						<button type="button" class="btn btn-outline-primary mr-3" onClick ="location.href='/admin/showcasePreivew?id=${sData.id}'" id="showcasePreviewBtn">Preview <i class="fa fa-chevron-right" ></i></button>
					</c:if>
			</div>
			<hr>
		</main>
	</body>
</html>