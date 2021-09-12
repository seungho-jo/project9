<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="${path}/css/readQuestion.css"/>
</head>
<body>
<jsp:include page="header.jsp"/>
	<section>
		<div id="top">
				<div>
					<i class="fab fa-quora"></i>
				</div>
			<table>
				<tr><th>제목</th><td colspan="3">${info.title}</tr>
				<tr><th>작성일</th><td>${info.wdate}</td><th>답변여부</th><td>${info.answer}</td></tr>
			</table>
		</div>
		<div id="middle">${info.content}</div>
		<div id="bottom">
			<p>관리자 답변</p>
			<p>안녕하세요 고객님 어떤 문제가 있으셨나요??</p>
		</div>
		<div id="btns">
			<button><-목록</button>
			<button id="delete">삭제</button>
			<button id="update">수정</button>
		</div>
	</section>
	<div class="background">
		<div class="window">
			<div class="popup">
				<h4>비밀번호 재 확인</h4>
				<input type="password" name="pass_check" placeholder="작성 후 엔터키를 눌러주세요"/><br>
				<input type="button" name="close" value="닫기" id="close"/>
			</div>
		</div>
	</div>
<jsp:include page="footer.jsp"/>
<form id="deleteFrm" action="write.do" method="post">
	<input type="hidden" name="qcode" value="${info.qcode}">
	<input type="hidden" name="title" value="${info.title}">
	<input type="hidden" name="category" value="${info.category}">
	<input type="hidden" name="content" value="${info.content}">
	<input type="hidden" name="choice">	
</form>
<form id="updateFrm" action="updateQuestion.jsp" method="post">
	<input type="hidden" name="qcode" value="${info.qcode}">
	<input type="hidden" name="title" value="${info.title}">
	<input type="hidden" name="category" value="${info.category}">
	<input type="hidden" name="content" value="${info.content}">
</form>
</body>
<script type="text/javascript" src="${path}/js/readQuestion.js"></script>
</html>