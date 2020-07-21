<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp" %>
	<div class="container-fluid">
		<div class="card shadow mb-4">
			<div class="card-header py-3 text-center">
				<h1 class="m-0 font-weight-bold text-primary">
					관리자 매출현황
				</h1>
			</div>
			<!--  검색기간 설정후 검색버튼을 누르면 하단에 일별 리스트 테이블에 값이 출력
					검색기간 날짜를 누르면 해당 되는 날짜의 영업 내용 팝업창이 나오도록함.
			 -->
			<!--  모든 테이블 틀은 반복문으로 유동적으로 변경될수있도록 코딩함  -->
			<div class="card-body">
				<div class="table-responsive text-center">
				
					<!--  매출현황별 기간검색 테이블 시작  -->
					<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="margin-bottom: 50px;">
							<thead style="font-size:16px;">	
								<tr>
									<th>구분</th>
									<th>시작 날짜</th>
									<th>~</th>
									<th>끝나는 날짜</th>
									<th>검색</th>
								</tr>
								<tr>
									<td>
										<select name="" id="" style="width: 100%">
											<option value=""></option>
											<option value=""></option>
											<option value=""></option>
											<option value=""></option>
										</select>
									</td>
									<td><input type="date" style="width: 100%;"/></td>
									<td>~</td>
									<td><input type="date" style="width: 100%;"/></td>
									<td><input type="submit" class="btn btn-primary btn-user btn-primary" value="검색"  style="width: 100%;"/></td>
								</tr>
							</thead>
					</table>
					<!--  매출현황별 기간검색 테이블 끝  -->
					<!--  검색기간내 일별 리스트 시작 -->
					<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="margin-bottom:100px;">
							<thead style="font-size:16px;">	
								<tr>
									<th colspan="6"><h4>날짜 표시(클릭시 팝업창 생성)</h4></th>
								</tr>
								<tr>
									<th>디자이너</th>
									<th>시술인원</th>
									<th>현금</th>
									<th>카드</th>
									<th>포인트</th>
									<th>합계</th>
								</tr>
								<tr>
									<td></td>	
									<td></td>	
									<td></td>	
									<td></td>	
									<td></td>	
									<td></td>	
								</tr>
								<tr>
									<td></td>	
									<td></td>	
									<td></td>	
									<td></td>	
									<td></td>	
									<td></td>	
								</tr>
								<tr>
									<td></td>	
									<td></td>	
									<td></td>	
									<td></td>	
									<td></td>	
									<td></td>	
								</tr>
									<tr>
									<th colspan="6"><h4>날짜 표시(클릭시 팝업창 생성)</h4></th>
								</tr>
								<tr>
									<th>디자이너</th>
									<th>시술인원</th>
									<th>현금</th>
									<th>카드</th>
									<th>포인트</th>
									<th>합계</th>
								</tr>
								<tr>
									<td></td>	
									<td></td>	
									<td></td>	
									<td></td>	
									<td></td>	
									<td></td>	
								</tr>
								<tr>
									<td></td>	
									<td></td>	
									<td></td>	
									<td></td>	
									<td></td>	
									<td></td>	
								</tr>
								<tr>
									<td></td>	
									<td></td>	
									<td></td>	
									<td></td>	
									<td></td>	
									<td></td>	
								</tr>
									<tr>
									<th colspan="6"><h4>합계</h4></th>
								</tr>
								<tr>
									<th>디자이너</th>
									<th>시술인원</th>
									<th>현금</th>
									<th>카드</th>
									<th>포인트</th>
									<th>합계</th>
								</tr>
								<tr>
									<td></td>	
									<td></td>	
									<td></td>	
									<td></td>	
									<td></td>	
									<td></td>	
								</tr>
								<tr>
									<td></td>	
									<td></td>	
									<td></td>	
									<td></td>	
									<td></td>	
									<td></td>	
								</tr>
								<tr>
									<td></td>	
									<td></td>	
									<td></td>	
									<td></td>	
									<td></td>	
									<td></td>	
								</tr>
							</thead>
					</table>
					<!--  검색기간내 일별 리스트 끝 -->
					<!--  검색기간내 합산 테이블 시작 -->
					<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" style="margin-bottom: 50px;">
							<thead style="font-size:16px;">	
								<tr>
									<th>시술인원</th>
									<th>현금</th>
									<th>카드</th>
									<th>포인트</th>
									<th>합계</th>
								</tr>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
							</thead>
					</table>
					<!--  검색기간내 합산 테이블 끝 -->
				</div>
			</div>
		</div>
	</div>
<%@include file="../include/footer.jsp" %>