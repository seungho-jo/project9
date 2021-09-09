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
<link rel="stylesheet" href="css/clsdetail.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<script src="${path}/js/userlist.js" type="text/javascript"></script>
<script type="text/javascript">

</script>
<body>
<jsp:include page="admin_header.jsp"></jsp:include>
	<section>	
	<jsp:include page="admin_nav.jsp"></jsp:include>
	<div>
		<div class="list01">
			<table class="listTable">
				<tr><th class="no">번호</th><th class="ctg">카테고리</th><th class="title">제목</th><th class="name">닉네임</th><th class="date">등록일</th><th class="state">처리상태</th></tr>
				<tr><td>1</td><td>결제</td><td>자바 클래스 수강했는데요</td><td>hhihihi</td><td>2021.09.01</td><td>미답변</td></tr>
			</table>
		</div>
		<div class="list02">
			<table class="listTable">
				<tr><th>문의사항 내용</th></tr>
				<tr><td><p>이거 내용이 클래스 설명이랑 조금 다른것같은데 부분환불이나 환불조취 안되나요?<p></td></tr>
			</table>
		</div>
		<div class="choose">
			<button id="subm">답변추가</button>
		</div>
		<div class="toList">
			<button>목록으로</button>
		</div>
	</div>
</section>
</body>
</html>