<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp" %>
<script type="text/javascript">
$(document).ready(function(){
	var numTotal = 0;
	var numBalance = 0;
	$(".billNo1").on("focusout",function(){
		//<!--기본 가격과 활인율 활인액을 자동 계산하여 소계 란에 표시 -->
		var num1 = $(this).parent().parent().children(":eq(4)").children().val();
		var num2 = $(this).parent().parent().children(":eq(5)").children().val();
		var num3 = $(this).parent().parent().children(":eq(6)").children().val();
		var num4 = num1-(num1 * (num2/100)) - num3;
		$(this).parent().parent().children(":eq(7)").html(num4);
		});
	$(".billAdd").on("click",function(){
		//<!-- 정해진 시술 내역을 리스트로 추가 및 촉액에 소계금액 추가-->
		//<!-- .append 는 해당 노드의 자식 노드로 html을 작성-->
		var num = 0;
		if($(this).parent().parent().children(":eq(7)").text() == ""){
			alert("시술을 등록하시오");
		}else{ 
			$("#billList").append(
					"<tr><td>"+
					$(this).parent().parent().children(":eq(0)").children().val()
					+"</td><td>"+
					$(this).parent().parent().children(":eq(1)").children().val()
					+"</td><td>"+
					$(this).parent().parent().children(":eq(2)").children().val()
					+"</td><td>"+
					$(this).parent().parent().children(":eq(3)").children().val()
					+"</td><td>"+
					$(this).parent().parent().children(":eq(4)").children().val()
					+"</td><td>"+
					$(this).parent().parent().children(":eq(5)").children().val()
					+"</td><td>"+
					$(this).parent().parent().children(":eq(6)").children().val()
					+"</td><td>"+
					$(this).parent().parent().children(":eq(7)").text()
					+"</td><td><input type='button' value='-' class='btn btn-danger billDelete' /></td></tr>"
					);		
		}
		num1 = $(this).parent().parent().children(":eq(7)").text();
		numTotal += Number(num1);
		numBalance += Number(num1);
		//<!-- Number 응 string 타이블 int 타입으로 형변환 시켜줌-->
		$("#billTotal").html(numTotal);
		$("#billBalance").html(numBalance);
		$(this).parent().parent().children(":eq(0)").children().val("");
		$(this).parent().parent().children(":eq(1)").children().val("");
		$(this).parent().parent().children(":eq(2)").children().val("");
		$(this).parent().parent().children(":eq(3)").children().val("");
		$(this).parent().parent().children(":eq(4)").children().val("");
		$(this).parent().parent().children(":eq(5)").children().val("");
		$(this).parent().parent().children(":eq(6)").children().val("");
		$(this).parent().parent().children(":eq(7)").html("");
		
	});
	$(document).on("click",".billDelete",function(){
		//<!-- jquery는 화면이 처음생성될때 각 이벤트가 추가되어 append로 추가 한 노드에는 이벤트가 실행이 안됨 -->
		//<!-- 그러므로 document 로 풀스켄을 해야 이벤트를 실행시킬 수 있음 -->
		//<!-- EditPuls 에서는 작동 여기서는 작동안함 왜?? -->
		alert("삭제 합니다");
		$(this).parent().parent().remove();
	});
	$(".billNo2").on("focusout",function(){
		if(numBalance == 0 || numBalance < 0){
			alert("잔금을 확인해주세요.\n잔금 : "+numBalance);
			numBalance = numBalance + Number($(this).val());
			$(this).val(0);
			$("#billBalance").html(numBalance);
		}else{
			numBalance = numBalance - $(this).val();	
			$("#billBalance").html(numBalance);
		}
	});
	$("#payment").on("click",function(){
		if(numBalance == 0){
			alert("결제 승인");
		}else{
			alert("잔금을 확인해주세요.\n잔금 : "+numBalance);
		}
	});
 });

