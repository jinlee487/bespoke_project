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

$('#detail2Readonly input').attr('disabled', true);

</script>

</head>
<body>
<form>
<!-- entire row -->
<div class="row" id="detail2Readonly">
<!-- 1st row -->
<div class="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">

<div class="form-group row">
  <label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">키</label>
  <div class="col-sm-8 pl-1 pr-1">
   <input type="number" step="0.5" class="form-control" value="${measureDetail2.height}">
  </div>
</div>

<div class="form-group row">
  <label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">총장</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.total_l}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.total_al}">
  </div>
</div>

<div class="form-group row">
  <label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">진동</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.armhole_l}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.armhole_al}">
  </div>
</div>

<div class="form-group row">
  <label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">뒷장</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.backa_l}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.backa_al}">
  </div>
</div>

<div class="form-group row">
  <label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">앞장</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.fronta_l}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.fronta_al}">
  </div>
</div>


<div class="form-group row">
  <label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">어깨너비</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.shoulder_w}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.shoulder_aw}">
  </div>
</div>

<div class="form-group row align-items-center">
  
  <label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">소매길이</label>
  	<div class="input-group col-sm-4 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.sleeve_l}">
  </div>
  
  
  <div class="input-group col-sm-4">
  
  <div class="form-group row">
	  
	  <label   class="col-sm-2 col-form-label pr-1 pl-1 text-center">좌</label>
	  	<div class="input-group col-sm-10 pl-1 pr-1">
			<input type="number" step="0.5" class="form-control" value="${measureDetail2.sleevel_l}">
	  </div>
	  
    <label   class="col-sm-2 col-form-label pr-1 pl-1 text-center">우</label>
	  <div class="input-group col-sm-10 pl-1 pr-1">
			<input type="number" step="0.5" class="form-control" value="${measureDetail2.sleever_l}">
		</div>
		
	</div>
	</div>
</div>


  

<div class="form-group row">
  <label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">뒷품</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.back_w}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.back_aw}">
  </div>
</div>


<div class="form-group row">
  <label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">앞품</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.front_w}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.front_aw}">
  </div>
</div>


<div class="form-group row">
  <label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">가슴둘레</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.chest_s}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.chest_as}">
  </div>
</div>


<div class="form-group row">
  <label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">배둘레</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.belly_s}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.belly_s}">
  </div>
</div>


<div class="form-group row">
  <label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">허리둘레</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.waist_s}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.waist_as}">
  </div>
</div>


<div class="form-group row">
  <label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">볼기둘레</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.hip_s}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.hip_as}">
  </div>
</div>


<div class="form-group row">
  <label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">바지길이</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.pants_l}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.pants_al}">
  </div>
</div>

<div class="form-group row">
  <label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">다리길이</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.leg_l}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.leg_al}">
  </div>
</div>

<div class="form-group row">
  <label   class="col-sm-4 col-form-label pr-1 pl-1 text-center pl-1 text-center">부리</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.pbottom_w}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.pbottom_aw}">
  </div>
</div>
</div>






<!-- 2nd row -->
<div class="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">


<div class="form-group row align-items-center">
  
  <label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">어깨쳐짐</label>
  	<div class="input-group col-sm-4 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.sdrop_s}">
  </div>
  
  
  <div class="input-group col-sm-4">
  
  <div class="form-group row">
	  
	  <label   class="col-sm-2 col-form-label pr-1 pl-1 text-center">좌</label>
	  	<div class="input-group col-sm-10 pl-1 pr-1">
			<input type="number" step="0.5" class="form-control" value="${measureDetail2.sdropl_s}">
	  </div>
	  
    <label   class="col-sm-2 col-form-label pr-1 pl-1 text-center">우</label>
	  <div class="input-group col-sm-10 pl-1 pr-1">
			<input type="number" step="0.5" class="form-control" value="${measureDetail2.sdropr_s}">
		</div>
		
	</div>
	</div>
</div>

<div class="form-group row">
  <label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">목들이</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.neck_d}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.neck_ad}">
  </div>
</div>

<div class="form-group row">
  <label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">볼기들이</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.hip_d}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.hip_ad}">
  </div>
</div>

<div class="form-group row">
  <label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">허리들이</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.waist_d}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.waist_ad}">
  </div>
</div>

<div class="form-group row">
  <label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">배나온량</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.belly_d}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.belly_ad}">
  </div>
</div>

<div class="form-group row">
  <label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">가슴다트</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.chest_d}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.chest_ad}">
  </div>
</div>

<hr>

<div class="form-group row">
  <label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">몸무게</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.weight_s}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.weight_as}">
  </div>
</div>

<hr>

<div class="form-group row">
  <label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">목치수</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.neck_s}">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.neck_as}">
  </div>
</div>

<div class="form-group row">
  <label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">셔츠어깨</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.sshoulder_s}">
  </div>
</div>

<div class="form-group row align-items-center">
  
  <label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">셔츠소매</label>
  	<div class="input-group col-sm-4 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.ssleeve_l}">
  </div>
  
  
  <div class="input-group col-sm-4">
  
  <div class="form-group row">
	  
	  <label   class="col-sm-2 col-form-label pr-1 pl-1 text-center">좌</label>
	  	<div class="input-group col-sm-10 pl-1 pr-1">
			<input type="number" step="0.5" class="form-control" value="${measureDetail2.ssleevel_l}">
	  </div>
	  
    <label   class="col-sm-2 col-form-label pr-1 pl-1 text-center">우</label>
	  <div class="input-group col-sm-10 pl-1 pr-1">
			<input type="number" step="0.5" class="form-control" value="${measureDetail2.ssleever_l}">
		</div>
		
	</div>
	</div>
</div>

<div class="form-group row">
  <label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">셔츠길이</label>
  	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" value="${measureDetail2.shirts_l}">
  </div>
</div>

</div>
</div>
	<hr>

<div class="row">

<div class="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">

	<div class="form-group row">
		<label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">측정일</label>
		<div class="input-group col-sm-8 pl-1 pr-1">
			<input type="date" class="form-control" >
		</div>
	</div>

</div>

<div class="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">

	<div class="form-group row">
		<label   class="col-sm-4 col-form-label pr-1 pl-1 text-center">담당 매니저</label>
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
	<label  >메모</label>
</div>


<div class="col-10 col-sm-10 col-md-10 col-lg-10 col-xl-10 input-group pr-1 pl-1">
<textarea class="form-control" type="text" style="width:100%" rows="3" maxlength="50">${measureDetail2.memo}</textarea>
</div>
</div>

</form>
</body>
</html>