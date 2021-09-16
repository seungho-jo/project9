<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
 
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<c:set var = "path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근면하고 성실하게 살아라. 그리고 늘 유익한 일에 열중하라(프랭클린)</title>
<link rel="stylesheet" href="${path}/admin/css/admin_coupon.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>


<body>
<jsp:include page="admin_header.jsp"></jsp:include>
	<section>	
	<jsp:include page="admin_nav.jsp"></jsp:include>
		<div id="main">
			<div id="coupon_title">
				<div id="head">
					<h3> 쿠폰 - 조회</h3>
					<hr>
				</div>
			</div>
			<div id="coupon_box">
						<div id="coupon_content">
							<img src="" alt=""/>
							<p class="title">전체 쿠폰 수 : </p>
							<p></p>
						</div>
						<div id="coupon_content">
							<img src="" alt=""/>
							<p class="title">기간 만료된 쿠폰 : </p>
							<p></p>
						</div>
				</div>
			
			<div id="table01">
				<table>
					<tr>
					<th scope="col">coupon Name</th>
					<th scope="col">coupon Number</th>
					<th scope="col">discount</th>
					<th scope="col">created Day</th>
					<th scope="col">status</th></tr>
					<c:forEach var = "cp" items="${clist}" varStatus="sts">
					<tr><td>${cp.couponName}</td><td>${cp.couponNumber}</td>
					<td>${cp.discount}</td><td>${cp.cDay}</td><td>${cp.statusS}</td></tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</section>
</body>
</html>