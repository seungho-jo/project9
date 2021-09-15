<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.*"    
    import = "java.io.File"
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
<link rel="stylesheet" href="css/os_detail.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<script src="${path}/js/os_detail.js" type="text/javascript"></script>
<script type="text/javascript">

</script>
<body>
<%
	String directory = application.getRealPath("upload/");
	String files[] = new File(directory).list();
%>
<jsp:include page="header.jsp"/>
	<section>
		<jsp:include page="osnavi.jsp" />
		
		<div id="outsourcing">
			<div id="os_cate">
			<h4>${detail.category}</h4>
			</div>
			<div id="os_title">
				<h1>${detail.title}</h1>
			</div>
			<div id="user_info">
				<div id="os_profile">
					<img src="upload/${detail.profile}">
				</div>	
				<div id="user_info_con">
				<div id="user_name">
					<span id="user_1">${detail.name}</span>
				</div>		
				<div id="os_price">
					<div id="user_2">예산</div>
					<div id="user_3">${detail.budget}</div>
				</div>
				<div id="os_tax">
					<div id="user_4">세금계산서</div>
					<div id="user_5">${detail.taxinvoice}</div>
				</div>
				<div id="os_btn">
					<input type="button" name="sug_btn" id="sug_btn" value="견적제안하기"/>
				</div>
				</div>
			</div>
			<div id="os_info">
				<div id="os_way">
					<h3>진행방식</h3>
					<span>${detail.ftf}</span>
				</div>
				<div id="os_loc">
					<h3>지역</h3>
					<span>${detail.loc}</span>
				</div>
				<div id="os_deadline">
					<h3>기한</h3>
					<span>${detail.datepicker}</span>
				</div>
				<div id="os_ex">
					<h3>구체적인 업무 설명</h3>
					<div id="os_ex_con">
					<span>${detail.explain}</span>
					</div>
				</div>
				<div id="os_file">
					<h3>다운로드 파일</h3>
					<span><a href="<c:url value="/osdetail.do?fileDir=/wcom/manual&fileName=test.jpg"/>">테스트 파일</a></span>
				</div>
			</div>
		</div>
	</section>
	<div id="cl"></div>
	<jsp:include page="footer.jsp"/>
</body>

</html>