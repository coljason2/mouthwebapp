<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="/pages/layout/meta.jsp"></jsp:include>
<title>相關練習</title>
</head>
<body>
	<div id="layout">
		<!-- Menu toggle -->
		<jsp:include page="/pages/layout/nav.jsp"></jsp:include>

		<div id="main">
			<div class="header">
				<h1>相關練習</h1>
				<h2>About java web application practice</h2>
			</div>
			<div class="content">
				<h2>
					PttSearch <a href="http://pttsearch.herokuapp.com/" target="_blank">http://pttsearch.herokuapp.com/</a>
					<h2>
						<p>
						<h2>
							要價查詢 <a href="http://mymedicinequery.herokuapp.com/"
								target="_blank">http://mymedicinequery.herokuapp.com/<a>
						</h2>
						<p>
						<h2>
							聚餐專用 <a href="https://findteacherproject.herokuapp.com/"
								target="_blank">https://findteacherproject.herokuapp.com/</a>
						</h2>
			</div>
		</div>
	</div>


	<script src="<%=request.getContextPath()%>/pages/layout/js/ui.js"></script>
</body>
</html>