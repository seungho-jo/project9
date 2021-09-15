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
<link rel="stylesheet" href="css/os_list.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<script src="${path}/js/os_list.js" type="text/javascript"></script>

<body>
<jsp:include page="header.jsp"/>

	<section>
		<jsp:include page="osnavi.jsp" />
		<div id="os_div">
			
			<div id="cate_title">
			<div class="os-search-box">
				<input type="text" class="os-search-txt" name="ossearch"
					placeholder="외주 검색" >
			</div>
			<h1>${param.category}</h1>
			</div>
			<hr style="margin-bottom: 50px;">

			<c:choose>
				<c:when test="${oslist.size()>0}">
				<c:forEach items="${oslist}" var ="Oslist">
				
				<a href="osdetail.do?oscode=${Oslist.oscode}">
				<div id="class_ing">
					<div id="ing_info">
						<div id='ing_title'>${Oslist.title}</div>	<span id="dday">D${Oslist.datepicker}</span>
						<div id="ing_info_con">
							<div id='ing_price'>
								<p>금액</p><span>${Oslist.budget}</span>
							</div>
							<div id='ing_content'>
								<span id="ing_content_span">${Oslist.explain}</span>
							</div>
				
						</div>
					</div>
				</div>
				</a>
				</c:forEach>
				</c:when>
				<c:otherwise>
					<h3>신청된 외주목록이 없습니다.</h3>
				</c:otherwise>
			</c:choose>


		</div>

	</section>
	<jsp:include page="footer.jsp"/>
</body>
<script type="text/javascript">
/*
function enterkey() {
    if (window.event.keyCode == 13) {
         $("#form").submit();
    }
}*/
</script>
</html>