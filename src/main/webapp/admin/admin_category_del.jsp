<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근면하고 성실하게 살아라. 그리고 늘 유익한 일에 열중하라(프랭클린)</title>
<link rel="stylesheet" href="${path}/admin/css/admin_category_del.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
<style>
	
</style>
<script src="${path}/a00_com/jquery-3.6.0.js" 
	type="text/javascript"></script>
</head>

<body>
<jsp:include page="admin_header.jsp"></jsp:include>
	<section>
		<jsp:include page="admin_nav.jsp"/>
		<div id="main">
			<div id = "category_title">
				<div id="head">
				<h3>카테고리 - 삭제</h3>
				<hr>
				</div>
			</div>
		<div id="dropdown">
			<div id="dropdown_select">
			<select>
				<option>레슨</option>
				<option>홈/리빙</option>
				<option>이벤트</option>
				<option>비즈니스</option>
				<option>디자인/개발</option>
				<option>건강/미용</option>
				<option>알바</option>
				<option>기타</option>	
			</select>
			</div>
			<div class="search_box">
			<input type="text" placeholder="insert Class Name">
			<a class="search_btn"><i class="fas fa-search fa-1x">
			</i>
			</a>
			</div>
		</div>
		
		<div id = "table01">
			<table>
				<tr><th scope="col">Class Name</th>
				<th scope="col">Class Number</th>
				<th scope="col">Title</th>
				<th scope="col">Members</th>
				<th scope="col">Price</th>
				<th scope="col">delete</th></tr>
			</table>
			</div>
		
		
		<div id="button">
			<input type="button" value = "삭제"/>
		</div>
	</div>
	</section>

</body>
</html>