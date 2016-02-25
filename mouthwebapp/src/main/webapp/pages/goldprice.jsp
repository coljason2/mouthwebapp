<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="/pages/layout/meta.jsp"></jsp:include>
<title>黃金價格</title>
</head>
<body>
	<div id="layout">
		<!-- Menu toggle -->
		<jsp:include page="/pages/layout/nav.jsp"></jsp:include>

		<div id="main">
			<div class="header">
				<h1>黃金價格</h1>
				<h2>Data from Taiwan Bank and Gold.org</h2>
			</div>
		</div>
	</div>


	<script src="<%=request.getContextPath()%>/pages/layout/js/ui.js"></script>
</body>
</html>