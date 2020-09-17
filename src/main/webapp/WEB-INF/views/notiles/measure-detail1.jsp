<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<title>치수 상세 출력 화면 1</title>
<style>
.form-group{
	margin-bottom: 0;
}
</style>
    <script src="/js/bespoke-admin.js"></script>
    <script src="/js/bespoke-admin-measurement.js"></script>
	<script src="/js/bespoke-admin-measurement-api.js"></script>
</head>
<body>

<form>
<!-- entire row -->
<div class="row">
<!-- 1st row -->
<div class="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">

<div class="form-group row">
    <label for="height" class="col-sm-4 col-form-label pr-1 pl-1 text-center">키</label>
    <div class="col-sm-8 pl-1 pr-1">
      <input type="number" step="0.5" class="form-control" name="height" id="height" value="${measureDetail1.height}">
    </div>
</div>

<div class="form-group row">
    <label for="total_l" class="col-sm-4 col-form-label pr-1 pl-1 text-center">총장</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="total_l" id="total_l" value="${measureDetail1.total_l}">
		<input type="number" step="0.5" class="form-control" name="total_al" id="total_al" value="${measureDetail1.total_al}">
    </div>
</div>

<div class="form-group row">
    <label for="armhole_l" class="col-sm-4 col-form-label pr-1 pl-1 text-center">진동</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="armhole_l" id="armhole_l" value="${measureDetail1.armhole_l}">
		<input type="number" step="0.5" class="form-control" name="armhole_al" id="armhole_al" value="${measureDetail1.armhole_al}">
    </div>
</div>

<div class="form-group row">
    <label for="backa_l" class="col-sm-4 col-form-label pr-1 pl-1 text-center">뒷장</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="backa_l" id="backa_l" value="${measureDetail1.backa_l}">
		<input type="number" step="0.5" class="form-control" name="backa_l" id="backa_al" value="${measureDetail1.backa_al}">
    </div>
</div>

<div class="form-group row">
    <label for="fronta_l" class="col-sm-4 col-form-label pr-1 pl-1 text-center">앞장</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="fronta_l" id="fronta_l" value="${measureDetail1.fronta_l}">
		<input type="number" step="0.5" class="form-control" name="fronta_al" id="fronta_al" value="${measureDetail1.fronta_al}">
    </div>
</div>


<div class="form-group row">
    <label for="shoulder_w" class="col-sm-4 col-form-label pr-1 pl-1 text-center">어깨너비</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="shoulder_w" id="shoulder_w" value="${measureDetail1.shoulder_w}">
		<input type="number" step="0.5" class="form-control" name="shoulder_aw" id="shoulder_aw" value="${measureDetail1.shoulder_aw}">
    </div>
</div>

<div class="form-group row align-items-center">
    
    <label for="sleeve_l" class="col-sm-4 col-form-label pr-1 pl-1 text-center">소매길이</label>
   	<div class="input-group col-sm-4 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="sleeve_l" id="sleeve_l" value="${measureDetail1.sleeve_l}">
    </div>
    
    
    <div class="input-group col-sm-4">
    
    <div class="form-group row">
	    
	    <label for="sleevel_l" class="col-sm-2 col-form-label pr-1 pl-1 text-center">좌</label>
	   	<div class="input-group col-sm-10 pl-1 pr-1">
			<input type="number" step="0.5" class="form-control" name="sleevel_l" id="sleevel_l" value="${measureDetail1.sleevel_l}">
	    </div>
	    
        <label for="sleever_l" class="col-sm-2 col-form-label pr-1 pl-1 text-center">우</label>
	    <div class="input-group col-sm-10 pl-1 pr-1">
			<input type="number" step="0.5" class="form-control" name="sleever_l" id="sleever_l" value="${measureDetail1.sleever_l}">
		</div>
		
	</div>
	</div>
</div>


    

<div class="form-group row">
    <label for="back_w" class="col-sm-4 col-form-label pr-1 pl-1 text-center">뒷품</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="back_w" id="back_w" value="${measureDetail1.back_w}">
		<input type="number" step="0.5" class="form-control" name="back_aw" id="back_aw" value="${measureDetail1.back_aw}">
    </div>
</div>


<div class="form-group row">
    <label for="front_w" class="col-sm-4 col-form-label pr-1 pl-1 text-center">앞품</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="front_w" id="front_w" value="${measureDetail1.front_w}">
		<input type="number" step="0.5" class="form-control" name="front_aw" id="front_aw" value="${measureDetail1.front_aw}">
    </div>
</div>


<div class="form-group row">
    <label for="chest_s" class="col-sm-4 col-form-label pr-1 pl-1 text-center">가슴둘레</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="chest_s" id="chest_s" value="${measureDetail1.chest_s}">
		<input type="number" step="0.5" class="form-control" name="chest_as" id="chest_as" value="${measureDetail1.chest_as}">
    </div>
