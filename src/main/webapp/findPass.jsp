<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>   
<%
	String newPassS = request.getParameter("newPass");
	if(newPassS!=null&&newPassS!=""){
		System.out.println(newPassS);
%>
<script type="text/javascript">
	opener.location.href = "login.jsp";
	window.close();
</script>
<%		
	}
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
body,html{
	margin : 0;
}
h2{
	margin : 50px;
}
table{
	width : 60%;
	height : 300px;
	text-align : left;
}
table tr th{
	height : 20px;
	font-size : 17px;
	padding-left : 10%;
}
table tr:nth-child(2) th{
	padding-bottom : 30px;
}
table tr:last-child td{
	text-align : center;
}
table input{
	padding : 5px;
	font-size : 16px;
	width : 80%;
}
button {
	width: 70px;
	background-color: #6482FF;
	color: white;
	border: 0;
	border-radius: 5px;
	cursor: pointer;
	font-size: 17px;
	padding: 2% 0;
	margin : 0 10px;
}
button:hover{
	background-color: #4D56D5;
}
</style>
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body align="center">
	<h2>비밀번호 변경</h2>
	<form>
		<table align="center">
			<tr><th>새 비밀번호</th></tr>
			<tr><th><input type="password" name="newPass" placeholder="비밀번호를 입력해주세요"/></th></tr>
			<tr><th>새 비밀번호 확인</th></tr>
			<tr><th><input type="password" name="re_pass" placeholder="비밀번호를 확인해주세요"/></th></tr>
			<tr><td><button id="cancel">취소</button><button id="change">변경</button></td></tr>
		</table>
	</form>
</body>
<script type="text/javascript">
	$("#cancel").click(function(){
		window.close();
	})
	$("#change").click(function(){
		if ($("[name=newPass]").val() == "") {
			alert("비밀번호를 입력해주세요");
			$("[name=newPass]").focus();
		} else if ($("[name=re_pass]").val() == "") {
			alert("비밀번호를 확인란에 입력해주세요");
			$("[name=re_pass]").focus();
		} else{
			$("form").submit();
		}
	})
	var passCheck = /^[a-z0-9!@#$%^&*-+=]{8,15}$/;
	$("[name=newPass]").blur(function() {
		if (!passCheck.test($("[name=newPass]").val())) {
			if ($("table tr:eq(1) th br").length) {
	
			}
			else {
				$("table tr:eq(1) th").append("<br><span style='color:red;font-size : 14px;'>비밀번호는 영문+숫자+특수문자 조합으로 8~15자리 사용해야합니다</span>");
			}
		} else {
			$("table tr:eq(1) th br").remove();
			$("table tr:eq(1) th span").remove();
		}
	})
	$("[name=re_pass]").blur(function() {
		if ($("[name=re_pass]").val() != $("[name=newPass]").val()) {
			if ($("table tr:eq(3) th br").length) {
			}
			else {
				$("table tr:eq(3) th").append("<br><span style='color:red;font-size : 14px;'>다시한번 확인해주세요</span>");
			}
		} else {
			$("table tr:eq(3) th br").remove();
			$("table tr:eq(3) th span").remove();
		}
	})
</script>
</html>