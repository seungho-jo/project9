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
<c:set var="img" value='{"coupon1","coupon2","coupon3","coupon4","coupon5","coupon6","coupon7","coupon8","coupon9"}'/>
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
			<p>총 갯수: ${total}개</p>
			<hr>
			<div>
				<c:forEach var="c" items="${coupon}" varStatus="sts">
					<div>
						<div class="coupon${c.discount}"></div>
						<span>보유 개수 : ${c.cnt}개</span>
					</div>
				</c:forEach>	
			</div>
		</div>
	</section>
	<jsp:include page="footer.jsp"/>
</body>
<script src="${path}/js/myCoupon.js" type="text/javascript"></script>
</html>