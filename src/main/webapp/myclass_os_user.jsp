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
<script type="text/javascript">
	onload = function() {
	var today = new Date(); //현재 날짜 가져오기
  	var dday = new Date("2021-09-31"); //디데이
    var gap =  today.getTime()-dday.getTime();
    var result = Math.ceil(gap / (1000 * 60 * 60 * 24));
	document.getElementById("dday").innerHTML = "D"+result;
	
	};
</script>
</head>
<body>	
	<jsp:include page="header.jsp"/>
	<section>
		<jsp:include page="myNavi.jsp"/>
		<div id="contents">
			<h2>신청한 외주 리스트</h2>
			<hr style="margin-bottom: 50px;">
			<%--고수의 외주현황 --%>	
			<div id="class_ing">
				<div id="ing_info">
					<div id='ing_title'>운동 관련 어플리케이션 제작</div>	<span id="dday"></span>
					<span id="os_btn">진행중</span>	
					<div id="ing_info_con">
						<div id='ing_price'>
							<p>금액</p><span>협의가능</span>
						</div>
						<div id='ing_tax'>
							<p>세금계산서여부</p><span>필요</span>
						</div>
						<div id='ing_day'>
							<p>기한</p><span>2021-09-31</span>
						</div>				
					</div>
				</div>
			</div>

			
		</div>
	</section>
	<jsp:include page="footer.jsp"/>
</body>
<script src="${path}/js/myclass_os_user.js" type="text/javascript"></script>
</html>