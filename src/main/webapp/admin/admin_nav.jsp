<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.*"    
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
<link rel="stylesheet" href="${path}/admin/css/admin_nav.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body>
	<jsp:include page="admin_header.jsp"></jsp:include>
	<nav>
		<div id="navi">
			<h3 align="center">Menu</h3>
			<ul>
				<li>사용자 계정</li>
				<li>추천란</li>
				<li>문의사항</li>
				<li>클래스</li>
				<li>카테고리</li>
				<li>쿠폰</li>
				<li>리뷰</li>
				<li>신고</li>
				<li>지도</li>
				<li>수익</li>
			</ul>		
		</div>
	</nav>
</body>
</html>