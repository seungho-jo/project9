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
<link rel="stylesheet" href="css/myclass_os_user.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>	
	<jsp:include page="header.jsp"/>
	<section>
		<jsp:include page="myNavi.jsp"/>
		<div id="contents">
			<h2>신청한 외주 리스트</h2>
			<hr style="margin-bottom: 50px;">
			<%--고수의 외주현황 --%>	
			<c:choose>
				<c:when test="${oslist.size()>0 }">
				<c:forEach items="${oslist}" var="Oslist">
			<div id="class_ing">
				<div id="ing_info">
					<div id='ing_title'>${Oslist.title}</div>	<span id="dday">D${Oslist.dday}</span>
					<span id="os_btn">진행중</span>	
					<div id="ing_info_con">
						<div id='ing_price'>
							<p>금액</p><span><fmt:formatNumber type="number" maxFractionDigits="3" value="${Oslist.budget}" /></span>
						</div>
						<div id='ing_tax'>
							<p>세금계산서여부</p><span>${Oslist.taxinvoice}</span>
						</div>
						<div id='ing_day'>
							<p>기한</p><span>${Oslist.datepicker}</span>
						</div>				
					</div>
				</div>
			</div>
				</c:forEach>
				</c:when>
				<c:otherwise>
					<h3>신청한 외주가 없습니다.</h3>
				</c:otherwise>
			</c:choose>
			
		</div>
	</section>
	<jsp:include page="footer.jsp"/>
</body>
<script src="${path}/js/myclass_os_user.js" type="text/javascript"></script>
</html>