<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%
	request.setCharacterEncoding("utf-8");
	String path = request.getContextPath();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/todayheader.css"/>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
<title>오늘의 수업</title>

</head>
<body>
	<header>
		<div id="top">
			<a href="index.jsp"><img id="title" src="img/title.png"></a>
			<div id="btn">
				<a>외주</a>
				<a href="login.jsp">로그인</a>
				<a href="join.jsp">회원가입</a>
			</div>
	    <div class="search-box">
	      <input type="text" class="search-txt" name=""placeholder="서비스를 입력하세요"/>
	      <a class="search-btn" href="#">
	        <i class="fas fa-search"></i>
	      </a>
	    </div>
		</div>
	</header>
	<div id="cl"></div>
</body>
</html>