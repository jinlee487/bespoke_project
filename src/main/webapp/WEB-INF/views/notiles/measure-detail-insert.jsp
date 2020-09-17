<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<title>치수 상세 출력 화면2 - 읽기 전용</title>
<style>
.form-group{
	margin-bottom: 0;
}
</style>
<script>

$('#detail2Readonly input').attr('readonly', true);

</script>

  <script src="/js/bespoke-admin.js"></script>
  <script src="/js/bespoke-admin-measurement.js"></script>
	<script src="/js/bespoke-admin-measurement-api.js"></script>
</head>
<body>
<form>
<!-- entire row -->
<div class="row" id="detail2Readonly">
<!-- 1st row -->
<div class="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">

<div class="form-group row">
  <label for="height" class="col-sm-4 col-form-label pr-1 pl-1 text-center">키</label>
  <div class="col-sm-8 pl-1 pr-1">
   <input type="number" step="0.5" class="form-control" value="${measureDetail.height}">
  </div>
</div>

<div class="form-group row">
  <label for="total_l" class="col-sm-4 col-form-label pr-1 pl-1 text-center">총장</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.total_l}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.total_al}">
  </div>
</div>

<div class="form-group row">
  <label for="armhole_l" class="col-sm-4 col-form-label pr-1 pl-1 text-center">진동</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.armhole_l}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.armhole_al}">
  </div>
</div>

<div class="form-group row">
  <label for="backa_l" class="col-sm-4 col-form-label pr-1 pl-1 text-center">뒷장</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.backa_l}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.backa_al}">
  </div>
</div>

<div class="form-group row">
  <label for="fronta_l" class="col-sm-4 col-form-label pr-1 pl-1 text-center">앞장</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.fronta_l}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.fronta_al}">
  </div>
</div>


<div class="form-group row">
  <label for="shoulder_w" class="col-sm-4 col-form-label pr-1 pl-1 text-center">어깨너비</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.shoulder_w}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.shoulder_aw}">
  </div>
</div>

<div class="form-group row align-items-center">
  
  <label for="sleeve_l" class="col-sm-4 col-form-label pr-1 pl-1 text-center">소매길이</label>
  	<div class="input-group col-sm-4 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.sleeve_l}">
  </div>
  
  
  <div class="input-group col-sm-4">
  
  <div class="form-group row">
	  
	  <label for="sleevel_l" class="col-sm-2 col-form-label pr-1 pl-1 text-center">좌</label>
	  	<div class="input-group col-sm-10 pl-1 pr-1">
			<input type="number" step="0.5" class="form-control" value="${measureDetail.sleevel_l}">
	  </div>
	  
    <label for="sleever_l" class="col-sm-2 col-form-label pr-1 pl-1 text-center">우</label>
	  <div class="input-group col-sm-10 pl-1 pr-1">
			<input type="number" step="0.5" class="form-control" value="${measureDetail.sleever_l}">
		</div>
		
	</div>
	</div>
</div>


  

<div class="form-group row">
  <label for="back_w" class="col-sm-4 col-form-label pr-1 pl-1 text-center">뒷품</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.back_w}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.back_aw}">
  </div>
</div>


<div class="form-group row">
  <label for="front_w" class="col-sm-4 col-form-label pr-1 pl-1 text-center">앞품</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.front_w}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.front_aw}">
  </div>
</div>


<div class="form-group row">
  <label for="chest_s" class="col-sm-4 col-form-label pr-1 pl-1 text-center">가슴둘레</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.chest_s}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.chest_as}">
  </div>
</div>


<div class="form-group row">
  <label for="belly_s" class="col-sm-4 col-form-label pr-1 pl-1 text-center">배둘레</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.belly_s}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.belly_s}">
  </div>
</div>


<div class="form-group row">
  <label for="waist_s" class="col-sm-4 col-form-label pr-1 pl-1 text-center">허리둘레</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.waist_s}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.waist_as}">
  </div>
</div>


<div class="form-group row">
  <label for="hip_s" class="col-sm-4 col-form-label pr-1 pl-1 text-center">볼기둘레</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.hip_s}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.hip_as}">
  </div>
</div>


<div class="form-group row">
  <label for="pants_l" class="col-sm-4 col-form-label pr-1 pl-1 text-center">바지길이</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.pants_l}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.pants_al}">
  </div>
</div>

<div class="form-group row">
  <label for="leg_l" class="col-sm-4 col-form-label pr-1 pl-1 text-center">다리길이</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.leg_l}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.leg_al}">
  </div>
</div>

<div class="form-group row">
  <label for="pbottom_w" class="col-sm-4 col-form-label pr-1 pl-1 text-center pl-1 text-center">부리</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.pbottom_w}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.pbottom_aw}">
  </div>
</div>
</div>






<!-- 2nd row -->
<div class="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">


