<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.*"    
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<c:set var = "path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>
<%
	String[] coupons = {"coupon1","coupon2","coupon3","coupon4","coupon5","coupon6","coupon7","coupon8","coupon9"};
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="${path}/css/myCoupon.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>	
	<jsp:include page="header.jsp"/>
	<section>
		<jsp:include page="myNavi.jsp"/>
		<div id="contents">
			<h1>내 쿠폰</h1>
			<p>총 계수: 30개</p>
			<hr>
			<div>
				<%
					for(int i=0;i<coupons.length;i++){
						int ran = (int)(Math.random()*11);
				%>
				<div>
					<div class="<%=coupons[i]%>"></div>
					<span>보유 개수 : <%=ran%>개</span>
				</div>
				<%} %>
			</div>
		</div>
	</section>
	<jsp:include page="footer.jsp"/>
</body>
<script src="${path}/js/myCoupon.js" type="text/javascript"></script>
</html>