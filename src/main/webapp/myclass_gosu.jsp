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
<link rel="stylesheet" href="css/myclass_gosu.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>	
	<jsp:include page="header.jsp"/>
	<section>
		<jsp:include page="myNavi.jsp"/>
		<div id="contents">
			<h2>운영중인 클래스 현황</h2>
			<hr style="margin-bottom: 50px;">
			<%--클래스현황 --%>	
			<c:choose>
			<c:when test="${classgosulist.size()>0}">
			<c:forEach items="${classgosulist} var="cgl">
			<div id="class_ing">
				<div id="ing_info">
					<div id='ing_title'>${cgl.title}</div>
					<div>
						<input type="button" id="rev_btn" value="평가하기"/>
					</div>
					<div id="ing_img">
						<img src="upload/${cgl.profile}">
					</div>					
					<div id="ing_info_con">
						<div id='ing_gosu'>
							<p>고수</p><span>${cgl.nickname}</span>
						</div>
						<div id='ing_price'>
							<p>금액</p><span>${cgl.price}</span>
						</div>
						<div id='ing_loc'>
							<p>장소</p><span>${cgl.loc}</span>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>
			</c:when>
				<c:otherwise>
					<h3>개설된 클래스가 없습니다.</h3>
				</c:otherwise>
			</c:choose>
			
		</div>
	</section>
	<jsp:include page="footer.jsp"/>
</body>
<script src="${path}/js/myclass_gosu.js" type="text/javascript"></script>
</html>