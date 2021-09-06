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
				<tr><th>제목</th><td colspan="3">강의문의 남깁니다</tr>
				<tr><th>작성일</th><td>2021-08-07</td><th>답변여부</th><td>Y</td></tr>
			</table>
		</div>
		<div id="middle">문의내역....</div>
		<div id="bottom">
			<p>관리자 답변</p>
			<p>안녕하세요 고객님 어떤 문제가 있으셨나요??</p>
		</div>
		<div id="btns">
			<button><-목록</button>
			<button>삭제</button>
			<button>수정</button>
		</div>
	</section>
<jsp:include page="footer.jsp"/>
</body>
<script type="text/javascript" src="${path}/js/readQuestion.js"></script>
</html>