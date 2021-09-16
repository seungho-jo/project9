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
<link rel="stylesheet" href="css/index.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
	<div id="category-content">
		<a href="classlist.do?category=레슨">
		<ul id="category-button">
			<li class="category">
				<div id="category-icon">
					<img src="img/lesson.png" alt="레슨"/>
					<p class="category-title">레슨</p>
					<input type="hidden" name="cate" value="lesson"/>
				</div>
			</li>
		</ul>
		</a>
		<a href="classlist.do?category=홈리빙">
		<ul id="category-button">
			<li class="category">
				<div id="category-icon">
					<img src="img/home-living.png" alt="홈리빙"/>
					<p class="category-title">홈/리빙</p>
					<input type="hidden" name="cate" value="home"/>
				</div>
			</li>
		</ul>
		</a>
		<a href="classlist.do?category=이벤트">
		<ul id="category-button">
			<li class="category">
				<div id="category-icon">
					<img src="img/event.png" alt="이벤트"/>
					<p class="category-title">이벤트</p>
					<input type="hidden" name="cate" value="event"/>
				</div>
			</li>
		</ul>
		</a>
		<a href="classlist.do?category=비즈니스">
		<ul id="category-button">
			<li class="category">
				<div id="category-icon">
					<img src="img/business.png" alt="비즈니스"/>
					<p class="category-title">비즈니스</p>
					<input type="hidden" name="cate" value="business"/>
				</div>
			</li>
		</ul>
		</a>
		<a href="classlist.do?category=디자인개발">
		<ul id="category-button">
			<li class="category">
				<div id="category-icon">
					<img src="img/design-development.png" alt="디자인개발"/>
					<p class="category-title">디자인/개발</p>
					<input type="hidden" name="cate" value="design"/>
				</div>
			</li>
		</ul>
		</a>
		<a href="classlist.do?category=건강미용">
		<ul id="category-button">
			<li class="category">
				<div id="category-icon">
					<img src="img/health-beauty.png" alt="건강미용"/>
					<p class="category-title">건강/미용</p>
					<input type="hidden" name="cate" value="health"/>
				</div>
			</li>
		</ul>
		</a>
		<a href="classlist.do?category=알바">
		<ul id="category-button">
			<li class="category">
				<div id="category-icon">
					<img src="img/part-time-job.png" alt="알바"/>
					<p class="category-title">알바</p>
					<input type="hidden" name="cate" value="part"/>
				</div>
			</li>
		</ul>
		</a>
		<a href="classlist.do?category=기타">
		<ul id="category-button">
			<li class="category">
				<div id="category-icon">
					<img src="img/etc.png" alt="기타"/>
					<p class="category-title">기타</p>
					<input type="hidden" name="cate" value="etc"/>
				</div>
			</li>
		</ul>
		</a>
	</div>	
	<div id="main-recommend">
		<h2>인기 클래스</h2>
	<c:forEach items="${bestlist}" var="Bestlist">
	<a href="detail.do?classcode=${Bestlist.classcode}">	
		<div id="rclass-list">
			<div id="rclass-list-img">
				<img src="upload/${Bestlist.formimg}"/>
			</div>
			<div id="rclass-list-name">
				<p>${Bestlist.nickname}</p>
			</div>
			<div id="rclass-list-title">
				<p>${Bestlist.title}</p>
			</div>
			<div id="rclass-list-price">
				<p><fmt:formatNumber type="number" maxFractionDigits="3" value="${Bestlist.price}" /></p>
			</div>
		</div>
		</a>
	</c:forEach>
	</div>

	</section>
	<jsp:include page="footer.jsp"></jsp:include>	
</body>
</html>