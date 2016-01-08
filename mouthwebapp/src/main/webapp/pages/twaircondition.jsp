<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="dataentity.airData"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="/pages/layout/meta.jsp"></jsp:include>
<title>空汙</title>
</head>
<body>
	<div id="layout">
		<!-- Menu toggle -->
		<jsp:include page="/pages/layout/nav.jsp"></jsp:include>

		<div id="main">
			<div class="header">
				<h1>Taiwan 空汙指數</h1>
				<h2>Data is from Taiwan gov open data</h2>
			</div>


			<table class="pure-table" width="100%">
				<thead>
					<tr>
						<th>城市</th>
						<th>PM2.5</th>
						<th>都市</th>
						<th>狀態</th>
						<th>更新日期</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${data}" var="item">
						<tr>
							<td>${item.country}</td>
							<td>${item.pm25}</td>
							<td>${item.sitename}</td>
							<td>${item.status}</td>
							<td>${item.date}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>


	<script src="<%=request.getContextPath()%>/pages/layout/js/ui.js"></script>
</body>
</html>