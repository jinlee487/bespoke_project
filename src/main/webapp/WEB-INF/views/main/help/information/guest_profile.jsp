<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
					<div class="form-group col-lg-4">
						<label for="c_id">이메일</label>
						<div class="input-group">
							<input type="text" class="form-control" name="email"
							readonly="readonly" value="${list.email}">
						</div>
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-lg-4">
						<label for="c_id">이름</label>
						<div class="input-group">
							<input type="text" class="form-control" name="c_id"
							readonly="readonly" value="${list.name}">
						</div>
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-lg-4">
						<label for="c_id">전화번호</label>
						<div class="input-group">
							<input type="text" class="form-control" name="c_id"
							readonly="readonly" value="${list.phone_number}">
						</div>
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-lg-4">
						<label for="c_id">생년월일</label>
						<div class="input-group">
							<input type="text" class="form-control" name="c_id"
							readonly="readonly" value="${list.birth}">
						</div>
					</div>
					<div class="form-group col-lg-4"></div>
					<div class="form-group col-lg-4">
						<label for="c_id">생년월일</label>
						<div class="input-group">
							<input type="text" class="form-control" name="c_id"
							readonly="readonly" value="${list.name}">
						</div>
					</div>
				</div>
			</div>
		</main>
	</div>
</body>
</html>