</div>


<div class="form-group row">
    <label for="belly_s" class="col-sm-4 col-form-label pr-1 pl-1 text-center">배둘레</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="belly_s" id="belly_s" value="${measureDetail1.belly_s}">
		<input type="number" step="0.5" class="form-control" name="belly_as" id="belly_as" value="${measureDetail1.belly_s}">
    </div>
</div>


<div class="form-group row">
    <label for="waist_s" class="col-sm-4 col-form-label pr-1 pl-1 text-center">허리둘레</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="waist_s" id="waist_s" value="${measureDetail1.waist_s}">
		<input type="number" step="0.5" class="form-control" name="waist_as" id="waist_as" value="${measureDetail1.waist_as}">
    </div>
</div>


<div class="form-group row">
    <label for="hip_s" class="col-sm-4 col-form-label pr-1 pl-1 text-center">볼기둘레</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="hip_s" id="hip_s" value="${measureDetail1.hip_s}">
		<input type="number" step="0.5" class="form-control" name="hip_as" id="hip_as" value="${measureDetail1.hip_as}">
    </div>
</div>


<div class="form-group row">
    <label for="pants_l" class="col-sm-4 col-form-label pr-1 pl-1 text-center">바지길이</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="pants_l" id="pants_l" value="${measureDetail1.pants_l}">
		<input type="number" step="0.5" class="form-control" name="pants_al" id="pants_al" value="${measureDetail1.pants_al}">
    </div>
</div>

<div class="form-group row">
    <label for="leg_l" class="col-sm-4 col-form-label pr-1 pl-1 text-center">다리길이</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="leg_l" id="leg_l" value="${measureDetail1.leg_l}">
		<input type="number" step="0.5" class="form-control" name="leg_al" id="leg_al" value="${measureDetail1.leg_al}">
    </div>
</div>

<div class="form-group row">
    <label for="pbottom_w" class="col-sm-4 col-form-label pr-1 pl-1 text-center pl-1 text-center">부리</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="pbottom_w" id="pbottom_w" value="${measureDetail1.pbottom_w}">
		<input type="number" step="0.5" class="form-control" name="pbottom_aw" id="pbottom_aw" value="${measureDetail1.pbottom_aw}">
    </div>
</div>
</div>






<!-- 2nd row -->
<div class="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">


<div class="form-group row align-items-center">
    
    <label for="sdrop_s" class="col-sm-4 col-form-label pr-1 pl-1 text-center">어깨쳐짐</label>
   	<div class="input-group col-sm-4 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="sdrop_s" id="sdrop_s" value="${measureDetail1.sdrop_s}">
    </div>
    
    
    <div class="input-group col-sm-4">
    
    <div class="form-group row">
	    
	    <label for="sdropl_s" class="col-sm-2 col-form-label pr-1 pl-1 text-center">좌</label>
	   	<div class="input-group col-sm-10 pl-1 pr-1">
			<input type="number" step="0.5" class="form-control" name="sdropl_s" id="sdropl_s" value="${measureDetail1.sdropl_s}">
	    </div>
	    
        <label for="sdropr_s" class="col-sm-2 col-form-label pr-1 pl-1 text-center">우</label>
	    <div class="input-group col-sm-10 pl-1 pr-1">
			<input type="number" step="0.5" class="form-control" name="sdropr_s" id="sdropr_s" value="${measureDetail1.sdropr_s}">
		</div>
		
	</div>
	</div>
</div>

<div class="form-group row">
    <label for="neck_d" class="col-sm-4 col-form-label pr-1 pl-1 text-center">목들이</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="neck_d" id="neck_d" value="${measureDetail1.neck_d}">
		<input type="number" step="0.5" class="form-control" name="neck_ad" id="neck_ad" value="${measureDetail1.neck_ad}">
    </div>
</div>

<div class="form-group row">
    <label for="hip_d" class="col-sm-4 col-form-label pr-1 pl-1 text-center">볼기들이</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="hip_d" id="hip_d" value="${measureDetail1.hip_d}">
		<input type="number" step="0.5" class="form-control" name="hip_ad" id="hip_ad" value="${measureDetail1.hip_ad}">
    </div>
</div>

<div class="form-group row">
    <label for="waist_d" class="col-sm-4 col-form-label pr-1 pl-1 text-center">허리들이</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="waist_d" id="waist_d" value="${measureDetail1.waist_d}">
		<input type="number" step="0.5" class="form-control" name="waist_ad" id="waist_ad" value="${measureDetail1.waist_ad}">
    </div>
</div>

