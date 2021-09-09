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
<link rel="stylesheet" href="${path}/admin/css/admin_review.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body>
<jsp:include page="admin_header.jsp"></jsp:include>
	<section>	
	<jsp:include page="admin_nav.jsp"></jsp:include>
		<div id="review_title">
			<div id="head">
				<h3> 리뷰</h3>
				<hr>
			</div>
		</div>
		
		<div id="date">
			<div id="date_loc">
				<input type="date" value="작성일자"/>
			</div>	
		</div>
		
		<div id = "table01">
		<table>
			<tr>
				<th scope="col">User Id</th>
				<th scope="col">Class Name</th>
				<th scope="col">Class Number</th>
				<th scope="col">Content</th>
				<th scope="col">Date</th>
				<th scope="col">Count</th>
				<th scope="col">Delete</th></tr>
		</table>
		</div>
		
		<div id="button">
		<input type="button" value = "삭제"/>
	</div>
	</section>
</body>
</html>