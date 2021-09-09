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
				<h2>클래스 신청 목록</h2>
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
				<tr><th class="no">번호</th><th class="clsName">클래스명</th><th class="id">아이디</th><th class="date">접수일</th><th class="state">처리여부</th></tr>
				<tr><td>1</td><td>즐거운 승마 클래스</td><td>hihi</td><td>2021.08.26</td><td>등록완료</td></tr>
				<tr><td>2</td><td>겨울대비 뜨개질 원데이 클래스(그룹)</td><td>neet</td><td>2021.08.26</td><td>등록완료</td></tr>
				<tr><td>3</td><td>양양에서 서핑하기</td><td>shaka</td><td>2021.08.26</td><td>등록완료</td></tr>
				<tr><td>4</td><td>같이 스터디하실 분~~~~~~</td><td>wuwuuu</td><td>2021.08.26</td><td>반려</td></tr>
				<tr><td>5</td><td>[강남] PT 봐드립니다(경력다수)</td><td>hellhell</td><td>2021.08.24</td><td>등록완료</td></tr>
				<tr><td>6</td><td>오픽고수가 왔어요</td><td>opiii</td><td>2021.08.23</td><td>등록완료</td></tr>
				<tr><td>7</td><td>[성수]원데이 도자기 클래스</td><td>lldik</td><td>2021.08.23</td><td>등록완료</td></tr>
			</table>
		</div>
	</div>
</section>
</body>
</html>