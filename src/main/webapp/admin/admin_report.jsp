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
<link rel="stylesheet" href="${path}/admin/css/admin_report.css">
<script src="https://use.fontawesome.com/releases/v5.6.1/css/all.css"></script>
</head>

<body>
<jsp:include page="admin_header.jsp"></jsp:include>
	<section>	
	<jsp:include page="admin_nav.jsp"></jsp:include>
		<div id="main">
			<div id="report_title">
				<div id="head">
					<h3>신고</h3>
					<hr>
				</div>
			</div>
		
			<div id="date">
					<div id="status">
						<select>
							<option>전체</option>
							<option>대기</option>
							<option>승인</option>					
						</select>
					</div>
				<div id="date_loc">
					<input type="date" value="작성일자"/>
				</div>	
				
			</div>
			
			<div id = "table01">
			<table>
				<tr>
					<th scope="col">User Id</th>
					<th scope="col">Class Name</th>
					<th scope="col">Class Number</th>
					<th scope="col">Content</th>
					<th scope="col">Date</th>
					<th scope="col">Status</th>
					<th scope="col">Delete</th></tr>
			</table>
			</div>
			
			<div id="button">
			<input type="button" value = "삭제"/>
		</div>
	</div>
	</section>
</body>
</html>