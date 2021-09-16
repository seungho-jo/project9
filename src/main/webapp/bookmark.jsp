<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%
	String[] imgs = {"dog1.jpg","dog2.jpg","bros_blank.jpg"};
	String[] cls = {"reco1.jpg","reco2.JPG"};
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
<link rel="stylesheet" href="${path}/css/bookmark.css" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp"/>
	<section>
		<jsp:include page="myNavi.jsp"/>
		<div id="contents">
			<h1>북마크</h1>
			<hr>
			<div id="content">
				<c:forEach var="bm" items="${bmlist}">
				<div class="mark">
					<img src="${path}/upload/${bm.formimg}">
					<h5>${bm.title}</h5>
					<div>
						<img id="profile" src="${path}/upload/${bm.profile}">
						<p class="name">${bm.nickname}</p>
					</div>
					<p class="price"><span><fmt:formatNumber value="${bm.price}" pattern="#,###.##"/></span>/시간</p>
				</div>
				</c:forEach>
			</div>
		</div>
	</section>
<jsp:include page="footer.jsp"/>
</body>
<script type="text/javascript" src="${path}/js/bookmark.js"></script>
</html>