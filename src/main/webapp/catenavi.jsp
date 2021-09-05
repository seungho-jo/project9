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
	$("li").click(function(){
	    $(this).addClass("active");  
	    $(this).siblings().removeClass("active");
	});
};

</script>
<body>
	<div id="navi">
		<h4>카테고리</h4>
		<ul>
			<li class="list">
				레슨
				<input type="hidden" value="classlist.jsp">
			</li>
			<li class="list">
				홈/리빙
			</li>
			<li class="list">
				이벤트
			</li>
			<li class="list">
				비즈니스
			</li>
			<li class="list">
				디자인/개발
			</li>
			<li class="list">
				건강/미용
			</li>
			<li class="list">
				알바
			</li>
			<li class="list">
				기타
			</li>
		</ul>
	</div>
</body>

</html>