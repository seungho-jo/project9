<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="${path}/css/myPage.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<%@ include file = "header.jsp" %>
	<section>
		<h1>마이페이지</h1>
		<div id="member_info">
			<p>회원정보</p>
			<a href="edit_mem_info.jsp">
				<c:choose>
					<c:when test="${mem.profile!=null}"><img id="my_icon" src="${path}/upload/${mem.profile}"></c:when>
					<c:otherwise><img id="my_icon" src="${path}/img/bros_blank.jpg"></c:otherwise>
				</c:choose>
				<p>${mem.name} 고객님</p>
				<img id="right" src="${path}/img/right_icon.svg">
			</a>
		</div>
		<div id="myClass">
			<p>내클래스</p>
			<div>
				<ul>
					<li>
						수강중인 클래스
					</li>
					<li><a href="myclass_ap.do">수강신청 현황</a></li>
					<li><a href="osuser.do">외주현황</a></li>
					<li><a href="bookmark.jsp">북마크</a></li>
					<li><a href="paymentHistory.jsp">결제내역</a></li>
				</ul>
				<img id="right" src="${path}/img/right_icon.svg">
			</div>
		</div>
		<div id="cuppon">
			<p>쿠폰</p>
			<div>
				<ul>
					<li><a href="coupon.do">내쿠폰</a></li>
					<li><a href="couponEnrollment.jsp">쿠폰등록</a></li>
				</ul>
				<img id="right" src="${path}/img/right_icon.svg">
			</div>
		</div>
		<div id="question">
			<p>문의내역</p>
			<a href="qlist.do">
				<p>바로가기</p>
				<img id="right" src="${path}/img/right_icon.svg">
			</a>
		</div>
	</section>
	<jsp:include page="footer.jsp" />
</body>
</html>