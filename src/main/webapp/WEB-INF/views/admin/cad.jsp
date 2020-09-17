<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix = "fn"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
	<head>
		<title>Admin - CAD </title>
	    <!-- <script src="/js/jquery-3.2.1.min.js"></script> -->
	    
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/d3/4.1.1/d3.js"></script>
		  
      	<script>

			//Test points
			var points = [
				{name:'p1', x:25, y:100},
				{name:'p2', x:125, y:150},
				{name:'p3', x:225, y:200},
				{name:'p4', x:300, y:110},
				{name:'p5', x:215, y:130},
				{name:'p6', x:425, y:300},
				{name:'p7', x:325, y:220},
				{name:'p8', x:45, y:140}
			];
			var lastP;
			//Test lines
			var lines = [
				{name:'l1', sPoint:'p1', ePoint:'p2'},
				{name:'l2', sPoint:'p2', ePoint:'p3'},
				{name:'l3', sPoint:'p3', ePoint:'p4'},
				{name:'l4', sPoint:'p4', ePoint:'p5'},
				{name:'l5', sPoint:'p5', ePoint:'p6'},
				{name:'l6', sPoint:'p6', ePoint:'p7'}
			];
			var lastL;

			$(function(){

				var draw = d3.select('#mainSvg');

				$('#addPointBtn').on("click",function(){

					addPoint({
						name:$('#txtBox3').val(),
						x:$('#txtBox1').val(), 
						y:$('#txtBox2').val()
						});
					
				});//addPointBtn_click
				

				$('#addLineBtn').on("click",function(){

					addLine({
						name:$('#txtBox4').val(),
						sPoint:$('#txtBox5').val(), 
						ePoint:$('#txtBox6').val()
						});
					
      			});//addPointBtn_click

				$('#addGroupBtn').on("click",function(){
					var group = draw.group().attr('id',$('#txtBox3').val()).draggable();
					var pointC = $('#'+$('#txtBox1').val()).detach.appendTo(group);
					var pointD = $('#'+$('#txtBox2').val()).detach.appendTo(group);
											
      			});//addGroupBtn_click
      		});

			$(window).load(function() {

				draw();

			}); //window.load

			function draw(){
				var draw = d3.select('#mainSvg');
  		
				// point-list-up	
				points.forEach(function(item,indx,arr2) {
					$('#pointsT > tbody:last').append('<tr ><td scope="row">'+indx+'</td><td>'+ item.name + '</td><td>'+ item.x + '</td><td>'+ item.y + '</td></tr>');
					var rect = draw.append('circle')
						.attr('r',3)
						.attr('fill','white')
						.attr('cx',item.x)
						.attr('cy',item.y)
						.attr('id',item.name);
					draw.append('text')
						.attr('x',Number(item.x)+10)
						.attr('y',Number(item.y)-10)
						.attr('fill','white')
						.text(item.name);

					lastP = indx;
				});//points for
				
				lines.forEach(function(item,indx,arr2) {
					var pointA = item.sPoint;
					var pointB = item.ePoint;
					console.log(item.sPoint, item.ePoint);
    	      		var pointA_x = $('#'+pointA).attr('cx');
					var pointA_y = $("#"+pointA).attr('cy');
					var pointB_x = $('#'+pointB).attr('cx');
					var pointB_y = $('#'+pointB).attr('cy');
					
					$('#linesT > tbody:last').append('<tr ><td scope="row">'+indx+'</td><td>'+ item.name + '</td><td>'+ item.sPoint + '</td><td>'+ item.ePoint + '</td></tr>');
					var rect = draw.append('line')
						.attr('x1',pointA_x)
						.attr('y1',pointA_y)
						.attr('x2',pointB_x)
						.attr('y2',pointB_y)
						.attr('style','stroke:rgb(255,0,0);stroke-width:1')
						.attr('id',item.name);
					lastL = indx;
				});//lines for
				
			};//draw()

			function addPoint(item){
				lastP += 1;
				points.push(item);
				
				$('#pointsT > tbody:last').append('<tr ><td scope="row">'+lastP +'</td><td>'+ item.name + '</td><td>'+ item.x + '</td><td>'+ item.y + '</td></tr>');
				
				var draw = d3.select('#mainSvg');								
				var rect = draw.append('circle')
					.attr('r',3)
					.attr('fill','white')
					.attr('cx',item.x)
					.attr('cy',item.y)
					.attr('id',item.name);
				draw.append('text')
					.attr('x',Number(item.x)+10)
					.attr('y',Number(item.y)-10)
					.attr('fill','white')
					.text(item.name);		
			};

			function addLine(item){
				lastL += 1;
				lines.push(item);

				var pointA = item.sPoint;
				var pointB = item.ePoint;
				console.log(item.sPoint, item.ePoint);
				var pointA_x = $('#'+pointA).attr('cx');
				var pointA_y = $("#"+pointA).attr('cy');
				var pointB_x = $('#'+pointB).attr('cx');
				var pointB_y = $('#'+pointB).attr('cy');


				$('#linesT > tbody:last').append('<tr ><td scope="row">'+lastL+'</td><td>'+ item.name + '</td><td>'+ item.sPoint + '</td><td>'+ item.ePoint + '</td></tr>');

				var draw = d3.select('#mainSvg');
				var rect = draw.append('line')
					.attr('x1',pointA_x)
					.attr('y1',pointA_y)
					.attr('x2',pointB_x)
					.attr('y2',pointB_y)
					.attr('style','stroke:rgb(255,0,0);stroke-width:1')
					.attr('id',item.name);
				lastL = indx;				
			}; //addLine

 		</script>
		  
	</head>

	<body >
	  	<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
	    	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">

		       	<h1 class="h2">CAD</h1>
				<c:if test="${message != null}">
					<div class="alert alert-primary alert-dismissable show fade" id="message" role="alert">
				 			 => ${message}
		 			</div>
				</c:if>
				
				<div class="btn-toolbar mb-2 mb-md-0">
					<button type="button" id="newShowcaseBtn" class="btn btn-outline-primary form-inline mr-2" onClick ="location.href='/admin/addShowcase'"><i class ="fa fa-briefcase"></i> 신규 패턴 등록</button>
				</div>
	    	</div>
			<div class="row">
				<div class="col-8" >					
					<div class="form-row">
						<div class="form-group col-sm-6">
							<label for="title">패턴 파일명</label>
							<input type="text"class="form-control" name="title" id="title" value="${sData.title}">
						</div>
						<div class="form-group col-sm-3">
							<label for="id">패턴 번호</label>
							<input type="text" class="form-control" name="id" placeholder="글 번호"  readonly value="${sData.id}"style="text-align: center; padding-right:1px">
						</div>
						<div class="form-group col-sm-3">
							<label for="name">작성자</label>
							<input type="text"class="form-control" name="author"  value="${sData.author}">
						</div>
					</div>
					<div style="width:100%; height:600px; background-color: black; overflow: auto; resize: vertical;"  >	
						<svg xmlns="http://www.w3.org/2000/svg"  id="mainSvg" width="1000" height="1000">

						</svg>
					</div>
					
					
				</div>
			
				<div class="col-4 border">
					<ul class="nav nav-tabs" id="cadTab" role="tablist">
						<li class="nav-item">
							  <a class="nav-link active" data-toggle="tab" href="#point">점</a>
						</li>
						<li class="nav-item">
							  <a class="nav-link" data-toggle="tab" href="#line">선</a>
						</li>
						<li class="nav-item">
							  <a class="nav-link" data-toggle="tab" href="#group">그룹</a>
						</li>
					</ul>

					<form name="form" id="sDataForm" role="form" method="post" action="/admin/cadUpdate" enctype="multipart/form-data">
						
						<div class="tab-content">
							<div class="tab-pane fade show active" id="point">
								<div class="form-row">
									<div class="form-group col-lg-4 col-sm-6">
										<label for="txtBox3"> 점이름 </label>
										<input type="text" class="form-control mb-2 " name="txtBox3"  id="txtBox3">
									</div>
									<div class="form-group col-lg-4 col-sm-12">
										<label for="txtBox1"> X 좌표 </label>
										<input type="text" class="form-control mb-2" name="txtBox1"  id="txtBox1" >
									</div>
									<div class="form-group col-lg-4 col-sm-12">
										<label for="txtBox2"> Y 좌표 </label>
										<input type="text" class="form-control mb-2 " name="txtBox2"  id="txtBox2">
									</div>
									
								</div>
								<div class="form-row justify-content-end">
									<button type="button" class="btn btn-outline-primary " id="addPointBtn" >추가</button>
									<!-- <button type="button" class="btn btn-outline-primary " id="addLineBtn" >선추가</button>
									<button type="button" class="btn btn-outline-primary " id="addGroupBtn" >그룹추가</button> -->
								</div>
								
								<div class=" table-responsive">
									<table class="table table-sm table-striped" id="pointsT">
										<thead>
											<tr>
												<th scope="col">#</th>
												<th scope="col">이름</th>
												<th scope="col">x좌표</th>
												<th scope="col">y좌표</th>
											</tr>
										</thead>
										<tbody>
											
										</tbody>
									</table>
								</div>	
							</div>
							<div class="tab-pane fade " id="line">
								<div class="form-row">
									<div class="form-group col-lg-4 col-sm-6">
										<label for="txtBox4"> 선이름 </label>
										<input type="text" class="form-control mb-2 " name="txtBox4"  id="txtBox4">
									</div>
									<div class="form-group col-lg-4 col-sm-12">
										<label for="txtBox5"> 시작점 </label>
										<input type="text" class="form-control mb-2" name="txtBox5"  id="txtBox5" >
									</div>
									<div class="form-group col-lg-4 col-sm-12">
										<label for="txtBox6"> 끝점 </label>
										<input type="text" class="form-control mb-2 " name="txtBox6"  id="txtBox6">
									</div>
									
								</div>
								<div class="form-row justify-content-end">
									<button type="button" class="btn btn-outline-primary " id="addLineBtn" >추가</button>
								</div>
									
								<div class="table-responsive" >
									<table class="table table-sm table-striped" id="linesT">
										<thead>
											<tr>
												<th scope="col">#</th>
												<th scope="col">이름</th>
												<th scope="col">시작점</th>
												<th scope="col">끝점</th>
											</tr>
										</thead>
										<tbody>
											
										</tbody>
									</table>
								</div>
							</div>
							<div class="tab-pane fade" id="group">
								<p>Curabitur dignissim quis nunc vitae laoreet. Etiam ut mattis leo, vel fermentum tellus. Sed sagittis rhoncus venenatis. Quisque commodo consectetur faucibus. Aenean eget ultricies justo.</p>
							</div>
						</div>
						
						
						<hr>
						<div class="form-row justify-content-end">
							<div class="form-group">
								<button type="submit" class="btn btn-outline-primary btn-lg  mr-1" id="submitbtn" disabled>저장</button>
								<button type="reset" class="btn btn-outline-primary btn-lg mr-1" id="resetbtn"  disabled>취소</button>
							</div>
						</div>			    							   	
					</form>
				</div>
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