<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<c:set var = "path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근면하고 성실하게 살아라. 그리고 늘 유익한 일에 열중하라(프랭클린)</title>
<link rel="stylesheet" href="${path}/admin/css/admin_category.css"">
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
		<div id = "nav_title">
			<h3>카테고리</h3>
			<hr>
		</div>
		
		<div id="table_total">
			<div id="table_left">
				<div id = "table01">
				<h3>레슨</h3>
				<table>
					<tr><th>Class Name</th><th>Class Number</th><th>Title</th><th>Members</th><th>Price</th></tr>
				</table>
				</div>
				
				<div id = "table01">
				<h3>홈/리빙</h3>
				<table>
					<tr><th>Class Name</th><th>Class Number</th><th>Title</th><th>Members</th><th>Price</th></tr>
				</table>
				</div>
				
				<div id = "table01">
				<h3>이벤트</h3>
				<table>
					<tr><th>Class Name</th><th>Class Number</th><th>Title</th><th>Members</th><th>Price</th></tr>
				</table>
				</div>
				
				<div id = "table01">
				<h3>비즈니스</h3>
				<table>
					<tr><th>Class Name</th><th>Class Number</th><th>Title</th><th>Members</th><th>Price</th></tr>
				</table>
				</div>
			</div>
			
			<div id="table_right">
				<div id = "table01">
				<h3>디자인/개발</h3>
				<table>
					<tr><th>Class Name</th><th>Class Number</th><th>Title</th><th>Members</th><th>Price</th></tr>
				</table>
				</div>
				
				<div id = "table01">
				<h3>건강/미용</h3>
				<table>
					<tr><th>Class Name</th><th>Class Number</th><th>Title</th><th>Members</th><th>Price</th></tr>
				</table>
				</div>
				
				<div id = "table01">
				<h3>알바</h3>
				<table>
					<tr><th>Class Name</th><th>Class Number</th><th>Title</th><th>Members</th><th>Price</th></tr>
				</table>
				</div>
				
				<div id = "table01">
				<h3>기타</h3>
				<table>
					<tr><th>Class Name</th><th>Class Number</th><th>Title</th><th>Members</th><th>Price</th></tr>
				</table>
				</div>
			</div>
		</div>
	</div>
	</section>

</body>
</html>