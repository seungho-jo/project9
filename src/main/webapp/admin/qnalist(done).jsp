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
<link rel="stylesheet" href="css/list.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<script src="${path}/js/userlist.js" type="text/javascript"></script>
<script type="text/javascript">

</script>
<body>
<jsp:include page="admin_header.jsp"></jsp:include>
	<section>	
	<jsp:include page="admin_nav.jsp"></jsp:include>
	<div>
		<div class="title">
			<div class="title-left">
				<h2>답변완료 목록</h2>
			</div>
			<div class="title-right">
				<select>
					<option value="id">아이디</option>
					<option value="title">제목</option>
				</select>
				<div class="schBox">
					<input type="text" name="schMem"/>
					<div class="schBtn">
						<i class="fas fa-search fa-sm"></i>
					</div>
				</div>
			</div>
		</div>
		<div class="list">
			<table class="listTable">
				<tr><th class="no">번호</th><th class="ctg">카테고리</th><th class="title">제목</th><th class="name">닉네임</th><th class="date">등록일</th></tr>
				<tr><td>1</td><td>결제</td><td>자바 클래스 수강했는데요</td><td>hhihihi</td><td>2021.09.01</td></tr>
				<tr><td>2</td><td>결제</td><td>어제 결제건ㅠㅠ</td><td>llook</td><td>2021.09.01</td></tr>
				<tr><td>3</td><td>클래스</td><td>예약관련해서 여쭤봅니다</td><td>reseses</td><td>2021.09.01</td></tr>
				<tr><td>4</td><td>오류</td><td>이거 어플 오류인가요</td><td>mindmi</td><td>2021.09.01</td></tr>
				<tr><td>5</td><td>결제</td><td>결제확인좀요</td><td>cansdnan</td><td>2021.09.01</td></tr>
				<tr><td>6</td><td>환불</td><td>네이버페이 환불</td><td>nanaem</td><td>2021.09.01</td></tr>
				<tr><td>7</td><td>기타</td><td>클래스 수강했는데</td><td>aksodm</td><td>2021.09.01</td></tr>
				<tr><td>8</td><td>기타</td><td>신청확인좀요</td><td>amsmsm</td><td>2021.09.01</td></tr>
			</table>
		</div>
	</div>
</section>
</body>
</html>