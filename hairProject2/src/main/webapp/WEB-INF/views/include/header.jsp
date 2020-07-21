<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">

<head>
<title>메인페이지</title>
<style>
.search_Option {
	width: 50px;
}

.searchTextArea {
	padding-left: 500px;
	width: 500px;
}

.coustumerList {
	width: 180px;
}
.moveSearchBar{
}
</style>
<style type="text/css">
html, body {
	margin: 0;
	padding: 0;
	font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
	font-size: 14px;
}

#external-events {
	position: fixed;
	z-index: 2;
	top: 20px;
	left: 20px;
	width: 150px;
	padding: 0 10px;
	border: 1px solid #ccc;
	background: #eee;
}

.demo-topbar+#external-events { /* will get stripped out */
	top: 60px;
}

#external-events .fc-event {
	margin: 1em 0;
	cursor: move;
}

#calendar-container {
	position: relative;
	z-index: 1;
	margin-left: 200px;
}

#calendar {
	max-width: 900px;
	margin: 20px auto;
}

::-webkit-scrollbar {

display:none;

}

@media screen and (max-width: 765px) {
 body 	{
 	 padding-left:0px; 
 	 	} 
}

</style>

<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
	 
	});

</script>
<!-- Custom fonts for this template-->
<link href="resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link rel="stylesheet" href="resources/css/sb-admin-2.css">
<link rel="stylesheet" href="resources/css/sb-admin-2.min.css">

<!-- fullcalendar 기본 import -->
<link href='resources/static/fullcalendar/core/main.css'
	rel='stylesheet' />
<link href='resources/static/fullcalendar/daygrid/main.css'
	rel='stylesheet' />
<script src='resources/static/fullcalendar/core/main.js'></script>
<script src='resources/static/fullcalendar/daygrid/main.js'></script>

<!-- 드래그 앤 드랍 일정관리 메뉴 생성 -->
<link href='resources/static/fullcalendar/timegrid/main.min.css'
	rel='stylesheet' />
<script src="resources/static/fullcalendar/interaction/main.min.js"></script>
<script src="resources/static/fullcalendar/timegrid/main.min.js"></script>

<!-- 한글 locale 활용 -->
<script src='resources/static/fullcalendar/core/locales/ko.js'></script>

<script type="text/javascript">
	// 캘린더 생성할 때 locale 옵션 주기

	/*
	var calendar = new Calendar(calendarEl, {
		plugins : [ 'interaction', 'dayGrid', 'timeGrid' ],
		header : {
			left : 'prev,next today',
			center : 'title',
			right : 'dayGridMonth,timeGridWeek,timeGridDay'
		},
		editable : true,
		droppable : true, // this allows things to be dropped onto the calendar
		drop : function(info) {
			// is the "remove after drop" checkbox checked?
			if (checkbox.checked) {
				// if so, remove the element from the "Draggable Events" list
				info.draggedEl.parentNode.removeChild(info.draggedEl);
			}
		},
		locale : 'ko'
	});
	
	 */

	// 기본 fullcalendar 
	/*
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			plugins : [ 'dayGrid' ]
		});

		calendar.render();
	});

	 */

	// 기본 fullcalendar 
	document.addEventListener('DOMContentLoaded', function() {
		var Calendar = FullCalendar.Calendar;
		var Draggable = FullCalendarInteraction.Draggable;

		var containerEl = document.getElementById('external-events');
		var calendarEl = document.getElementById('calendar');
		var checkbox = document.getElementById('drop-remove');

		// 드래그 앤 드랍 일정관리 메뉴 생성 관련 jquery
		// initialize the external events
		// -----------------------------------------------------------------

		new Draggable(containerEl, {
			itemSelector : '.fc-event',
			eventData : function(eventEl) {
				return {
					title : eventEl.innerText
				};
			}
		});

		// initialize the calendar
		// -----------------------------------------------------------------

		var calendar = new Calendar(calendarEl, {
			plugins : [ 'interaction', 'dayGrid', 'timeGrid' ],
			header : {
				left : 'prev,next today',
				center : 'title',
				right : 'dayGridMonth,timeGridWeek,timeGridDay'
			},
			editable : true,
			droppable : true, // this allows things to be dropped onto the calendar
			drop : function(info) {
				// is the "remove after drop" checkbox checked?
				if (checkbox.checked) {
					// if so, remove the element from the "Draggable Events" list
					info.draggedEl.parentNode.removeChild(info.draggedEl);
				}
			},
			locale : 'ko'
		});

		calendar.render();
	});

	// 한글화 하면서 위에 locale : 'ko' 추가됨~! 

	// calendar 초기화 시 클릭 이벤트 추가

	var calendar = new Calendar(calendarEl, {
		dateClick : function() {
			alert('a day has been clicked!');
		}
	});

	// calendar 초기화 후 클릭 이벤트 추가
	calendar.on('dateClick', function(info) {
		console.log('clicked on ' + info.dateStr);
	});

	/*
	2. 종류

	> dateClick : 날짜 셀을 클릭할 때 발생하는 이벤트

	> eventClick : 일정을 클릭할 때 발생하는 이벤트
	- 예) 일정을 클릭했을 때, 해당 일정의 정보를 콘솔에 출력하는 함수
	
	 */
