<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="col-sm-10">
		<main role="main" class="px-md-4">
			<div
				class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
				<h1 class="h2">내 정보</h1>
			</div>
			<div class="container" role="main">
				<div class="form-row">
					<div class="form-group col-lg-4 col-sm-8">
						<label for="c_id">고객 번호</label>
						<div class="input-group">
							<input type="text" name="c_id"
								placeholder="고객 번호" readonly value="${cData.c_id}"
								style="text-align: center; padding-right: 1px">
						</div>
					</div>

					<div class="form-group col-lg-4 col-sm-8">
						<label for="c_name">성함</label> <input type="text"
							class="form-control" name="c_name" value="${cData.c_name}">
					</div>

					<div class="form-group col-lg-4 col-sm-4 ">
						<label for="c_name">직함</label> <input type="text"
							class="form-control" name="title" value="${cData.title}">
					</div>
				</div>
				<hr>
				<!--연락처 -->
				<div class="form-row">
					<div class="form-group col-lg-3 col-md-6">
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fa fa-mobile">
										휴대폰</i></span>
							</div>
							<input type="text" class="form-control" name="cp_no"
								value="${cData.cp_no}">
						</div>
					</div>
					<div class="form-group col-lg-3 col-md-6">
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fa fa-home">
										집전화</i></span>
							</div>
							<input type="text" class="form-control" name="hp_no"
								value="${cData.hp_no}">
						</div>
					</div>
					<div class="form-group col-lg-3 col-md-6">
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fa fa-building">
										사무실</i></span>
							</div>
							<input type="text" class="form-control" name="bzp_no"
								value="${cData.bzp_no}">
						</div>
					</div>
					<div class="form-group col-lg-3 col-md-6">
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fa fa-fax">
										FAX</i></span>
							</div>
							<input type="text" class="form-control" name="fax_no"
								value="${cData.fax_no}">
						</div>
					</div>
				</div>
				<!--  주소 검색 -->
				<div class="form-row">
					<div class="form-group col-lg-10">
						<label for="home_adrs">자택 주소</label>
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fa fa-home"></i></span>
							</div>
							<input type="text" class="form-control bespoke-left"
								name="home_adrs" id="home_adrs" readonly
								value="${cData.home_adrs} "> <input type="text"
								class="form-control bespoke-left" name="home_adrsd"
								id="home_adrsd" value="${cData.home_adrsd} ">
							<div class="input-group-append">
								<button type="button" class="form-control btn btn-primary"
									id="homeAdrsBtn">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="form-group col-lg-2 col-md-4">
						<label for="home_zipcode">우편번호</label> <input type="text"
							class="form-control" name="home_zipcode" id="home_zipcode"
							readonly value="${cData.home_zipcode}">
					</div>
				</div>

				<div class="form-row">
					<div class="form-group col-lg-10 col-md-12">
						<label for="home_adrs">사무실 주소</label>
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fa fa-building"></i></span>
							</div>
							<input type="text" class="form-control bespoke-left"
								name="bz_adrs" id="bz_adrs" readonly value="${cData.bz_adrs} ">
							<input type="text" class="form-control bespoke-left"
								name="bz_adrsd" id="bz_adrsd" value="${cData.bz_adrsd} ">
							<div class="input-group-append">
								<button type="button" class="form-control btn btn-primary"
									id="bzAdrsBtn">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="form-group col-lg-2 col-md-4">
						<label for="home_zipcode">우편번호</label> <input type="text"
							class="form-control" name="bz_zipcode" id="bz_zipcode" readonly
							value="${cData.bz_zipcode}">
					</div>
					<div class="form-group col-lg-9 col-md-5">
						<label for="company">회사명</label> <input type="text"
							class="form-control" id="company" value="${cData.company}">
					</div>
					<div class="form-group col-lg-3 col-md-3">
						<label for="mail">DM 수신처</label>
						<div class="input-group bespoke-center">
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="mail"
									id="mailRadio1" value="0"
									<c:out value="${cData.mail eq 0 ? ' checked=checked':'' }"/>>
								<label class="form-check-label" for="mailRadio1"><i
									class="fa fa-home">자택</i></label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="mail"
									id="mailRadio2" value="1"
									<c:out value="${cData.mail eq 1 ? ' checked=checked':'' }"/>>
								<label class="form-check-label" for="mailRadio2"><i
									class="fa fa-building">사무실</i></label>
							</div>
						</div>
					</div>
				</div>

				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="email">E-mail</label> <input type="email"
							class="form-control" id="email" value="${cData.email}">
					</div>
					<div class="form-group col-md-6">
						<label for="website">웹사이트</label> <input type="url"
							class="form-control" id="website" value="${cData.website}">
					</div>
				</div>

				<div class="form-row">
					<div class="form-group col-md-4 col-sm-8">
						<label for="birth_day">생일</label> <input type="date"
							class="form-control" id="birth_day" value="${cData.birth_day}">
					</div>
					<div class="form-group col-md-4 col-sm-4">
						<label for="birth_day"></label>
						<div class="form-check">
							<input class="form-check-input" type="checkbox"
								name="birth_lunar_b" id="birth_lunar_b" value="0"
								<c:out value="${cData.birth_lunar_b eq 1 ? ' checked=checked':'' }"/>>
							<label class="form-check-label" for="birth_lunar_b"><i
								class="fa fa-moon-o"></i> 음력</label>
						</div>
					</div>
					<div class="form-group col-md-4">
						<label for="wedding_day">결혼기념일</label> <input type="date"
							class="form-control" id="wedding_day"
							value="${cData.wedding_day}">
					</div>
				</div>

				<div class="form-row">
					<div class="form-group col-lg-6">
						<label for="c_photo_file">고객 사진</label> <input type="file"
							class="form-control-file border" id="c_photo_file"
							value="${cData.c_photo_file}">
					</div>
				</div>

				<div class="form-row m-t-10">
					<div class="form-group col-lg-4 col-md-6 col-auto-mr ">
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fa fa-clock">최종수정일</i></span>
							</div>
							<input type="text" class="form-control" id="last_edit_day"
								readonly value="${cData.last_edit_day}">
						</div>
					</div>
					<div class="form-group col-lg-8 col-md-6">
						<button type="submit"
							class="btn btn-outline-primary pull-right mr-1 p-b-t-8"
							id="submitbtn" disabled>수정하기</button>
					</div>
				</div>
			</div>
		</main>
	</div>
</body>
</html>