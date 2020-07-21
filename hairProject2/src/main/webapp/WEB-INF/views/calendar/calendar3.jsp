<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
</style>

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
	
	 
	 
	 
	 
</script>


</head>
<body>
	<!-- 드래그 앤 드랍 일정관리 메뉴 생성 -->
	<div id="external-events">
		<p>
			<strong>Draggable Events</strong>
		</p>
		<div class="fc-event">My Event 1</div>
		<div class="fc-event">My Event 2</div>
		<div class="fc-event">My Event 3</div>
		<div class="fc-event">My Event 4</div>
		<div class="fc-event">My Event 5</div>
		<p>
			<input type="checkbox" id="drop-remove"> <label
				for="drop-remove">remove after drop</label>
		</p>
	</div>


	<!-- fullcalendar 기본 div -->

	<div id='calendar'></div>




</body>
</html>
