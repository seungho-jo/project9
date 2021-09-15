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
<link rel="stylesheet" href="css/catenavi.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<script src="${path}/js/catenavi.js" type="text/javascript"></script>

<body>
	<div id="navi">
		<h4>카테고리</h4>
		<ul>
			<li class="list">
				<a href="classlist.do?category=레슨">레슨</a>
				<input type="hidden" name="cate" value="레슨">
			</li>
			<li class="list">
				<a href="classlist.do?category=홈리빙">홈/리빙</a>
				<input type="hidden" name="cate" value="홈리빙">
			</li>
			<li class="list">
				<a href="classlist.do?category=이벤트">이벤트</a>
				<input type="hidden" name="cate" value="이벤트">
			</li>
			<li class="list">
				<a href="classlist.do?category=비즈니스">비즈니스</a>
				<input type="hidden" name="cate" value="비즈니스">
			</li>
			<li class="list">
				<a href="classlist.do?category=디자인개발">디자인/개발</a>
				<input type="hidden" name="cate" value="디자인개발">
			</li>
			<li class="list">
				<a href="classlist.do?category=건강미용">건강미용</a>
				<input type="hidden" name="cate" value="건강미용">
			</li>
			<li class="list">
				<a href="classlist.do?category=알바">알바</a>
				<input type="hidden" name="cate" value="알바">
			</li>
			<li class="list">
				<a href="classlist.do?category=기타">기타</a>
				<input type="hidden" name="cate" value="기타">
			</li>
		</ul>
	</div>
</body>

</html>