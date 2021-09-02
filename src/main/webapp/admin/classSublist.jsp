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
				<h2>운영중인 클래스</h2>
			</div>
			<div class="title-right">
				<select>
					<option value="clsName">클래스명</option>
					<option value="GosuName">고수명</option>
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
				<tr><th class="no">번호</th><th class="clsName">클래스명</th><th class="id">아이디</th><th class="date">접수일</th></tr>
				<tr><td>12313</td><td>즐거운 승마 클래스</td><td>hihi</td><td>2021.08.26</td></tr>
				<tr><td>12314</td><td>겨울대비 뜨개질 원데이 클래스(그룹)</td><td>neet</td><td>2021.08.26</td></tr>
				<tr><td>12315</td><td>양양에서 서핑하기</td><td>shaka</td><td>2021.08.26</td></tr>
				<tr><td>12319</td><td>같이 스터디하실 분~~~~~~</td><td>wuwuuu</td><td>2021.08.26</td></tr>
				<tr><td>12320</td><td>[강남] PT 봐드립니다(경력다수)</td><td>hellhell</td><td>2021.08.24</td></tr>
				<tr><td>12301</td><td>오픽고수가 왔어요</td><td>opiii</td><td>2021.08.23</td></tr>
				<tr><td>12391</td><td>[성수]원데이 도자기 클래스</td><td>lldik</td><td>2021.08.23</td></tr>
			</table>
		</div>
	</div>
</section>
</body>
</html>