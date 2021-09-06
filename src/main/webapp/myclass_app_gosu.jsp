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
<link rel="stylesheet" href="css/myclass_app_gosu.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">

	$(document).ready(function() {
		if($(".rev_btn").val()=='승인대기'){
			$(this).css('background','#6482FF');
		} 
		if($(".rev_btn").val()=='승인완료'){
			$(this).css('background','#f5007a');
		} 
		
		
		$(".rev_btn").click(function(){
			confirm("승인하시겠습니까?");
			$(this).val("승인완료");
			if($(".rev_btn").val()=='승인완료'){
				$(this).css('background','#f5007a');
			} 
			if($(".rev_btn").val()=='승인대기'){
				$(this).css('background','#6482FF');
			} 
		});
	});
	
</script>
</head>
<body>	
	<jsp:include page="header.jsp"/>
	<section>
		<jsp:include page="myNavi.jsp"/>
		<div id="contents">
			<h2>수업신청서</h2>
			<hr style="margin-bottom: 50px;">
			<%--수강신청서 현황 --%>	
			<div id="class_ing">
				<div id="ing_info">
					<div id='ing_title'>생화같은 카네이션 앙금쿠키 원데이 클래스</div>
					<div id="btn_div">
						<input type="button" name="rev_btn" class="rev_btn" value="승인완료"/>
					</div>
					<div id="ing_img">
						<img src="img/dog1.jpg">
					</div>					
					<div id="ing_info_con">
						<div id='ing_user'>
							<p>이름</p><span>홍길동</span>
						</div>
						<div id='ing_day'>
							<p>첫수업일</p><span>2021-09-05</span>
						</div>
						<div id='ing_time'>
							<p>시간</p><span>13-17</span>
						</div>
					</div>
				</div>
			</div>
			<div id="class_ing">
				<div id="ing_info">
					<div id='ing_title'>생화같은 카네이션 앙금쿠키 원데이 클래스</div>
					<div id="btn_div">
						<input type="button" name="rev_btn" class="rev_btn" value="승인대기"/>
					</div>
					<div id="ing_img">
						<img src="img/dog2.jpg">
					</div>					
					<div id="ing_info_con">
						<div id='ing_user'>
							<p>이름</p><span>김길동</span>
						</div>
						<div id='ing_day'>
							<p>첫수업일</p><span>2021-09-08</span>
						</div>
						<div id='ing_time'>
							<p>시간</p><span>시간협의</span>
						</div>
					</div>
				</div>
			</div>
			
			
		</div>
	</section>
	<jsp:include page="footer.jsp"/>
</body>
<script src="${path}/js/myclass_app_gosu.js" type="text/javascript"></script>
</html>