</script>


</head>

<body id="page-top" style="padding-left:195px;">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion fixed-top" 
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a class="sidebar-brand d-flex align-items-center justify-content-center" href="#"><img src="resources/img/mainLogo.png" alt="메인로고" / stlye="width:100px;"></a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">


			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">페이지 이동</div>

			<!-- 시술 관리 네비게이션 메인 툴바 -->
			<li class="nav-item">
			<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseTwo"> 
				<span>시술관리</span>
			</a> <!--  시술 입력 네비게이션 서브 툴바 -->
				<div id="collapseOne" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="#">시술 입력</a>
					</div>
				</div>
			</li>

			<!-- 고객관리 네비게이션 메인 툴바 -->
			<li class="nav-item">
			<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"> 
				<span>고객관리</span>
			</a> <!-- 고객관리 네비게이션 서브 툴바 -->
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="#">고객 관리</a>
					</div>
				</div>
			</li>

			<!-- 직원관리 네비게이션 메인 툴바 -->
			<li class="nav-item">
			<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseTwo"> 
				<span>직원관리</span>
			</a> 
			<!-- 고객관리 네비게이션 서브 툴바 -->
				<div id="collapseThree" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="#">출·퇴근관리</a>
						<a class="collapse-item" href="#">개인 매출관리</a>
					</div>
				</div></li>
			<!-- 매장관리 네비게이션 메인 툴바 -->
			<li class="nav-item">
				<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseFour" aria-expanded="true" aria-controls="collapseTwo"> 
					<span>매장현황표</span>
				</a> 
			<!-- 매장관리 네비게이션 서브 툴바 -->
				<div id="collapseFour" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="#">대기 현황표</a>
						<a class="collapse-item" href="#">예약 현황표</a>
					</div>
				</div>
			</li>
			<!-- 관리자페이지 네비게이션 메인 툴바 -->
			<li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseFive" aria-expanded="true" aria-controls="collapseTwo"> <span>매장현황표</span>
			</a> 
			<!-- 관리자페이지 네비게이션 서브 툴바 -->
				<div id="collapseFive" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<a class="collapse-item" href="#">직원 관리</a> <a class="collapse-item" href="#">영업 관리</a>
						<a class="collapse-item" href="#">매출 관리</a> <a class="collapse-item" href="#">이벤트 메일발송</a>
					</div>
				</div>
			</li>

 
			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline text-center">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>

		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>
					<!-- 검색창 -->
					<form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search ">
						<div class="input-group">
						
						<!-- 지정한 값을 서버에 전송하여 시술관리페이지로 연동하게 만든다!!! -->
							<select class="">
								<option value="">이름</option>
								<option value="">전화번호</option>
							</select> 
							<input type="text" class="form-control bg-light border-0 small searchTextArea"  placeholder="고객의 정보를 입력하세요" aria-label="Search"aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button class="btn btn-primary" type="button">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form>
						<!-- 지정한 값을 서버에 전송하여 시술관리페이지로 연동하게 만든다!!! -->
					<!-- 검색창 끝 -->
					
					<!-- 로그인정보 아코디언 css -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none">
							<a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						 		<i class="fas fa-search fa-fw"></i>
							</a> <!-- Dropdown - Messages -->
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
					<!-- 로그인정보 아코디언 css 끝 -->

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow">
						<a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
						<!--  이부분에 로그인된사람 정보 표시!!!!! -->
						<span class="mr-2 d-none d-lg-inline text-gray-600 small">로그인 정보</span> 
						<!--  이부분에 로그인된사람 정보 표시!!!!! -->
						</a> 
						<!-- Dropdown - User Information -->
							<div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal"> 
									<i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									로그아웃
								</a>
							</div>
							</li>
					</ul>
				</nav>
				<!-- End of Topbar -->
				<!-------------------------------- body --------------------------------------------->
				<div style="margin-bottom: 25px; max-height: 45px; width: 100%; overflow: scroll; -ms-overflow-style: none;">
					<div class="btn btn-success coustumerList" style="margin-bottom:15px; margin-left:22px;">시술중인 고객리스트</div>
					
					<!-- db에서 불러와서 리스트로 출력 해준다 -->
						<div class="btn btn-info" style="margin-bottom: 10px;">손님1</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님2</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>	
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님1</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님2</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>	
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님1</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님2</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>	
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님1</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님2</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>	
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
						<div class="btn btn-info" style="margin-bottom: 10px;">손님3</div>
				</div>