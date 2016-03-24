<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<a href="#menu" id="menuLink" class="menu-link"> <!-- Hamburger icon -->
	<span></span>
</a>

<div id="menu">
	<div class="pure-menu">
		<a class="pure-menu-heading" href="<%=request.getContextPath()%>/">WebApp</a>
		<ul class="pure-menu-list">
			<li class="pure-menu-item"><a
				href="<%=request.getContextPath()%>/" class="pure-menu-link">Home</a></li>
			<li class="pure-menu-item"><a
				href="<%=request.getContextPath()%>/airpollution"
				class="pure-menu-link">空污指數</a></li>
			<li class="pure-menu-item"><a href="goldprice"
				class="pure-menu-link">黃金現價</a></li>
			<li class="pure-menu-item"><a href="relateapp"
				class="pure-menu-link">相關練習</a></li>
			<li class="pure-menu-item"><a href="about"
				class="pure-menu-link">關於</a></li>

		</ul>
	</div>
</div>
