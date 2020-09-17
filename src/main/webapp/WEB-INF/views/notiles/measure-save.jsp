<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<title>치수 입력 화면</title>
<style>
.form-group{
	margin-bottom: 0;
}
</style>
	<script>
	document.getElementById('save_m_day').valueAsDate = new Date();
	</script>

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
    <label for="save_height" class="col-sm-4 col-form-label pr-1 pl-1 text-center">키</label>
    <div class="col-sm-8 pl-1 pr-1">
      <input type="number" step="0.5" class="form-control" name="height" id="save_height">
    </div>
</div>

<div class="form-group row">
    <label for="save_total_l" class="col-sm-4 col-form-label pr-1 pl-1 text-center">총장</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="total_l" id="save_total_l">
		<input type="number" step="0.5" class="form-control" name="total_al" id="save_total_al">
    </div>
</div>

<div class="form-group row">
    <label for="save_armhole_l" class="col-sm-4 col-form-label pr-1 pl-1 text-center">진동</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="armhole_l" id="save_armhole_l">
		<input type="number" step="0.5" class="form-control" name="armhole_al" id="save_armhole_al">
    </div>
</div>

<div class="form-group row">
    <label for="save_backa_l" class="col-sm-4 col-form-label pr-1 pl-1 text-center">뒷장</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="backa_l" id="save_backa_l">
		<input type="number" step="0.5" class="form-control" name="backa_l" id="save_backa_al">
    </div>
</div>

<div class="form-group row">
    <label for="save_fronta_l" class="col-sm-4 col-form-label pr-1 pl-1 text-center">앞장</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="fronta_l" id="save_fronta_l">
		<input type="number" step="0.5" class="form-control" name="fronta_al" id="save_fronta_al">
    </div>
</div>


<div class="form-group row">
    <label for="save_shoulder_w" class="col-sm-4 col-form-label pr-1 pl-1 text-center">어깨너비</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="shoulder_w" id="save_shoulder_w">
		<input type="number" step="0.5" class="form-control" name="shoulder_aw" id="save_shoulder_aw">
    </div>
</div>

<div class="form-group row align-items-center">
    
    <label for="save_sleeve_l" class="col-sm-4 col-form-label pr-1 pl-1 text-center">소매길이</label>
   	<div class="input-group col-sm-4 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="sleeve_l" id="save_sleeve_l">
    </div>
    
    
    <div class="input-group col-sm-4">
    
    <div class="form-group row">
	    
	    <label for="save_sleevel_l" class="col-sm-2 col-form-label pr-1 pl-1 text-center">좌</label>
	   	<div class="input-group col-sm-10 pl-1 pr-1">
			<input type="number" step="0.5" class="form-control" name="sleevel_l" id="save_sleevel_l">
	    </div>
	    
        <label for="save_sleever_l" class="col-sm-2 col-form-label pr-1 pl-1 text-center">우</label>
	    <div class="input-group col-sm-10 pl-1 pr-1">
			<input type="number" step="0.5" class="form-control" name="sleever_l" id="save_sleever_l">
		</div>
		
	</div>
	</div>
</div>


    

<div class="form-group row">
    <label for="save_back_w" class="col-sm-4 col-form-label pr-1 pl-1 text-center">뒷품</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="back_w" id="save_back_w">
		<input type="number" step="0.5" class="form-control" name="back_aw" id="save_back_aw">
    </div>
</div>


<div class="form-group row">
    <label for="save_front_w" class="col-sm-4 col-form-label pr-1 pl-1 text-center">앞품</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="front_w" id="save_front_w">
		<input type="number" step="0.5" class="form-control" name="front_aw" id="save_front_aw">
    </div>
</div>


<div class="form-group row">
    <label for="save_chest_s" class="col-sm-4 col-form-label pr-1 pl-1 text-center">가슴둘레</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="chest_s" id="save_chest_s">
		<input type="number" step="0.5" class="form-control" name="chest_as" id="save_chest_as">
    </div>
</div>


<div class="form-group row">
    <label for="save_belly_s" class="col-sm-4 col-form-label pr-1 pl-1 text-center">배둘레</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="belly_s" id="save_belly_s">
		<input type="number" step="0.5" class="form-control" name="belly_as" id="save_belly_as">
    </div>
