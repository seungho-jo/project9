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
<title>근면하고 성실하게 살아라. 그리고 늘 유익한 일에 열중하라(프랭클린)</title>
<link rel="stylesheet" href="${path}/css/edit_mem_info.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp"/>
<section>
	<jsp:include page="myNavi.jsp"/>
	<div id="contents">
		<h1>회원정보</h1>
		<form action="edit_mem_info.jsp" method="post">
			<div id="profile">
				<img id="preview" src="${path}/img/bros_blank.jpg"><br>
				<input type="file" name="profile" onchange="setThumbnail(this)" value="업로드"/>
				<input type="button" id="click" value="업로드"/>
			</div>
			<table>
				<tr><td>아이디</td></tr>
				<tr><td><input type="text" name="id" disabled value="himan"/></td></tr>
				<tr><td>비밀번호</td></tr>
				<tr><td><input type="password" name="pass" value="111111a!" placeholder="영문+숫자+특수문자 8~15자리 입력해주세요"/></td></tr>
				<tr><td>이름</td></tr>
				<tr><td><input type="text" name="name" value="홍길동"/></td></tr>
				<tr><td>휴대전화</td></tr>
				<tr><td><input type="text" name="phone" value="01012345678" placeholder="-없이 입력해주세요"/></td></tr>
				<tr><td>주소</td></tr>
				<tr><td><input type="text" name="zipcode" placeholder="우편번호" disabled/><input type="button" id="search" onclick="sample6_execDaumPostcode()" value="검색"></td></tr>
				<tr><td><input type="text" name="addr1" placeholder="주소" disabled/>&nbsp;<input type="text" name="addr2" placeholder="상세주소"/></td></tr>
			</table>
		</form>
		<div id="btns">
			<button id="edit">설정완료</button>
			<button id="remove">계정탈퇴</button>
		</div>
	</div>
</section>
<jsp:include page="footer.jsp"/>
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="${path}/js/edit_mem_info.js" type="text/javascript"></script>
</html>