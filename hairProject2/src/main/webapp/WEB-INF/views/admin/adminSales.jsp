<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp" %>
<script type="text/javascript">
	$(document).ready(function(){
	   var option = 'location=no,toolabar=no,menubar=no,status=no,toolbar=no,width=900,height=300,left=100,top=50';
		//제품 수정 버튼
		$('.itemUpdateButton').click(function(){
			window.open("http://localhost:8080/set/adminItemUpdatePopUp","popUp","option");
		});
		// 제품 삭제 버튼
		$('.itemDeleteButton').click(function(){
			window.open("http://localhost:8080/set/adminItemDeletePopUp","popUp","option");
		});
		//시술 수정 버튼
		$('.serviceUpdateButton').click(function(){
			window.open("http://localhost:8080/set/adminServiceUpdatePopUp","popUp","option");
		});
		//제품 삭제 버튼
		$('.serviceDeleteButton').click(function(){
			window.open("http://localhost:8080/set/adminServiceDeletePopUp","popUp","option");
		});
		//제품등록페이지 이동 버튼
		$('.itemInsertButton').click(function(){
			window.open("http://localhost:8080/set/adminItemInsertPopUp","popUp","option");
		});
		//시술등록페이지 이동 버튼
		$('.serviceInsertButton').click(function(){
			window.open("http://localhost:8080/set/adminServiceInsertPopUp","popUp","option");
		});
	 
	});
</script>

	<div class="container-fluid">
		<div class="card shadow mb-4">
			<div class="card-header py-3 text-center">
				<h1 class="m-0 font-weight-bold text-primary">
					영업 관리
				</h1>
			</div>
			<div class="card-body">
				<div class="table-responsive text-center">
				<!--  각 tr td 는 반복문으로 데이터를 불러오면서 자동으로 줄생성을 하게 만든다 
						수정: 버튼을 누르면 해당 데이터 내용을 가지고 수정팝업창으로 이동해서 수정할수있도록한다.
						삭제: 삭제 버튼을 누르면 해당 데이터 내용을가지고 삭제팝업창으로 이동해서 삭제할수있도록한다.
						제품등록: 제품등록 페이지를 누르면 제품등록 팝업창으로 간다 제품등록을 하면 해당 리스트목록에 출력된다.
						영업등록: 시술등록 페이지를 누르면 시술등록 팝업창으로 간다 시술등록을 하면 해당 리스트목록에 출력된다.
				 -->
 	  			<!--  모든 테이블 틀은 반복문으로 유동적으로 변경될수있도록 수정코딩함  -->
					<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
							<thead style="font-size:16px;">	
								<tr>
									<th colspan="6"><h4>제품</h4></th>
								</tr>
								<tr>
									<th>회사명</th>
									<th>구분</th>
									<th>제품명</th>
									<th>판매금액</th>
									<th colspan="2" style="width:10px;">제품관리</th>
								</tr>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td><input type="button" class="btn btn-primary btn-user btn-primary itemUpdateButton" value="수정"  style="width:50px;"/></td>
									<td><input type="button" class="btn btn-danger itemDeleteButton" value="삭제"  style="width:50px;"/></td>
								</tr>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td><input type="button" class="btn btn-primary btn-user btn-primary " value="수정"  style="width:50px;"/></td>
									<td><input type="button" class="btn btn-danger " value="삭제"  style="width:50px;"/></td>
								</tr>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td><input type="button" class="btn btn-primary btn-user btn-primary" value="수정"  style="width:50px;"/></td>
									<td><input type="button" class="btn btn-danger" value="삭제"  style="width:50px;"/></td>
								</tr>
								<tr>
									<th colspan="6"><h4>시술</h4></th>
								</tr>
								<tr>
									<th>시술명</th>
									<th>구분</th>
									<th>종류</th>
									<th>판매금액</th>
									<th colspan="2" style="width: 10px;">영업관리</th>
								</tr>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td style="width:50px;"><input type="button" class="btn btn-primary btn-user btn-primary serviceUpdateButton" value="수정"  style="width:50px;"/></td>
									<td style="width:50px;"><input type="button" class="btn btn-danger serviceDeleteButton" value="삭제"  style="width:50px;"/></td>
								</tr>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td style="width:50px;"><input type="button" class="btn btn-primary btn-user btn-primary" value="수정"  style="width:50px;"/></td>
									<td style="width:50px;"><input type="button" class="btn btn-danger" value="삭제"  style="width:50px;"/></td>
								</tr>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td style="width:50px;"><input type="button" class="btn btn-primary btn-user btn-primary" value="수정"  style="width:50px;"/></td>
									<td style="width:50px;"><input type="button" class="btn btn-danger" value="삭제"  style="width:50px;"/></td>
								</tr>
							</thead>
					</table>
					<input type="submit" class="btn btn-primary btn-user btn-primary itemInsertButton" value="제품등록" />
					<input type="submit" class="btn btn-primary btn-user btn-primary serviceInsertButton" value="시술등록" />
				</div>
			</div>
		</div>
	</div>
<%@include file="../include/footer.jsp" %>