</div>


<div class="form-group row">
    <label for="save_waist_s" class="col-sm-4 col-form-label pr-1 pl-1 text-center">허리둘레</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="waist_s" id="save_waist_s">
		<input type="number" step="0.5" class="form-control" name="waist_as" id="save_waist_as">
    </div>
</div>


<div class="form-group row">
    <label for="save_hip_s" class="col-sm-4 col-form-label pr-1 pl-1 text-center">볼기둘레</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="hip_s" id="save_hip_s">
		<input type="number" step="0.5" class="form-control" name="hip_as" id="save_hip_as">
    </div>
</div>


<div class="form-group row">
    <label for="save_pants_l" class="col-sm-4 col-form-label pr-1 pl-1 text-center">바지길이</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="pants_l" id="save_pants_l">
		<input type="number" step="0.5" class="form-control" name="pants_al" id="save_pants_al">
    </div>
</div>

<div class="form-group row">
    <label for="save_leg_l" class="col-sm-4 col-form-label pr-1 pl-1 text-center">다리길이</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="leg_l" id="save_leg_l">
		<input type="number" step="0.5" class="form-control" name="leg_al" id="save_leg_al">
    </div>
</div>

<div class="form-group row">
    <label for="save_pbottom_w" class="col-sm-4 col-form-label pr-1 pl-1 text-center pl-1 text-center">부리</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="pbottom_w" id="save_pbottom_w">
		<input type="number" step="0.5" class="form-control" name="pbottom_aw" id="save_pbottom_aw">
    </div>
</div>
</div>






<!-- 2nd row -->
<div class="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">

<div class="form-group row align-items-center">
    
    <label for="save_sdrop_s" class="col-sm-4 col-form-label pr-1 pl-1 text-center">어깨쳐짐</label>
   	<div class="input-group col-sm-4 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="sdrop_s" id="save_sdrop_s">
    </div>
    
    
    <div class="input-group col-sm-4">
    
    <div class="form-group row">
	    
	    <label for="save_sdropl_s" class="col-sm-2 col-form-label pr-1 pl-1 text-center">좌</label>
	   	<div class="input-group col-sm-10 pl-1 pr-1">
			<input type="number" step="0.5" class="form-control" name="sdropl_s" id="save_sdropl_s">
	    </div>
	    
        <label for="save_sdropr_s" class="col-sm-2 col-form-label pr-1 pl-1 text-center">우</label>
	    <div class="input-group col-sm-10 pl-1 pr-1">
			<input type="number" step="0.5" class="form-control" name="sdropr_s" id="save_sdropr_s">
		</div>
		
	</div>
	</div>
</div>


<div class="form-group row">
    <label for="save_neck_d" class="col-sm-4 col-form-label pr-1 pl-1 text-center">목들이</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="neck_d" id="save_neck_d">
		<input type="number" step="0.5" class="form-control" name="neck_ad" id="save_neck_ad">
    </div>
</div>

<div class="form-group row">
    <label for="save_hip_d" class="col-sm-4 col-form-label pr-1 pl-1 text-center">볼기들이</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="hip_d" id="save_hip_d">
		<input type="number" step="0.5" class="form-control" name="hip_ad" id="save_hip_ad">
    </div>
</div>

<div class="form-group row">
    <label for="save_waist_d" class="col-sm-4 col-form-label pr-1 pl-1 text-center">허리들이</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="waist_d" id="save_waist_d">
		<input type="number" step="0.5" class="form-control" name="waist_ad" id="save_waist_ad">
    </div>
</div>

<div class="form-group row">
    <label for="save_belly_d" class="col-sm-4 col-form-label pr-1 pl-1 text-center">배나온량</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="belly_d" id="save_belly_d">
		<input type="number" step="0.5" class="form-control" name="belly_ad" id="save_belly_ad">
    </div>
</div>

<div class="form-group row">
    <label for="save_chest_d" class="col-sm-4 col-form-label pr-1 pl-1 text-center">가슴다트</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="chest_d" id="save_chest_d">
		<input type="number" step="0.5" class="form-control" name="chest_ad" id="save_chest_ad">
    </div>
