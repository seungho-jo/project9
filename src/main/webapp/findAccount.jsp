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
<link rel="stylesheet" href="${path}/css/findAccount.css" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp"/>
	<section>
		<div>
			<div id="findId">
				<h1>아이디 찾기</h1>
				<form id="frm1">
				<input type="hidden" name="choice" value="아이디찾기">
					<table>
						<tr><th>휴대전화</th></tr>
						<tr><td><input type="text" name="phone"  placeholder="-없이 입력해주세요"></td></tr>
						<tr><td><input type="button" id="idBtn" value="인증"></td></tr>
					</table>
				</form>
			</div>
			<div id="findPass">
				<h1>비밀번호 찾기</h1>
				<form id="frm2">
					<table>
						<tr><th>아이디</th></tr>
						<tr><td><input type="text" name="id"  placeholder="아이디를 입력해주세요"></td></tr>
						<tr><th>휴대전화</th></tr>
						<tr><td><input type="text" name="phone"  placeholder="-없이 입력해주세요"></td></tr>
						<tr><td><input type="button" id="passBtn" value="인증"></td></tr>
					</table>
				</form>
			</div>
		</div>
	</section>
<jsp:include page="footer.jsp"/>
</body>
<script src="${path}/js/findAccount.js" type="text/javascript"></script>
</html>