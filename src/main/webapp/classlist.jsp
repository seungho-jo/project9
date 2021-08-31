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
<link rel="stylesheet" href="css/classlist.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<script src="${path}/js/classlist.js" type="text/javascript"></script>
<script type="text/javascript">

</script>
<body>
<jsp:include page="header.jsp"/>
<jsp:include page="catenavi.jsp"></jsp:include>
<section>
	<div id="class_list">
			<div id="class_cont_list">
				<div id="class_list_img">
					<img src="img/reco2.JPG" alt="" />
				</div>
				<div id="class_list_profile">
					<img src="img/reco2.JPG" alt="" />
				</div>
				<div id="class_list_name">
					<p>이은정</p>
				</div>
				<div id="class_list_title">
					<span>생화같은 카네이션 앙금쿠키 원데이 클래스</span>
				</div>
				<div id="class_list_price">
					<span id=pricespan>44,000원</span><span id="timespan"> / 시간</span>
				</div>
			</div>
		</div>
	<div id="class_list">
			<div id="class_cont_list">
				<div id="class_list_img">
					<img src="img/reco2.JPG" alt="" />
				</div>
				<div id="class_list_profile">
					<img src="img/reco2.JPG" alt="" />
				</div>
				<div id="class_list_name">
					<p>이은정</p>
				</div>
				<div id="class_list_title">
					<span>생화같은 카네이션 앙금쿠키 원데이 클래스</span>
				</div>
				<div id="class_list_price">
					<span id=pricespan>44,000원</span><span id="timespan"> / 시간</span>
				</div>
			</div>
		</div>
	<div id="class_list">
			<div id="class_cont_list">
				<div id="class_list_img">
					<img src="img/reco2.JPG" alt="" />
				</div>
				<div id="class_list_profile">
					<img src="img/reco2.JPG" alt="" />
				</div>
				<div id="class_list_name">
					<p>이은정</p>
				</div>
				<div id="class_list_title">
					<span>생화같은 카네이션 앙금쿠키 원데이 클래스</span>
				</div>
				<div id="class_list_price">
					<span id=pricespan>44,000원</span><span id="timespan"> / 시간</span>
				</div>
			</div>
		</div>
	
	
</section>
<jsp:include page="footer.jsp"/>
</body>

</html>