</div>

<hr>

<div class="form-group row">
    <label for="save_weight_s" class="col-sm-4 col-form-label pr-1 pl-1 text-center">몸무게</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="weight_s" id="save_weight_s">
		<input type="number" step="0.5" class="form-control" name="weight_as" id="save_weight_as">
    </div>
</div>

<hr>

<div class="form-group row">
    <label for="save_neck_s" class="col-sm-4 col-form-label pr-1 pl-1 text-center">목치수</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="neck_s" id="save_neck_s">
		<input type="number" step="0.5" class="form-control" name="neck_as" id="save_neck_as">
    </div>
</div>

<div class="form-group row">
    <label for="save_sshoulder_s" class="col-sm-4 col-form-label pr-1 pl-1 text-center">셔츠어깨</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="sshoulder_s" id="save_sshoulder_s">
    </div>
</div>

<div class="form-group row align-items-center">
    
    <label for="save_ssleeve_l" class="col-sm-4 col-form-label pr-1 pl-1 text-center">셔츠소매</label>
   	<div class="input-group col-sm-4 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="ssleeve_l" id="save_ssleeve_l">
    </div>
    
    
    <div class="input-group col-sm-4">
    
    <div class="form-group row">
	    
	    <label for="save_ssleevel_l" class="col-sm-2 col-form-label pr-1 pl-1 text-center">좌</label>
	   	<div class="input-group col-sm-10 pl-1 pr-1">
			<input type="number" step="0.5" class="form-control" name="ssleevel_l" id="save_ssleevel_l">
	    </div>
	    
        <label for="save_ssleever_l" class="col-sm-2 col-form-label pr-1 pl-1 text-center">우</label>
	    <div class="input-group col-sm-10 pl-1 pr-1">
			<input type="number" step="0.5" class="form-control" name="ssleever_l" id="save_ssleever_l">
		</div>
		
	</div>
	</div>
</div>

<div class="form-group row">
    <label for="save_shirts_l" class="col-sm-4 col-form-label pr-1 pl-1 text-center">셔츠길이</label>
   	<div class="input-group col-sm-8 pl-1 pr-1">
		<input type="number" step="0.5" class="form-control" name="shirts_l" id="save_shirts_l">
    </div>
</div>

</div>
</div>
	<hr>



<input type="hidden" name="c_id" id="save_c_id" value="<c:out value="${customerid}"/>">

<div class="row">
	<div class="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">

		<div class="form-group row">
			<label for="save_m_day" class="col-sm-4 col-form-label pr-1 pl-1 text-center">측정일</label>
			<div class="input-group col-sm-8 pl-1 pr-1">
				<input type="date" class="form-control" name="m_day" id="save_m_day">
			</div>
		</div>

	</div>

	<div class="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">

		<div class="form-group row">
			<label for="save_sshoulder_s" class="col-sm-4 col-form-label pr-1 pl-1 text-center">담당 매니저</label>
			<div class="input-group col-sm-8 pl-1 pr-1">
				<select class="form-control" name="manager_id" id="save_manager_id">
					<option>manager1</option>
					<option>manager2</option>
					<option>manager3</option>
				</select>
				<%-- <input type="text" class="form-control" name="manager_id" id="save_manager_id" value="admin"> --%>
			</div>
		</div>
	</div>

</div>
<hr>
<div class="row">

<div class="col-2 col-sm-2 col-md-2 col-lg-2 col-xl-2 pr-1 pl-1 text-center align-self-center">
	<label for="save_memo">메모</label>
</div>


<div class="col-10 col-sm-10 col-md-10 col-lg-10 col-xl-10 input-group pr-1 pl-1">
<textarea class="form-control" type="text" name="memo" id="save_memo" style="width:100%" rows="3" maxlength='50' placeholder="최대 50자 입력 가능"></textarea>
</div>
</div>



<hr>

<div class="row text-center">
<span class="col-1"></span>
<button type="button" class="btn btn-outline-dark col-4" id="btn-save">저장</button>
<span class="col-2"></span>
<button type="button" class="btn btn-outline-dark col-4" onClick="window.location.reload()">취소</button>
<span class="col-1"></span>
</div>

</form>
</body>
</html>