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
<script type="text/javascript">
var msg = "${msg}";
console.log(msg);
if(msg!=""){
	alert(msg);
}
</script>
</head>
<body>
<jsp:include page="header.jsp"/>
<section>
	<jsp:include page="myNavi.jsp"/>
	<div id="contents">
		<h1>회원정보</h1>
		<form action="join.do" method="post" enctype="multipart/form-data">
			<input type="hidden" name="choice">
			<div id="profile">
				<c:choose>
					<c:when test="${mem.profile!=null}"><img id="preview" src="${path}/upload/${mem.profile}"><br></c:when>
					<c:otherwise><img id="preview" src="${path}/img/bros_blank.jpg"><br></c:otherwise>
				</c:choose>
				<input type="file" name="profile" onchange="setThumbnail(this)"/>
				<input type="button" id="click" value="업로드"/>
			</div>
			<table>
				<tr><td>아이디</td></tr>
				<tr><td><input type="text" name="id" value="${mem.id}"/></td></tr>
				<tr><td>비밀번호</td></tr>
				<tr><td><input type="password" name="pass" value="${mem.pass}" placeholder="영문+숫자+특수문자 8~15자리 입력해주세요"/></td></tr>
				<tr><td>비밀번호 확인</td></tr>
				<tr><td><input type="password" name="re_pass"  placeholder="다시한번 비밀번호를 적어주세요"/></td></tr>
				<tr><td>이름</td></tr>
				<tr><td><input type="text" name="name" value="${mem.name}"/></td></tr>
				<tr><td>휴대전화</td></tr>
				<tr><td><input type="text" name="phone" value="${mem.phone}" placeholder="-없이 입력해주세요"/></td></tr>
				<tr><td>주소</td></tr>
				<tr><td><input type="text" name="zipcode" value="${mem.zipcode}" placeholder="우편번호"/><input type="button" id="search" onclick="sample6_execDaumPostcode()" value="검색"></td></tr>
				<tr><td><input type="text" name="addr1" placeholder="주소" value="${mem.address1}"/>&nbsp;<input type="text" name="addr2" value="${mem.address2}" placeholder="상세주소"/></td></tr>
			</table>
			<div class="background">
			<div class="window">
				<div class="popup">
					<h4>비밀번호 재 확인</h4>
					<input type="password" name="pass_check" placeholder="작성 후 엔터키를 눌러주세요"/><br>
					<input type="button" name="close" value="닫기" id="close"/>
				</div>
			</div>
			</div>
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