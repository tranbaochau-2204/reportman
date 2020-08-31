<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<link rel="stylesheet" href="../../resources/css/sidebar.css">

<div class="col-2 side-bar">
	<ul class="nav flex-column horizontal-bar">
		<sec:authorize access="hasRole('EMPLOYEE')">
			<li class="nav-item">
				<a class="nav-link pl-0" href="${pageContext.request.contextPath}/report/create">新規作成</a>
			</li>
			<li class="nav-item">
				<a class="nav-link pl-0" href="${pageContext.request.contextPath}/report/list/?id=${user.id}">日報一覧</a>
			</li>
		</sec:authorize>

		<sec:authorize access="hasAnyRole('MANAGER', 'ADMIN')">
			<li class="nav-item">
				<a class="nav-link pl-0" href="${pageContext.request.contextPath}/employee/list">研修生一覧</a>
			</li>
		</sec:authorize>
		
		<sec:authorize access="hasAnyRole('ADMIN')">
			<li class="nav-item">
				<a class="nav-link pl-0" href="${pageContext.request.contextPath}/account/create">アカウント新規作成</a>
			</li>
		</sec:authorize>
	</ul>
</div>		

<script>
	window.onload = function() {
		var path = window.location.pathname;
		console.log(path);
		
		var navLinks = Array.from(document.querySelectorAll(".nav-link"));
		navLinks.forEach(item => {
			if (item.getAttribute("href").startsWith(path)) {
				item.classList.add("active");
			} else {
				item.classList.remove("active");
			}
		})		
	}
</script>