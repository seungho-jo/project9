<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>근면하고 성실하게 살아라. 그리고 늘 유익한 일에 열중하라(프랭클린)</title>
<link rel="stylesheet" href="${path}/admin/css/admin_coupon_del.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body>
<jsp:include page="admin_header.jsp"></jsp:include>
	<section>	
	<jsp:include page="admin_nav.jsp"></jsp:include>
		<div id="main">
			<div id="coupon_title">
				<div id="head">
					<h3> 쿠폰 - 삭제</h3>
					<hr>
				</div>
			</div>
		
			<div id="dropdown">
				<div class="kind">
					<table>
						<tr>
							<th>쿠폰 </th>
								<td>
								<select>
									<option>전체</option>
									<option>생성일</option>
									<option>오름차순</option>
									<option>내림차순</option>
									<option>만료된 쿠폰</option>
								</select>
							</td>
						</tr>
					</table>
				</div>
			</div>
				
			<div id="table01">
				<table>
					<tr><th scope="col">Coupon Name</th>
					<th scope="col">CouponNumber</th>
					<th scope="col">ClassName</th>
					<th scope="col">Date</th>
					<th scope="col">Delete</th></tr>					
					<tr><td></td><td></td><td></td><td></td></tr>
				</table>
			</div>
	
		<div id="button">
			<input type="button" value="삭제"/>
		</div>
	</div>
	</section>
</body>
</html>