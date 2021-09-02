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
<link rel="stylesheet" href="css/detaillist.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<script src="${path}/js/userlist.js" type="text/javascript"></script>
<script type="text/javascript">

</script>
<body>
<section>
	<div>
		<div class="list01">
			<table class="listTable">
				<tr><th class="no">번호</th><th class="id">아이디</th><th class="name">닉네임</th><th class="phone">전화번호</th><th class="type">계정유형</th><th class="date">가입일</th></tr>
				<tr><td>1</td><td>himan</td><td>hihi</td><td>01012319283</td><td>사용자</td><td>2021.03.24</td></tr>
			</table>
		</div>
		<div class="titleSm">
				<h3>구매내역</h3>
		</div>
		<div class="list02">
			<table class="listTable">
				<tr><th class="buyNo">주문번호</th><th class="clsName">클래스명</th><th class="price">결제금액</th><th class="pay">결제수단</th><th class="pdate">결제일</th><th class="state">주문상태</th><th class="disc">쿠폰금액</th><th class="dispri">쿠폰코드</th></tr>
				<tr><td>219201923</td><td>자바로 시작하는 웹 개발</td><td>39,000원</td><td>네이버페이</td><td>2021.08.01</td><td>결제완료</td><td>0</td><td>-</td></tr>
				<tr><td>219124123</td><td>SQL 완벽하게 정복하기(초급)</td><td>26,500원</td><td>네이버페이</td><td>2021.06.15</td><td>결제완료</td><td>0</td><td>-</td></tr>
				<tr><td>219032183</td><td>Spring 전혀 어렵지 않다!</td><td>50,000원</td><td>신용카드</td><td>2021.03.22</td><td>취소완료</td><td>0</td><td>-</td></tr>
			</table>
		</div>
		<div class="titleSm">
				<h3>쿠폰목록</h3>
		</div>
		<div class="list03">
			<table class="listTable">
				<tr><th class="cno">쿠폰코드</th><th class="cname">쿠폰명</th><th class="cprice">쿠폰금액</th><th class="cond">조건</th><th class="cdate">유효기간</th><th class="state">사용여부</th></tr>
				<tr><td>HELLO11</td><td>신규가입 감사쿠폰</td><td>5,000원</td><td>10,000원 이상 결제시 사용가능</td><td>2021.09.30</td><td>미사용</td></tr>
			</table>
		</div>
		<div class="blind">
			<button>블라인드 처리</button>
		</div>
		<div class="toList">
			<button>목록으로</button>
		</div>
	</div>
</section>
</body>
</html>