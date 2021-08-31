<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.*"    
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<c:set var = "path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>
<%
	String id= request.getParameter("id");
	String pass= request.getParameter("pass");
	if(id!=null&&pass!=null){
		session.setAttribute("idkey", id);
		response.sendRedirect("index.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근면하고 성실하게 살아라. 그리고 늘 유익한 일에 열중하라(프랭클린)</title>
<link rel="stylesheet" href="${path}/css/login.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>	
	<div id="login">
		<a href="index.jsp"><img alt="타이틀" src="${path}/img/title.png"></a>
		<h1 align="center">로그인</h1>
		<form method="post">
			<table align="center">
				<tr><td>아이디</td></tr>
				<tr><td><input type="text" name="id" placeholder="아이디를 입력해주세요."/></td></tr>
				<tr><td>비밀번호</td></tr>
				<tr><td><input type="password" name="pass" placeholder="비밀번호를 입력해주세요."/></td></tr>
				<tr><td><input type="button" value="로그인" id="button"></td></tr>
				<tr><td>계정이 없으신가요?</td></tr>
				<tr><td>계정 찾기</td></tr>
			</table>
		</form>
	</div>
	<div id="image">
		<img alt="로그인 이미지" src="${path}/img/study.jfif">
	</div>
</body>
<script src="${path}/js/login.js" type="text/javascript"></script>
</html>