<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MainPage</title>
<link rel="stylesheet" href="resources/css/sb-admin-2.css">
<link rel="stylesheet" href="resources/css/sb-admin-2.min.css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<style>
.midLocation{margin: 0 auto;
	}
</style>
</head>
<body>
		<!-- 검색 조건에 중복이 있을 시 중복된 정보의 고객 번호, 고객명, 연락처를 출력하여 최종 확인하도록함 -->
		<!-- 각 정보를 클릭 시 해당 고객 정보를 customerInfo 페이지에 출력  -->
		<!-- 팝업 창의 싸이즈 고정 -->
        <div class="container-fluid">
          <div class="card shadow mb-4">
            <div class="card-header py-3 text-center">
              <h1 class="m-0 font-weight-bold text-primary">중복 고객 확인</h1>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered text-center" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>고객번호</th>
                      <th>고객명</th>
                      <th>연락처</th>
                    </tr>
                  </thead>
				  <tbody>
                    <tr>
                      <td>value1</td>
                      <td>value2</td>
                      <td>value3</td>
                    </tr>
					<tr>
                      <td>value1</td>
                      <td>value2</td>
                      <td>value3</td>
                    </tr>
                  </tbody>
                </table>
                <input type="button" class="btn btn-primary btn-user" value="취소" />
              </div>
            </div>
          </div>
		 </div>
</body>
</html>