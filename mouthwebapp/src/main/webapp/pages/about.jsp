<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="/pages/layout/meta.jsp"></jsp:include>
<title>關於</title>
</head>
<body>
	<div id="layout">
		<!-- Menu toggle -->
		<jsp:include page="/pages/layout/nav.jsp"></jsp:include>

		<div id="main">
			<div class="header">
				<h1>關於</h1>
				<h2>Just practice jsp and test web</h2>
			</div>
		</div>
	</div>


	<script src="<%=request.getContextPath()%>/pages/layout/js/ui.js"></script>
	<jsp:include page="/pages/layout/backTotop.jsp"></jsp:include>
</body>
</html>