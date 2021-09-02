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
<section>
	<div>
		<div class="title">
			<div class="title-left">
				<h2>전체 사용자 리스트</h2>
			</div>
			<div class="title-right">
				<select>
					<option value="id">아이디</option>
					<option value="name">닉네임</option>
					<option value="phone">전화번호</option>
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
				<tr><th class="no">번호</th><th class="id">아이디</th><th class="name">닉네임</th><th class="phone">전화번호</th><th class="type">계정유형</th></tr>
				<tr><td>1</td><td>himan</td><td>hihi</td><td>01012319283</td><td>사용자</td></tr>
				<tr><td>2</td><td>hihi</td><td>asdaf</td><td>01028379192</td><td>사용자</td></tr>
				<tr><td>3</td><td>dasda</td><td>ggdd</td><td>01023428193</td><td>사용자</td></tr>
				<tr><td>4</td><td>gqwfq</td><td>sdw</td><td>010124151242</td><td>고수</td></tr>
				<tr><td>5</td><td>asdag</td><td>fdgv</td><td>01032623423</td><td>고수</td></tr>
				<tr><td>6</td><td>gegwed</td><td>sdas</td><td>01043245231</td><td>사용자</td></tr>
			</table>
		</div>
	</div>
</section>
</body>
</html>