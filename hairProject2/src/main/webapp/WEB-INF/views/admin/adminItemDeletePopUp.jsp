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
					제품 삭제
				</h1>
			</div>
				<!--  제품삭제 팝업창  -->
				<!--  영업관리 페이지에서 해당되는 제품에 삭제버튼을 누르면 
						영업관리 페이지 리스트에 있는 제품 한품목을 가져와 삭제버튼을누르면 
						해당 테이블에 있는 값 삭제
				  -->
			<div class="card-body">
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
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>				
							</thead>
					</table>
						<input type="submit" class="btn btn-danger" value="삭제" />
						<input type="submit" class="btn btn-primary btn-user btn-primary closePopUp" value="취소" />
				</div>
			</div>
		</div>
	</div>
</body>
</html>