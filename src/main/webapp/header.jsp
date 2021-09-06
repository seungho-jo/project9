<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/todayheader.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
<title>오늘의 수업</title>
</head>
<body>
	<header>
		<div id="top">
			<a href="index.jsp"><img id="title" src="img/title.png"></a>
			<div class="search-box">
				<input type="text" class="search-txt" name=""
					placeholder="서비스를 입력하세요" /> <a class="search-btn" href="#"> <i
					class="fas fa-search fa-1x"></i>
				</a>
			</div>
			<c:choose>
				<c:when test="${mem.id!=null}">
					<div id="btn">
						<a href="os_list.jsp">외주</a>
						<div id="my">
							${mem.name} 회원님
							<div>
								<h4>안녕하세요,${mem.name}님</h4>
								<ul>
									<li><a href="myPage.jsp">마이페이지</a></li>
									<li><a href="gosuform.jsp">고수신청</a></li>
									<li><a>로그아웃</a></li>
								</ul>
							</div>
						</div>
					</div>
				</c:when>
				<c:otherwise>
					<div id="btn">
						<a href="os_list.jsp">외주</a> <a href="login.jsp">로그인</a> <a href="join.jsp">회원가입</a>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</header>
	<div id="cl"></div>
</body>
<script src="${path}/js/header.js" type="text/javascript"></script>
<script type="text/javascript">
	$("#my>div>ul>li:nth-child(3)").click(function() {
		location.href = "logout.do";
	})
</script>
</html>