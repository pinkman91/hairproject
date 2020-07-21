<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp" %>
	<div class="container-fluid">
		<div class="card shadow mb-4">
			<div class="card-header py-3 text-center">
				<h1 class="m-0 font-weight-bold text-primary">
					메일 발송
				</h1>
			</div>
			<div class="card-body">
				<div class="table-responsive text-center">
					<!-- 메일 전송 버튼을 누르면 input text value 값과 textarea 의 값이 
						 회원가입을 할시에 메일주소를 기입한 고객들에 한하여 메일이 발송됨
						 메일 주소를 기입한 고객은 count1 메일주소를 기입하지않은 고객은 count0
					 -->
					<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
							<thead style="font-size:16px;">	
								<tr>
									<th>제목 입력</th>
								</tr>
								<tr>
									<td><input type="text" style="width: 100%"></td>
								</tr>
								<tr>
									<th>메일내용 입력</th>
								</tr>
								<tr>
									<td><textarea name="" id="" cols="30" rows="10" style="width: 100%"></textarea></td>
								</tr>
							</thead>
					</table>
					<input type="submit" class="btn btn-primary btn-user btn-primary" value="메일전송" />
				</div>
			</div>
		</div>
	</div>
<%@include file="../include/footer.jsp" %>