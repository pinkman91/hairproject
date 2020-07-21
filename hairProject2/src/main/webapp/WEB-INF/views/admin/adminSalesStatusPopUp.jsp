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
					해당날짜 매출현황
				</h1>
			</div>
			<!--  관리자 매출현황 페이지 해당날짜 팝업창  -->
			<!--  해당되는 날짜를 누르면 그 기간안에 있는 영업 리스트를 가져옴 -->
			<!--  삭제 를 체크한 후에 확인버튼을 누르면 수정 하시겠냐는 경고창 에서 
				  확인 버튼을 누르면 데이터 삭제	
			  -->
			<!--  데이터를 수정할시에는 수정하고 싶은곳에 데이터를 기입하고 정말 확인버튼을누르면
				  수정 하시겠냐는 경고창에서 확인 버튼을 누르면 데이터 수정
			 -->
			<div class="card-body">
				<div class="table-responsive text-center">
				
					<!--  매출현황별 기간검색 테이블 시작  -->
					<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="margin-bottom: 50px;">
							<thead style="font-size:16px;">	
								<tr>
									<th colspan="10"><h4>날짜표시</h4></th>
								</tr>
								<tr>
									<th>이름</th>
									<th>구분</th>
									<th>상품</th>
									<th>담당자</th>
									<th>단가</th>
									<th>현금</th>
									<th>카드</th>
									<th>포인트</th>
									<th>소계</th>
									<th>삭제</th>
								</tr>
								<tr>
									<td><input type="text"/></td>
									<td><input type="text"/></td>
									<td><input type="text"/></td>
									<td><input type="text"/></td>
									<td><input type="text"/></td>
									<td><input type="text"/></td>
									<td><input type="text"/></td>
									<td><input type="text"/></td>
									<td><input type="text"/></td>
									<td><input type="checkbox" /></td>
								</tr>
							</thead>
					</table>
						<input type="button" class="btn btn-warning" value="확인" />
						<input type="button" class="btn btn-primary btn-user btn-primary closePopUp" value="취소" />
				</div>
			</div>
		</div>
	</div>
</body>
</html>