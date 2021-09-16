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
<link rel="stylesheet" href="css/detailgosu.css"/>
<script src="https://kit.fontawesome.com/e34f41b737.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	var msg = "${msg}";
	if(msg!=null&&msg!=""){
		alert(msg);
	}
</script>
</head>
<body>
	<jsp:include page="header.jsp"/>
	
	<section>
	<input type="hidden" name="classcode">
		<div class="class-info">
			<h1>${detail.title}</h1>
			<div class="gosu-info">
				<div class="gosu_img">
					<img src="upload/${detail.profile}" alt=""/>
				</div>
				<div class="short-info">
					<span>${detail.nickname}</span>
				</div>
			</div>
		</div>
    <div id="formimg">
        <img src="upload/${detail.formimg}" alt=""/>
    </div>
	<%-- 네비 수강신청버튼 --%>	
	<div class="sticky_area">
		<div class="sticky_navi">
			<h2>클래스 일정</h2>
			<div id="c_schedule">
				<ul id="sch_list">
					<li class="sch_date">협의 후 날짜,시간 결정</li>
					<li class="sch_loc">${detail.loc}</li>
					<li class="sch_place">상세장소: 추후공지</li>
					<li class="sch_place">대면여부: ${detail.ftf}</li>
				</ul>
			</div>
			<div id="c_price">
				<ul id="price_list">
					<li class="c_price">${detail.price} / 시간</li>
					<li class="c_tot">${detail.price*detail.classtime} / 총 1회 ${detail.classtime}시간</li>
				</ul>
			</div>
			<div id="c_button">
				<div id="c_like">
					<i class="fa fa-heart-o" aria-hidden="true"></i>
				</div>
				<div id="c_app">
					<input type="button" id="application" value="클래스 신청하기"/>
				</div>
			</div>
		</div>
		<%--클래스 공지사항/설명 --%>
		<div id="gosu_notice">
			<div id="class_notice">
				<div id="class_notice_title">
					<h2>클래스소개</h2>
				</div>
				<div id="class_notice_content">
					<p>${detail.info}</p>
				</div>			
			</div>
			<div id="gosu_info">
				<div id="gosu_info_content">
					<h2>고수소개</h2>
				</div>
				<div id="gosu_info_title">
					<p>${detail.history}</p>
				</div>
			</div>
			<div id="gosu_info">
				<div id="gosu_info_content">
					<h2>SNS</h2>
				</div>
				<div id="gosu_info_title">
					<p>${detail.sns}</p>
				</div>
			</div>
		</div>
		<%--리뷰 --%>
		
	</div>
	</section>
	<jsp:include page="footer.jsp"/>
<form action="application.do" method="post">
	<input type="hidden" name="classcode" value="${detail.classcode}">
</form>
</body>
<script src="${path}/js/detailgosu.js" type="text/javascript"></script>
</html>
