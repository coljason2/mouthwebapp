<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="dataentity.goldEntity"%>
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
			<table class="pure-table" width="100%">
				<thead>
					<tr>
						<th>銀行名稱</th>
						<th>買價</th>
						<th>賣價</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${prices}" var="item">
						<tr>
							<td>${item.bank}</td>
							<td>${item.tw_bankbuy}</td>
							<td>${item.tw_banksell}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>


	<script src="<%=request.getContextPath()%>/pages/layout/js/ui.js"></script>
</body>
</html>