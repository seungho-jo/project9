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
<title></title>
<link rel="stylesheet" href="${path}/css/couponEnrollment.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<section>
		<jsp:include page="myNavi.jsp"/>
		<div id="contents">
			<h1>쿠폰 등록</h1>
			<hr>
			<form>
				<input type="text" name="code1">-<input type="password" name="code2">-<input type="password" name="code3">-<input type="text" name="code4">
				<input type="button" id="enrollment" value="등록">
			</form>
		</div>
	</section>
	<jsp:include page="footer.jsp"/>
</body>
<script src="${path}/js/couponEnrollment.js" type="text/javascript"></script>
</html>