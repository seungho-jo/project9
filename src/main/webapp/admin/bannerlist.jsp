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
<title>오늘의 수업</title>
<link rel="stylesheet" href="css/bannerlist.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<script type="text/javascript">

</script>
<body>
<jsp:include page="admin_header.jsp"></jsp:include>
	<section>	
	<jsp:include page="admin_nav.jsp"></jsp:include>
	<div>
		<div class="title">
			<div class="title-left">
				<h2>배너 목록</h2>
			</div>
			<div class="title-right">
				<div class="radiolist">
					<input type="radio" name="list" value="date" checked="checked">등록일
					<input type="radio" name="list" value="view">조회수
					<input type="radio" name="list" value="state">등록여부
				</div>
				<div class="schBox">
					<input type="text" name="schMem"/>
					<div class="schBtn">
						<i class="fas fa-search fa-sm"></i>
					</div>
				</div>
			</div>
		</div>
		<div class="list">
			<table class="listTable">
				<tr><th class="no">번호</th><th class="bnrName">배너명</th><th class="view">조회수</th><th class="date">등록일</th><th class="state">등록상태</th></tr>
				<tr><td>1</td><td>벌써 가을이라니 이벤트</td><td>4929</td><td>2021.08.26</td><td>등록중</td></tr>
				<tr><td>2</td><td>9월 가입자 이벤트</td><td>13029</td><td>2021.09.01</td><td>등록중</td></tr>
				<tr><td>3</td><td>8월 가입자 이벤트</td><td>9182</td><td>2021.08.01</td><td>내림</td></tr>
			</table>
		</div>
		<div class="choose">
			<button id="subm">신규등록</button>
		</div>
	</div>
</section>
</body>
</html>