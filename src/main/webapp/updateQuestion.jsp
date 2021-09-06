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
<link rel="stylesheet" href="${path}/css/updateQuestion.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="${path}/smarteditor2/js/HuskyEZCreator.js"></script>
</head>
<body>
<jsp:include page="header.jsp"/>
	<section>
		<h1>문의 내역 수정</h1>
		<form>
			<table>
				<colgroup>
					<col width="10%">
					<col width="90%">
				</colgroup>
				<tr>
					<th>카테고리</th>
					<td>
						<select>
							<option>선택하세요</option>
							<option selected>수업</option>
							<option>결제</option>
							<option>쿠폰</option>
							<option>기타</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="title" value="강의문의 남깁니다"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea class="form-control" rows="10" cols="100" name="content" id="bo_content">문의내역....</textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="button" id="cancel" value="뒤로가기"><input id="btn" type="button" value="작성완료"></td>
				</tr>
			</table>
		</form>
	</section>
<jsp:include page="footer.jsp"/>
</body>
<script type="text/javascript" src="${path}/js/updateQuestion.js"></script>
</html>