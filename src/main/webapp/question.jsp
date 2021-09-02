<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.*"    
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<c:set var = "path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>
<%
	String[] title = {"강의 문의남김니다","환불문의","결제방법","매칭후 만남이 없습니다","사기문의"};
	String[] dates = {"2021-08-07","2021-07-04","2020-02-07","2020-01-07","2019-08-07"};
	String[] result = {"N","Y","Y","N","Y"};
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근면하고 성실하게 살아라. 그리고 늘 유익한 일에 열중하라(프랭클린)</title>
<link rel="stylesheet" href="${path}/css/question.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp"/>
<section>
	<jsp:include page="myNavi.jsp"/>
	<div id="contents">
		<h1>내 문의 내역</h1>
		<button>문의 남기기</button>
		<table>
			<colgroup>
				<col width="10%">
				<col width="65%">
				<col width="15%">
				<col width="10%">
			</colgroup>
			<thead>
				<tr>
					<th>no</th>
					<th>제목</th>
					<th>작성일</th>
					<th>답변여부</th>
				</tr>
			</thead>
			<tbody>
				<%for(int i=0;i<title.length;i++){ %>
				<tr>
					<td><%=i+1 %></td><td><a href="#"><%=title[i] %></a></td>
					<td><%=dates[i] %></td><td><%=result[i] %></td>
				</tr>
				<%} %>
			</tbody>
		</table>
		<div id="paging">
			<%for(int i=0;i<title.length;i++){ %>
				<span><%=i+1%></span>
			<%} %>
		</div>
	</div>
</section>
<jsp:include page="footer.jsp"/>
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="${path}/js/question.js" type="text/javascript"></script>
</html>