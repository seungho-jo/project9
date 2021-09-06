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
				<a href="${path}/detailgosu.jsp">
				<%for(int i=0;i<8;i++){ 
					int ran1 = (int)(Math.random()*3);
					int ran2 = (int)(Math.random()*2);
				%>
				<div class="mark">
					<img src="${path}/img/<%=cls[ran2]%>">
					<h5>생화같은 카네이션 앙금쿠키 원데이 클래스</h5>
					<div>
						<img id="profile" src="${path}/img/<%=imgs[ran1]%>">
						<p class="name">이은정</p>
					</div>
					<p class="price"><span>44,000원</span>/시간</p>
				</div>
				<%} %>
				</a>
			</div>
		</div>
	</section>
<jsp:include page="footer.jsp"/>
</body>
<script type="text/javascript" src="${path}/js/bookmark.js"></script>
</html>