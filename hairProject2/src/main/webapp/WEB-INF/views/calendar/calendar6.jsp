<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- fullcalendar를 사용하기위한  -->
<link href='resources/static/fullcalendar/core/main.css' rel='stylesheet' />
<link href='resources/static/fullcalendar/daygrid/main.css' rel='stylesheet' />
<script src='resources/static/fullcalendar/core/main.js'></script>
<script src='resources/static/fullcalendar/daygrid/main.js'></script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
      var calendarEl = document.getElementById('calendar');
    
      var calendar = new FullCalendar.Calendar(calendarEl, {
        plugins: [ 'dayGrid' ]
      });
    
      calendar.render();
    });
</script>
</head>
<body>
 
<div id='calendar'></div>
 
</body>
</html>