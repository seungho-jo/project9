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
<link rel="stylesheet" href="css/bannerinfo.css"/>
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
				<h2>배너 상세</h2>
			</div>
		</div>
		<div class="bnrMain">
			<div class="bnrImg">
				<img id="mainImg" alt="" src="img/banner(sample).png">
			</div>
			<span>대표이미지</span>
		</div>
		<div class="bnrContent">
			<table class="listTable">
				<tr><th>배너명</th></tr>
				<tr><td>9월 신규가입 이벤트</td></tr>
			</table>
			<div class="contentImg">
				<img id="detailImg" alt="" src="img/banner(sample).png">
				<table class="listTable">
					<tr><th>유의사항</th></tr>
					<tr><td><p>본 이벤트는 9월 1일 00:00부터 9월 30일 23:59까지만 진행됩니다.</p></td></tr>
				</table>
			</div>
		</div>
		<div class="choose">
			<button id="refu">배너내림</button>
		</div>
		<div class="toList">
			<button>목록으로</button>
		</div>
	</div>
</section>
</body>
</html>