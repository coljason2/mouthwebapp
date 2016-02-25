<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="/pages/layout/meta.jsp"></jsp:include>
<!-- fullcalendar -->
<link href='<%=request.getContextPath()%>/fullcalendar/fullcalendar.css'
	rel='stylesheet' />
<link
	href='<%=request.getContextPath()%>/fullcalendar/fullcalendar.print.css'
	rel='stylesheet' media='print' />
<script
	src='<%=request.getContextPath()%>/fullcalendar/lib/moment.min.js'></script>
<script
	src='<%=request.getContextPath()%>/fullcalendar/lib/jquery.min.js'></script>
<script
	src='<%=request.getContextPath()%>/fullcalendar/fullcalendar.min.js'></script>
<script src='<%=request.getContextPath()%>/fullcalendar/lang-all.js'></script>
<script>
	$(document).ready(function() {

		$('#calendar').fullCalendar({

			header : {
				left : 'prev,next today',
				center : 'title',
				right : 'month,agendaWeek,agendaDay'
			},
			defaultDate : '2016-01-12',
			lang : 'zh-tw',
			editable : true,
			eventLimit : true, // allow "more" link when too many events
			
			events : {
				googleCalendarId : 'zh.taiwan%23holiday@group.v.calendar.google.com'
			}

		});

	});
</script>
<style>
body {
	margin: 40px 10px;
	padding: 0;
	font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
	font-size: 14px;
}

#calendar {
	max-width: 900px;
	margin: 0 auto;
}
</style>
<title>Home</title>
</head>
<body>
	<div id="layout">
		<!-- Menu toggle -->
		<jsp:include page="/pages/layout/nav.jsp"></jsp:include>

		<div id="main">
			<div class="header">
				<h1>Web App</h1>
				<h2>Just practice</h2>
			</div>

			<div class="content">
				<div id='calendar'></div>
			</div>
		</div>
	</div>
	<script src="<%=request.getContextPath()%>/pages/layout/js/ui.js"></script>
</body>


</html>