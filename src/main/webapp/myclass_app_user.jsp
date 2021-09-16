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
		console.log($(".rev_btn").length)
		for(var i=0;i<$(".rev_btn").length;i++){
			if($(".rev_btn").eq(i).attr('value')=='승인완료'){
				$(".rev_btn").eq(i).css('background','#f5007a');
			} else if($(".rev_btn").eq(i).attr('value')=='승인대기'){
				$(".rev_btn").eq(i).css('background','#6482FF');
			} 
		}
	});
</script>
</head>
<body>	
	<jsp:include page="header.jsp"/>
	<section>
		<jsp:include page="myNavi.jsp"/>
		<div id="contents">
			<h2>수강신청 클래스 현황</h2>
			<hr style="margin-bottom: 50px;">
			<%--클래스현황 --%>	
			<c:forEach var="list" items="${myaplist}" varStatus="sts" >
				<div id="class_ing">
					<div id="ing_info">
						<div id='ing_title'>${list.title}</div>
						<div id="btn_div">
							<input type="button" name="rev_btn" class="rev_btn" value="${list.statusS}"/>
						</div>
						<div id="ing_img">
							<img src="${path}/upload/${list.formimg}">
						</div>					
						<div id="ing_info_con">
							<div id='ing_gosu'>
								<p>고수</p><span>${list.nickname}</span>
							</div>
							<div id='ing_day'>
								<p>수강일</p><span>협의 후 결정</span>
							</div>
							<div id='ing_price'>
								<p>금액</p><span><fmt:formatNumber value="${list.price}" pattern="#,###.##"/>원</span>
							</div>
							<div id='ing_loc'>
								<p>장소</p><span>${list.loc}</span>
							</div>
							<div id='ing_time'>
								<p>시간</p><span>추후공지</span>
							</div>
						</div>
					</div>
				</div>		
			</c:forEach>
		</div>
	</section>
	<jsp:include page="footer.jsp"/>
</body>
<script src="${path}/js/myclass_app_user.js" type="text/javascript"></script>
</html>