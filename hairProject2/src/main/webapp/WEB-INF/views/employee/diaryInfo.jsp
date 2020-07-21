<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp" %>
	<div class="container-fluid">
		<div class="card shadow mb-4">
			<div class="card-header py-3 text-center">
				<!-- 날자는 자동 변경 -->
				<h1 class="m-0 font-weight-bold text-primary">
					2020.XX.XX
				</h1>
			</div>
			<div class="card-body">
				<div class="table-responsive text-center">
				<!-- DB에 저장 되어 있는 정보로 select의 option 값 자동생성 -->
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th>출근·퇴근</th>
								<th>직급</th>
								<th>이름</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<select name="" id="">
										<option value="">선택하시오</option>
										<option value="출근">출근</option>
										<option value="퇴근">퇴근</option>
									</select>
								</td>
								<td>
									<select name="" id="">
										<option value="">선택하시오</option>
										<option value="">value1</option>
										<option value="">value2</option>
									</select>
								</td>
								<td>
									<select name="" id="">
										<option value="">선택하시오</option>
										<option value="">value1</option>
										<option value="">value2</option>
									</select>
								</td>
							</tr>
						</tbody>
					</table>
					<input type="button" class="btn btn-primary btn-user btn-primary" value="확인" /> 
				</div>
			</div>
		</div>
		<div class="card shadow mb-4">
			<div class="card-header py-3 text-center">
				<!-- DB에 저장 되어 있는 직원 목록 자종 생성 및 당일 출퇴근 시간 출력 -->
				<h3 class="m-0 font-weight-bold text-primary">
					직원 출·퇴근 현황
				</h3>
			</div>
			<div class="card-body">
				<div class="table-responsive text-center">
				<!-- 검색된 고객 정보를 DB에서 받아와서 출력 -->
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th>직급</th>
								<th>이름</th>
								<th>출근 시간</th>
								<th>퇴근 시간</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>관리자</td>
								<td>이병훈</td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td>관리자</td>
								<td>이태종</td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td>관리자</td>
								<td>이기하</td>
								<td></td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
<%@include file="../include/footer.jsp" %>