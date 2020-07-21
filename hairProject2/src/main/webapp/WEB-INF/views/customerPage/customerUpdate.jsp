<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MainPage</title>
<link rel="stylesheet" href="resources/css/sb-admin-2.css">
<link rel="stylesheet" href="resources/css/sb-admin-2.min.css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<style>
.midLocation {
	margin: 0 auto;
}
</style>
</head>
<body>
	<!-- 해당 고객의 저장된 정보를 노출하고 수정 가능버튼을 클릭 시  -->
	<!-- 수정 버튼 클릭 시 수정된 정보를 DB에 저장 -->
	<!-- 삭제 버튼 클릭 시 DB에서 해당 고객 정보 삭제  -->
	<!-- 팝업 창의 싸이즈 고정 -->
	<div class="container-fluid">
		<div class="card shadow mb-4">
			<div class="card-header py-3 text-center">
				<h1 class="m-0 font-weight-bold text-primary">
					고객 정보 수정
					</h1>
			</div>
			<div class="card-body">
				<div class="table-responsive text-center">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th>성명</th>
								<td><input type="text" /></td>
								<th>고객번호</th>
								<td><input type="text" /></td>
								<th>고객등급</th>
								<td><input type="text" /></td>
							</tr>
							<tr>
								<th>담담자</th>
								<td><input type="text" /></td>
								<th>전화번호</th>
								<td><input type="text" /></td>
								<th>이메일</th>
								<td><input type="text" /></td>
							</tr>
							<tr>
								<th>최초방문</th>
								<td><input type="text" /></td>
								<th>최종방문</th>
								<td><input type="text" /></td>
								<th>포인트</th>
								<td><input type="text" /></td>
							</tr>
							<tr>
								<th>참고사항</th>
								<td colspan="5"><textarea rows="" cols=""></textarea></td>
							</tr>
						</thead>

					</table>
					<input type="button" class="btn btn-primary btn-user btn-primary" value="수정" /> 
					<input type="button" class="btn btn-primary btn-user btn-primary bg-gradient-danger" value="삭제" /> 
					<input type="button" class="btn btn-primary btn-user btn-primary" value="취소" />
				</div>
			</div>
		</div>
	</div>
</body>
</html>