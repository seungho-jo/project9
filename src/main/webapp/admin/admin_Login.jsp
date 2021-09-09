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
<link rel="stylesheet" href="${path}/admin/css/admin_Login.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<form id="box" action="admin_Login.jsp" method="post">
		<h2 align="center">관리자 로그인</h2>
		<table align="center">
			<tr><td><input type="text" name="id" placeholder="아이디를 입력하세요"/></td></tr>
			<tr><td><input type="password" name="pass" placeholder="비밀번호를 입력하세요"/></td></tr>
			<tr><td colspan="2"><input type="button" value="로그인" /></td></tr>
		</table>
		<h4 align="center">@Sist_Team5_Project</h4>
	</form>
		
	
</body>
</html>