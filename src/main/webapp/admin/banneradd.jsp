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
<link rel="stylesheet" href="css/bannerinfo.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<script type="text/javascript">
function resize(obj) {
	obj.style.height = "1px";
	obj.style.height = (12 + obj.scrollHeight) + "px";
}
</script>
<body>
<jsp:include page="admin_header.jsp"></jsp:include>
	<section>	
	<jsp:include page="admin_nav.jsp"></jsp:include>
	<div>
		<div class="title">
			<div class="title-left">
				<h2>배너 상세</h2>
			</div>
		</div>
		<div class="bnrMain">
			<div class="bnrImg">
				<img id="mainImg" alt="" src="img/banner(sample).png">
			</div>
			<span>대표이미지</span>
			<div class="upload">
				<input type="file" name="profile" onchange="setThumbnail(this)" value="업로드"/>
				<input type="button" id="click" value="업로드"/>
			</div>
		</div>
		<div class="bnrContent">
			<table class="listTable">
				<tr><th>배너명</th></tr>
				<tr><td><input type="text" name="title" value="" placeholder="배너명 입력"></td></tr>
			</table>
			<div class="contentImg">
				<img id="detailImg" alt="" src="img/banner(sample).png">
				<div class="upload">
					<input type="file" name="profile" onchange="setThumbnail(this)" value="업로드"/>
					<input type="button" id="click" value="업로드"/>
				</div>
				<table class="listTable">
					<tr><th>유의사항</th></tr>
					<tr><td><textarea class="form-control" name="content" id="bo_content" placeholder="유의사항 입력"
					onkeydown="resize(this)" onkeyup="resize(this)"></textarea></td></tr>
				</table>
			</div>
		</div>
		<div class="choose">
			<button id="subm">배너등록</button>
		</div>
		<div class="toList">
			<button>목록으로</button>
		</div>
	</div>
</section>
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="${path}/js/banneradd.js"></script>
</html>