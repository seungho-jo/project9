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

<body>
<jsp:include page="header.jsp"/>

	<section>
		<jsp:include page="catenavi.jsp" />
		<div id="classlist_cate">
		<h1>${param.category}</h1>
		<hr style="margin-bottom: 50px;">
		<c:choose>
			<c:when test="${classlist.size()>0}">
			<c:forEach items="${classlist}" var="Classlist">					
			<a href="detail.do?classcode=${Classlist.classcode}">
				<div id="class_list">
					<div id="class_cont_list">
						<div id="class_list_img">
							<img src="upload/${Classlist.formimg}" alt="" />
						</div>
						<div id="class_list_profile">
							<img src="upload/${Classlist.profile}" alt="" />
						</div>
						<div id="class_list_name">
							<p id="namespan">${Classlist.nickname}</p>
						</div>
						<div id="class_list_title">
							<span id="titlespan">${Classlist.title}</span>
						</div>
						<div id="class_list_price">
							<span id="pricespan"><fmt:formatNumber type="number" maxFractionDigits="3" value="${Classlist.price}" />원</span><span id="timespan"> / 시간</span>
						</div>
					</div>
				</div>			
				</a>
			</c:forEach>
			</c:when>
			<c:otherwise>
				<h3>개설된 클래스가 없습니다.</h3>
			</c:otherwise>
		</c:choose>

		</div>
	</section>
	<jsp:include page="footer.jsp"/>
</body>
<script type="text/javascript">
<%--
$(document).ready(function(){
	var xhr = new XMLHttpRequest();
	$("[name=cate]").click(function(event){
			var cateVal = $("[name=cate]").val();
			console.log($("[name=cate]").val())
			xhr.open("get","${path}/classlist.do?category="+cateVal,true);
			xhr.send();
			xhr.onreadystatechange=function(){
				if(xhr.readyState==4&&xhr.status==200){
					var jTxt = xhr.responseText;
					$("#classlist_cate").text("");
					if(jTxt!="{}"){
						var Classlist = JSON.parse(xhr.responseText);
						console.log(Classlist);
						$("#classlist_cate h1").text(Classlist.category);
						
					}else{
						alert("해당 카테고리는 데이터가 없습니다.");					
					}
				}
			};
			
	});
});
--%>
</script>
<script type="text/javascript">
$("#navi>ul>li").addClass("now");
$("#navi>ul>li:nth-child(1)>ul>li").eq(0).addClass("now");
$("#navi>ul>li:nth-child(1)>ul").css("display","block");
$("#navi>ul>li:nth-child(1)>ul").addClass("show");
$(".now").css("color","#6482FF");

</script>
</html>