<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="include/header.jsp" %>
	<div class="container-fluid">
		<div class="card shadow mb-4">
			<div class="card-header py-3 text-center">
				<h1 class="m-0 font-weight-bold text-primary">
					매장 현황
				</h1>
			</div>
			<div class="card-body">
				<div class="table-responsive text-center">
				<!-- 각 정보를 DB에서 받아와 계산하여 명수를 출력 -->
					<table class="table table-bordered" id="dataTable" width="100%" 
						cellspacing="0">
						<thead style="font-size: 40px;">
							<tr>
								<td style="height: 100px;padding: 20px;">매출 현황</td>
								<td style="height: 100px;padding: 20px;">00명</td>
								<td style="height: 100px;padding: 20px;">대기 현황</td>
								<td style="height: 100px;padding: 20px;">00명</td>
							</tr>
							<tr>
								<td style="height: 100px;padding: 20px;">예약 현황</td>
								<td style="height: 100px;padding: 20px;">00명</td>
								<td style="height: 100px;padding: 20px;">출근 현황</td>
								<td style="height: 100px;padding: 20px;">00명</td>
							</tr>						
						</thead>
					</table>
				</div>
			</div>
		</div>
	</div>
<%@include file="include/footer.jsp" %>