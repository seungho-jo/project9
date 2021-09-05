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
<link rel="stylesheet" href="css/myclass_app_user.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">

	$(document).ready(function() {
		if($("#rev_btn").attr('value')=='승인완료'){
			$("#rev_btn").css('background','#f5007a');
		} 
		if($("#rev_btn").attr('value')=='승인대기'){
			$("#rev_btn").css('background','#6482FF');
		} 
	});
</script>
</head>
<body>	
	<jsp:include page="header.jsp"/>
	<section>
		<jsp:include page="myNavi.jsp"/>
		<div id="contents">
			<h2>수강중인 클래스 현황</h2>
			<hr style="margin-bottom: 50px;">
			<%--클래스현황 --%>	
			<div id="class_ing">
				<div id="ing_info">
					<div id='ing_title'>생화같은 카네이션 앙금쿠키 원데이 클래스</div>
					<div id="btn_div">
						<input type="button" name="rev_btn" id="rev_btn" value="승인완료"/>
					</div>
					<div id="ing_img">
						<img src="img/reco2.JPG">
					</div>					
					<div id="ing_info_con">
						<div id='ing_gosu'>
							<p>고수</p><span>이은정</span>
						</div>
						<div id='ing_day'>
							<p>수강일</p><span>2021-09-04</span>
						</div>
						<div id='ing_price'>
							<p>금액</p><span>44,000원</span>
						</div>
						<div id='ing_loc'>
							<p>장소</p><span>개인공지</span>
						</div>
						<div id='ing_time'>
							<p>시간</p><span>개인공지</span>
						</div>
					</div>
				</div>
			</div>
			<div id="class_ing">
				<div id="ing_info">
					<div id='ing_title'>생화같은 카네이션 앙금쿠키 원데이 클래스</div>
					<div id="btn_div">
						<input type="button" name="rev_btn" id="rev_btn" value="승인대기"/>
					</div>
					<div id="ing_img">
						<img src="img/reco1.jpg">
					</div>					
					<div id="ing_info_con">
						<div id='ing_gosu'>
							<p>고수</p><span>오늘한입</span>
						</div>
						<div id='ing_day'>
							<p>수강신청일</p><span>2021-09-04</span>
						</div>
						<div id='ing_price'>
							<p>금액</p><span>25,000원</span>
						</div>
						<div id='ing_loc'>
							<p>장소</p><span>추후공지</span>
						</div>
						<div id='ing_time'>
							<p>시간</p><span>추후공지</span>
						</div>
					</div>
				</div>
			</div>
			
			
		</div>
	</section>
	<jsp:include page="footer.jsp"/>
</body>
<script src="${path}/js/myclass_app_user.js" type="text/javascript"></script>
</html>