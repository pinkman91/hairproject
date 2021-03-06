<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MainPage</title>
<link rel="stylesheet" href="resources/css/sb-admin-2.css">
<link rel="stylesheet" href="resources/css/sb-admin-2.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
$(document).ready(function(){
		//창닫기 취소 버튼
		$('.closePopUp').click(function(){
			close();
		});
});
</script>
</head>
<body>
	<div class="container-fluid">
		<div class="card shadow mb-4">
			<div class="card-header py-3 text-center">
				<h1 class="m-0 font-weight-bold text-primary">
					제품 등록
				</h1>
			</div>
			<div class="card-body">
				<!--  제품등록 팝업창  -->
				<!--  제품의 회사명 구분 종류 판매금액을 입력후에 등록버튼을누르면
						해당 되는테이블에 데이터 저장
				  -->
				<div class="table-responsive text-center">
					<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
							<thead style="font-size:16px;">	
								<tr>
									<th>회사명</th>
									<th>구분</th>
									<th>종류</th>
									<th>판매금액</th>
								</tr>			
								<tr>
									<td><input type="text" style="width: 100%;"></td>
									<td><input type="text" style="width: 100%;"></td>
									<td><input type="text" style="width: 100%;"></td>
									<td><input type="text" style="width: 100%;"></td>
								</tr>				
							</thead>
					</table>
						<input type="submit" class="btn btn-success" value="등록" />
						<input type="submit" class="btn btn-primary btn-user btn-primary closePopUp" value="취소" />
				</div>
			</div>
		</div>
	</div>
</body>
</html>