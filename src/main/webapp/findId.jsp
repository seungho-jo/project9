<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
button {
	width: 17%;
	height: 100%;
	background-color: #6482FF;
	color: white;
	border: 0;
	border-radius: 5px;
	cursor: pointer;
	font-size: 0.8vw;
	padding: 2% 0;
}
button:hover{
	background-color: #4D56D5;
}
</style>
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body align="center">
	<p>
		고객님의 아이디는<span style="color: red;">himan</span>입니다
	</p>
	<button>닫기</button>
</body>
<script type="text/javascript">
	$("button").click(function() {
		opener.window.location.reload();
		window.close();
	})
</script>
</html>