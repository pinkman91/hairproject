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
	<!-- 고객 정보를 입력받아 등록 버튼 클릭 시 DB에 해당 정보를 등록 -->
	<!-- 팝업 창의 싸이즈 고정 -->
	<div class="container-fluid">
		<div class="card shadow mb-4">
			<div class="card-header py-3 text-center">
				<h1 class="m-0 font-weight-bold text-primary">
					신규 고객 등록
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
					<input type="button" class="btn btn-primary btn-user btn-primary" value="등록" /> 
					<input type="button" class="btn btn-primary btn-user btn-primary" value="취소" />
				</div>
			</div>
		</div>
	</div>
</body>
</html>