<div class="form-group row align-items-center">
  
  <label for="sdrop_s" class="col-sm-4 col-form-label pr-1 pl-1 text-center">어깨쳐짐</label>
  	<div class="input-group col-sm-4 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.sdrop_s}">
  </div>
  
  
  <div class="input-group col-sm-4">
  
  <div class="form-group row">
	  
	  <label for="sdropl_s" class="col-sm-2 col-form-label pr-1 pl-1 text-center">좌</label>
	  	<div class="input-group col-sm-10 pl-1 pr-1">
			<input type="number" step="0.5" class="form-control" value="${measureDetail.sdropl_s}">
	  </div>
	  
    <label for="sdropr_s" class="col-sm-2 col-form-label pr-1 pl-1 text-center">우</label>
	  <div class="input-group col-sm-10 pl-1 pr-1">
			<input type="number" step="0.5" class="form-control" value="${measureDetail.sdropr_s}">
		</div>
		
	</div>
	</div>
</div>

<div class="form-group row">
  <label for="neck_d" class="col-sm-4 col-form-label pr-1 pl-1 text-center">목들이</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.neck_d}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.neck_ad}">
  </div>
</div>

<div class="form-group row">
  <label for="hip_d" class="col-sm-4 col-form-label pr-1 pl-1 text-center">볼기들이</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.hip_d}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.hip_ad}">
  </div>
</div>

<div class="form-group row">
  <label for="waist_d" class="col-sm-4 col-form-label pr-1 pl-1 text-center">허리들이</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.waist_d}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.waist_ad}">
  </div>
</div>

<div class="form-group row">
  <label for="belly_d" class="col-sm-4 col-form-label pr-1 pl-1 text-center">배나온량</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.belly_d}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.belly_ad}">
  </div>
</div>

<div class="form-group row">
  <label for="chest_d" class="col-sm-4 col-form-label pr-1 pl-1 text-center">가슴다트</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.chest_d}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.chest_ad}">
  </div>
</div>

<hr>

<div class="form-group row">
  <label for="weight_s" class="col-sm-4 col-form-label pr-1 pl-1 text-center">몸무게</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.weight_s}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.weight_as}">
  </div>
</div>

<hr>

<div class="form-group row">
  <label for="neck_s" class="col-sm-4 col-form-label pr-1 pl-1 text-center">목치수</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.neck_s}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.neck_as}">
  </div>
</div>

<div class="form-group row">
  <label for="sshoulder_s" class="col-sm-4 col-form-label pr-1 pl-1 text-center">셔츠어깨</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.sshoulder_s}">
  </div>
</div>

<div class="form-group row align-items-center">
  
  <label for="ssleeve_l" class="col-sm-4 col-form-label pr-1 pl-1 text-center">셔츠소매</label>
  	<div class="input-group col-sm-4 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.ssleeve_l}">
  </div>
  
  
  <div class="input-group col-sm-4">
  
  <div class="form-group row">
	  
	  <label for="ssleevel_l" class="col-sm-2 col-form-label pr-1 pl-1 text-center">좌</label>
	  	<div class="input-group col-sm-10 pl-1 pr-1">
			<input type="number" step="0.5" class="form-control" value="${measureDetail.ssleevel_l}">
	  </div>
	  
    <label for="ssleever_l" class="col-sm-2 col-form-label pr-1 pl-1 text-center">우</label>
	  <div class="input-group col-sm-10 pl-1 pr-1">
			<input type="number" step="0.5" class="form-control" value="${measureDetail.ssleever_l}">
		</div>
		
	</div>
	</div>
</div>

<div class="form-group row">
  <label for="shirts_l" class="col-sm-4 col-form-label pr-1 pl-1 text-center">셔츠길이</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail.shirts_l}">
  </div>
</div>

</div>
</div>
	<hr>

<div class="row">

<div class="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">

	<div class="form-group row">
		<label for="m_day" class="col-sm-4 col-form-label pr-1 pl-1 text-center">측정일</label>
		<div class="input-group col-sm-8 pl-1 pr-1">
			<input type="date" class="form-control" >
		</div>
	</div>

</div>

<div class="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">

	<div class="form-group row">
		<label for="sshoulder_s" class="col-sm-4 col-form-label pr-1 pl-1 text-center">담당 매니저</label>
		<div class="input-group col-sm-8 pl-1 pr-1">
			<select class="form-control" >
				<option>manager1</option>
				<option>manager2</option>
				<option>manager3</option>
			</select>

		</div>
	</div>
</div>
</div>
</div>

<hr>
<div class="row">

<div class="col-2 col-sm-2 col-md-2 col-lg-2 col-xl-2 pr-1 pl-1 text-center align-self-center">
	<label for="memo">메모</label>
</div>


<div class="col-10 col-sm-10 col-md-10 col-lg-10 col-xl-10 input-group pr-1 pl-1">
<textarea class="form-control" type="text" style="width:100%" rows="3" maxlength="50">${measureDetail.memo}</textarea>
</div>
</div>

</form>
</body>
</html>