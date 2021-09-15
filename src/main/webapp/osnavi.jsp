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
<script type="text/javascript">
onload = function() {
	$("ul>li").click(function(){
	    $(this).addClass("active");  
	    $(this).siblings().removeClass("active");
	});
};

</script>
<body>
	<div id="navi">
	
		<h4>외주</h4>
		<ul>
			<li>
				<a href="os_form.jsp">외주신청</a>
			</li>
		<h4>카테고리</h4>
			<li>
				전체
				<input type="hidden" value="os_list.jsp">
			</li>
			<li>
				<a href="oslist.do?category=레슨">레슨</a>
			</li>
			<li>
				<a href="oslist.do?category=홈리빙">홈/리빙</a>
			</li>
			<li>
				<a href="oslist.do?category=이벤트">이벤트</a>
			</li>
			<li>
				<a href="oslist.do?category=비즈니스">비즈니스</a>
			</li>
			<li>
				<a href="oslist.do?category=디자인개발">디자인/개발</a>
			</li>
			<li>
				<a href="oslist.do?category=건강/미용">건강/미용</a>
			</li>
			<li>
				<a href="oslist.do?category=알바">알바</a>
			</li>
			<li>
				<a href="oslist.do?category=기타">기타</a>
			</li>
		</ul>
	</div>
</body>

</html>