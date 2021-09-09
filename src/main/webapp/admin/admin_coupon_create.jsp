<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>근면하고 성실하게 살아라. 그리고 늘 유익한 일에 열중하라(프랭클린)</title>
<link rel="stylesheet" href="${path}/admin/css/admin_coupon_create.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body>
<jsp:include page="admin_header.jsp"></jsp:include>
	<section>	
	<jsp:include page="admin_nav.jsp"></jsp:include>
		<div id="main">
		<div id="coupon_title">
			<div id="head">
				<h3> 쿠폰 - 생성</h3>
				<hr>
			</div>
		</div>
		
		<div id="coupon_table">
			<table id="coupon_list">
					<tr><td>Coupon Name </td><td><input type="text" placeholder = "insert Coupon Name"/></td></tr>
					<tr><td>Coupon Number </td><td id="tlist"><input type="text"/>-<input type="text"/>-<input type="text"/>-<input type="text"/></td></tr>
					<tr><td>Coupon discount </td><td><input type="text" placeholder = "insert Coupon discount"/></td></tr>
			</table>
		
			<div id="button">
				<input type="button" value="생성"/>
			</div>
		
		</div>
		</div>
	</section>
</body>
</html>