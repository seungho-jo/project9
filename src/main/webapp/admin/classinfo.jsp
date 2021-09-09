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
				<tr><th class="no">번호</th><th class="ctg">카테고리</th><th class="clsName">제목</th><th class="id">아이디</th><th class="date">등록일</th><th class="state">처리상태</th></tr>
				<tr><td>1</td><td>디자인/개발</td><td>자바로 시작하는 웹 개발</td><td>hihi</td><td>2021.03.24</td><td>미처리</td></tr>
			</table>
		</div>
		<div class="list02">
			<table class="listTable">
				<tr><th>자격증/고수 소개</th></tr>
				<tr><td>- 정보처리기사 자격증 보유</td></tr>
				<tr><td><p>꾸준함과 성실함으로 업계 경력 5년 이상 근무 중입니다. 실무에 사용될 핵심 개념들만 가르쳐드립니다!</p></td></tr>
			</table>
			<div class="certi">
				<button>자격증 확인서</button>
			</div>
		</div>
		<div class="list03">
			<table class="listTable">
				<tr><th>클래스 소개</th></tr>
				<tr><td><p>자바를 누구나 쉽게 배울 수 있도록 개념을 튼튼하게 잡아주고 실무 위주 예재로 응용능력을 기를 수 있습니다~</p></td></tr>
			</table>
		</div>
		<div class="choose">
			<button id="subm">등록처리</button>
			<button id="refu">반려처리</button>
		</div>
		<div class="toList">
			<button>목록으로</button>
		</div>
	</div>
</section>
</body>
</html>