<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.*"    
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<c:set var = "path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>
<%
	String[] title = {"초보 그림러가 인기 작가가 되는 법,콕스의 독학비법서","2000만원으로 5년 만에 경제적 자유를! 세상에 공개되지 않는 진짜 이야기","스마트스토어로 월 100만원 만들기","220문장으로 토익부터 회화까지!!","발상부터 완성까지! 클립스튜디오로 만드는 카카오톡 이모티콘"};
	String[] pay = {"53,000원/시간","51,000원/시간","27,700원/시간","19,000원/시간","42,200원/시간"};
	String[] dates = {"2021-08-07","2021-08-04","2020-08-07","2020-04-07","2019-08-07"};
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근면하고 성실하게 살아라. 그리고 늘 유익한 일에 열중하라(프랭클린)</title>
<link rel="stylesheet" href="${path}/css/paymentHistory.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<jsp:include page="header.jsp"/>
<section>
	<jsp:include page="myNavi.jsp"/>
	<div id="contents">
		<h1>결제내역</h1>
		<select>
			<option>선택하세요</option>
			<option>최신순</option>
			<option>가격순</option>
			<option>이름순</option>
		</select>
		<table>
			<colgroup>
				<col width="10%">
				<col width="55%">
				<col width="20%">
				<col width="15%">
			</colgroup>
			<thead>
				<tr>
					<th>no</th>
					<th>클래스명</th>
					<th>가격</th>
					<th>결제일</th>
				</tr>
			</thead>
			<tbody>
				<%for(int i=0;i<title.length;i++){ %>
				<tr>
					<td><%=i+1 %></td><td><a href="#"><%=title[i] %></a></td>
					<td><%=pay[i] %></td><td><%=dates[i] %></td>
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
<script src="${path}/js/paymentHistory.js" type="text/javascript"></script>
</html>