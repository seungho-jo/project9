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
	String directory = application.getRealPath("/upload/");
	String files[] = new File(directory).list();
	
%>
<jsp:include page="header.jsp"/>
	<section>
		<jsp:include page="osnavi.jsp" />
		
		<div id="outsourcing">
			<div id="os_cate">
			<h4>디자인/개발</h4>
			</div>
			<div id="os_title">
				<h1>운동 관리 어플리케이션 제작</h1>
			</div>
			<div id="user_info">
				<div id="os_profile">
					<img src="img/dog1.jpg">
				</div>	
				<div id="user_info_con">
				<div id="user_name">
					<span id="user_1">홍길동</span>
				</div>		
				<div id="os_price">
					<div id="user_2">예산</div>
					<div id="user_3">협의가능</div>
				</div>
				<div id="os_tax">
					<div id="user_4">세금계산서</div>
					<div id="user_5">불필요</div>
				</div>
				<div id="os_btn">
					<input type="button" name="sug_btn" id="sug_btn" value="견적제안하기"/>
				</div>
				</div>
			</div>
			<div id="os_info">
				<div id="os_way">
					<h3>진행방식</h3>
					<span>상관없음</span>
				</div>
				<div id="os_loc">
					<h3>지역</h3>
					<span>경기도</span>
				</div>
				<div id="os_deadline">
					<h3>기한</h3>
					<span>2021.09.31</span>
				</div>
				<div id="os_ex">
					<h3>구체적인 업무 설명</h3>
					<div id="os_ex_con">
					<span><프로젝트의 현재 상황>
이 어플리케이션은 회원가입시 받은 정보(문진표 작성)의 결과를 토대로 필요한 운동을 보여주도록 하는 것이 목적입니다.<br>
현재는 초보 개발자, 운동사, UI/UX 디자이너분이 계시고,<br>
어플리케이션의 기초가 될 개발 작업을 의뢰하고자 합니다.<br>
<br>

<상세한 업무 내용><br>
Flutter와 Spring을 이용한 개발이였으면 좋겠습니다.<br>
주요 기능은 회원가입 시 문진표의 결과에 따라 필요한 운동을 보여주는 것입니다.<br>

어플리케이션의 기반을 잡는 것이 힘들어서 의뢰하는 것이기 때문에 나중에 수정 가능한 코드로 개발해주셨으면 합니다.<br>
				
				디바이스<br>
				안드로이드 / iOS<br>
				기본기능<br>
				항목 탐색/필터(검색)<br>
				회원 관련 기능<br>
				회원가입 및 정보 관리<br>

					</span>
					</div>
				</div>
				<div id="os_file">
					<h3>다운로드 파일</h3>
					<span><% for(String file : files) {
						out.write("<a href=\"" + request.getContextPath()+"/downloadAction?file=" +
								java.net.URLEncoder.encode(file, "UTF-8") + "\">" + file + "</a><br>");} %></span>
				</div>
			</div>
		</div>
	</section>
	<div id="cl"></div>
	<jsp:include page="footer.jsp"/>
</body>

</html>