<div class="form-group row">
    <label for="belly_d" class="col-sm-4 col-form-label pr-1 pl-1 text-center">배나온량</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="belly_d" id="belly_d" value="${measureDetail1.belly_d}">
		<input type="number" step="0.5" class="form-control" name="belly_ad" id="belly_ad" value="${measureDetail1.belly_ad}">
    </div>
</div>

<div class="form-group row">
    <label for="chest_d" class="col-sm-4 col-form-label pr-1 pl-1 text-center">가슴다트</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="chest_d" id="chest_d" value="${measureDetail1.chest_d}">
		<input type="number" step="0.5" class="form-control" name="chest_ad" id="chest_ad" value="${measureDetail1.chest_ad}">
    </div>
</div>

<hr>

<div class="form-group row">
    <label for="weight_s" class="col-sm-4 col-form-label pr-1 pl-1 text-center">몸무게</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="weight_s" id="weight_s" value="${measureDetail1.weight_s}">
		<input type="number" step="0.5" class="form-control" name="weight_as" id="weight_as" value="${measureDetail1.weight_as}">
    </div>
</div>

<hr>

<div class="form-group row">
    <label for="neck_s" class="col-sm-4 col-form-label pr-1 pl-1 text-center">목치수</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="neck_s" id="neck_s" value="${measureDetail1.neck_s}">
		<input type="number" step="0.5" class="form-control" name="neck_as" id="neck_as" value="${measureDetail1.neck_as}">
    </div>
</div>

<div class="form-group row">
    <label for="sshoulder_s" class="col-sm-4 col-form-label pr-1 pl-1 text-center">셔츠어깨</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="sshoulder_s" id="sshoulder_s" value="${measureDetail1.sshoulder_s}">
    </div>
</div>

<div class="form-group row align-items-center">
    
    <label for="ssleeve_l" class="col-sm-4 col-form-label pr-1 pl-1 text-center">셔츠소매</label>
   	<div class="input-group col-sm-4 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="ssleeve_l" id="ssleeve_l" value="${measureDetail1.ssleeve_l}">
    </div>
    
    
    <div class="input-group col-sm-4">
    
    <div class="form-group row">
	    
	    <label for="ssleevel_l" class="col-sm-2 col-form-label pr-1 pl-1 text-center">좌</label>
	   	<div class="input-group col-sm-10 pl-1 pr-1">
			<input type="number" step="0.5" class="form-control" name="ssleevel_l" id="ssleevel_l" value="${measureDetail1.ssleevel_l}">
	    </div>
	    
        <label for="ssleever_l" class="col-sm-2 col-form-label pr-1 pl-1 text-center">우</label>
	    <div class="input-group col-sm-10 pl-1 pr-1">
			<input type="number" step="0.5" class="form-control" name="ssleever_l" id="ssleever_l" value="${measureDetail1.ssleever_l}">
		</div>
		
	</div>
	</div>
</div>

<div class="form-group row">
    <label for="shirts_l" class="col-sm-4 col-form-label pr-1 pl-1 text-center">셔츠길이</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="shirts_l" id="shirts_l" value="${measureDetail1.shirts_l}">
    </div>
</div>

</div>
</div>
	<hr>

<%-- <input type="hidden" name="c_id" id="c_id" value="<c:out value="${customerid}"/>"> --%>
<input type="hidden" name="mid" id="mid" value="<c:out value="${measureDetail1.mid}"/>">	
<input type="hidden" name="c_id" id="c_id" value="${measureDetail1.cid}"/>
<div class="row">

<div class="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">

	<div class="form-group row">
		<label for="m_day" class="col-sm-4 col-form-label pr-1 pl-1 text-center">측정일</label>
		<div class="input-group col-sm-8 pl-1 pr-1">
			<input type="date" class="form-control" name="m_day" id="m_day" value="${measureDetail1.m_day}">
		</div>
	</div>

</div>

<div class="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">

	<div class="form-group row">
		<label for="sshoulder_s" class="col-sm-4 col-form-label pr-1 pl-1 text-center">담당 매니저</label>
		<div class="input-group col-sm-8 pl-1 pr-1">
			<select class="form-control" name="manager_id" id="manager_id">
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
<textarea class="form-control" type="text" name="memo" id="memo" style="width:100%" rows="3" maxlength="200">${measureDetail1.memo}</textarea>
</div>
</div>

 <hr>

<div class="row text-center">
<span class="col-1"></span>
<button type="button" class="btn btn-outline-dark col-4" id="btn-update">수정</button>
<span class="col-2"></span>
<button type="button" class="btn btn-outline-dark col-4" id="btn-delete">삭제</button>
<span class="col-1"></span>
</div>

</form>
</body>
</html>