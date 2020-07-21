<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp" %>

	<!-- 검색 조건에 중복이 있을 시 중복된 정보의 고객 번호, 고객명, 연락처를 출력하여 최종 확인하도록함 -->
	<!-- 각 정보를 클릭 시 해당 고객 정보를 customerInfo 페이지에 출력  -->
	<!-- 정보 검색후 수정 버튼 클릭 시 해당 정보를 가지고 coustomerUpdate.jsp로 이동 -->
	<!-- 신규등록 버튼 클릭 시  coustomerNwe.jsp로 이동 -->
	<div class="container-fluid">
		<div class="card shadow mb-4">
			<div class="card-header py-3 text-center">
					<!-- 검색창 -->
	          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search ">
	            <div class="input-group">
	            <select class="">
	               <option value="">이름</option>
	               <option value="">전화번호</option>
	            </select>
	              <input type="text" class="form-control bg-light border-0 small searchTextArea" placeholder="고객의 정보를 입력하세요" aria-label="Search" aria-describedby="basic-addon2">
	              <div class="input-group-append">
	                <button class="btn btn-primary" type="button">
	                  <i class="fas fa-search fa-sm"></i>
	                </button>
	              </div>
	            </div>
	          </form>
	
	          <!-- Topbar Navbar -->
	          <ul class="navbar-nav ml-auto">
	
	            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
	            <li class="nav-item dropdown no-arrow d-sm-none">
	              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                <i class="fas fa-search fa-fw"></i>
	              </a>
	              <!-- Dropdown - Messages -->
	              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
	                <form class="form-inline mr-auto w-100 navbar-search">
	                  <div class="input-group">
	                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
	                    <div class="input-group-append">
	                      <button class="btn btn-primary" type="button">
	                        <i class="fas fa-search fa-sm"></i>
	                      </button>
	                    </div>
	                  </div>
	                </form>
              </div>
            </li>
			</div>
			<div class="card-body">
				<div class="table-responsive text-center">
					<h3 class="m-20 font-weight-bold text-primary" >
						고객 정보
					</h3>
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
					<input type="button" class="btn btn-primary btn-user btn-primary" value="신규등록" /> 
					<input type="button" class="btn btn-primary btn-user btn-primary" value="정보수정" />
				</div>
			</div>
		</div>
	</div>
<%@include file="../include/footer.jsp" %>