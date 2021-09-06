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
<title></title>
<link rel="stylesheet" href="${path}/css/join.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<section>
		<h1>회원정보 입력</h1>
		<div>
			<form action="join.do" method="post" enctype="multipart/form-data">
				<table>
					<tr><td>아이디</td></tr>
					<tr><td><input type="text" name="id" placeholder="아이디를 입력해주세요"/><input type="button" value="중복검사" id="idCheck"></td></tr>
					<tr><td>비밀번호</td></tr>
					<tr><td><input type="password" name="pass" placeholder="영문+숫자+특수문자 8~15자리 입력해주세요"/></td></tr>
					<tr><td>비밀번호 확인</td></tr>
					<tr><td><input type="password" name="re_pass" placeholder="비밀번호를 확인해주세요"/></td></tr>
					<tr><td>이름</td></tr>
					<tr><td><input type="text" name="name" placeholder="이름을 입력해주세요"/></td></tr>
					<tr><td>휴대전화</td></tr>
					<tr><td><input type="text" name="phone" placeholder="-없이 입력해주세요"/></td></tr>
					<tr><td>주소</td></tr>
					<tr><td><input type="text" name="zipcode" placeholder="우편번호"/><input type="button" id="search" onclick="sample6_execDaumPostcode()" value="검색"></td></tr>
					<tr><td><input type="text" name="addr1" placeholder="주소"/>&nbsp;<input type="text" name="addr2" placeholder="상세주소"/></td></tr>
				</table>
				<div id="profile">
					<img id="preview" src="${path}/img/bros_blank.jpg"><br>
					<input type="file" name="profile" onchange="setThumbnail(this)" value="업로드"/>
					<input type="button" id="click" value="업로드"/>
				</div>
				<div id="clear"></div>
			</form>
		</div>
		<p>유저의 허락없이 게시물을 올리지 않습니다<br>
		오늘의 수업의 <span id="show">이용약관</span>및 <span id="show2">개인정보처리방침</span>에 동의합니다</p>
		<button id="submit">회원가입</button>
	</section>
	<div class="background">
		<div class="window">
			<div class="popup">
				<jsp:include page="TermsOfUse.jsp"></jsp:include>
				<input type="button" name="close" value="닫기" id="close"/>
			</div>
		</div>
	</div>
	<div class="background2">
		<div class="window2">
			<div class="popup2">
				<jsp:include page="PrivacyPolicy.jsp"></jsp:include>
				<input type="button" name="close" value="닫기" id="close2"/>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="${path}/js/join.js" type="text/javascript"></script>
</html>