</script>
	<div class="container-fluid">
		<div class="card shadow mb-4">
			<div class="card-header py-3 text-center">
				<h4 class="m-0 font-weight-bold text-primary">
					고객 정보
				</h4>
			</div>
			<div class="card-body">
				<div class="table-responsive text-center">
				<!-- 검색된 고객 정보를 DB에서 받아와서 출력 -->
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th width="100px">성명</th>
								<td></td>
								<th width="100px">고객번호</th>
								<td></td>
								<th width="100px">고객등급</th>
								<td></td>
							</tr>
							<tr>
								<th width="100px">담담자</th>
								<td></td>
								<th width="100px">전화번호</th>
								<td></td>
								<th width="100px">이메일</th>
								<td></td>
							</tr>
							<tr>
								<th width="100px">최초방문</th>
								<td></td>
								<th width="100px">최종방문</th>
								<td></td>
								<th width="100px">포인트</th>
								<td></td>
							</tr>
							<tr>
								<th width="100px">참고사항</th>
								<td colspan="5"></textarea></td>
							</tr>
						</thead>
					</table>
				</div>
			</div>
		</div>
		<!-- DB에 저장되어있는 각 항목별 품목을 select의 option 값으로 자동 추가  -->
		<!-- 단가, 활인율, 활인액 을 합산하여 소계금액 으로 출력 -->
		<!-- 기본으로 생성된 상품란을 전부 사용시 상품란 자동 생성  -->
		<div class="card shadow mb-4">
			<div class="card-header py-3 text-center">
				<h4 class="m-0 font-weight-bold text-primary">
					시술 등록
				</h4>
			</div>
			<div class="card-body">
				<div class="table-responsive text-center">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th>구분</th>
								<th>품목</th>
								<th>상품</th>
								<th>담당자</th>
								<th>단가</th>
								<th>활인율</th>
								<th>활인액</th>
								<th>소계</th>
								<th>추가</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<select name="" id="">
										<option value="">선택하시오</option>
										<option value="시술">시술</option>
										<option value="제품">제품</option>
									</select>
								</td>
								<td>
									<select name="" id="">
										<option value="">선택하시오</option>
										<option value="value1">value1</option>
										<option value="value2">value2</option>
									</select>
								</td>
								<td>
									<select name="" id="">
										<option value="">선택하시오</option>
										<option value="value1">value1</option>
										<option value="value2">value2</option>
									</select>
								</td>
								<td>
									<select name="" id="">
										<option value="">디자이너</option>
										<option value="value1">value1</option>
										<option value="value2">value2</option>
									</select>
								</td>
								<td><input type="text" class="billNo1"/></td>
								<td><input type="text" class="billNo1"/></td>
								<td><input type="text" class="billNo1"/></td>
								<td></td>
								<td><input type="button" value="+" class="btn btn-primary billAdd"/></td>
							</tr>
						</tbody>
						<tfoot id="billList">
						</tfoot>
					</table>
					<!-- 스크립트 방식으로 소계부분의 각 값을 합하여 총액 출력 -->
					<!-- 카드, 현금, 포인트 입력하면 잔금 변경 -->
					<table class="table table-bordered" id="dataTable" width="100%">
						<thead>
							<tr>
								<th width="100px">총액</th>
								<td id="billTotal"></td> 
								<th width="100px">현금</th>
								<td><input type="text" class="billNo2"/></td>
								<th width="100px">카드</th>
								<td><input type="text" class="billNo2"/></td>
								<th width="100px">포인트</th>
								<td><input type="text" class="billNo2"/></td>
								<th width="100px">잔금</th>
								<td id="billBalance"></td>
							</tr>
						</thead>
					</table>
					<!-- 버튼 클릭 시 해당 정보를 시술중 고객 테이블로 값을 넘김 -->
					<input type="button" class="btn btn-primary" style="width:100px" value="시술시작" /> 
					<input type="button" id="payment" class="btn btn-primary" style="width:100px" value="결제" /> 
				</div>
			</div>
		</div>
		<!-- 해당 고객의 DB정보에서 최근 5건의 시술 내역을 받아와 출력  -->
		<div class="card shadow mb-4">
			<div class="card-header py-3 text-center">
				<h4 class="m-0 font-weight-bold text-primary">
					최근 시술 내역
				</h14>
			</div>
			<div class="card-body">
				<div class="table-responsive text-center">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th>날짜</th>
								<th>내역</th>
								<th>담당자</th>
								<th>결제금액</th>
								<th>잔여 포인트</th>
						</thead>
						<tbody>
							<tr>
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
							</tr>
							<tr>
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
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
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