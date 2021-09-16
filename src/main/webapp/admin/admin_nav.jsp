<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<c:set var = "path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>근면하고 성실하게 살아라. 그리고 늘 유익한 일에 열중하라(프랭클린)</title>
<link rel="stylesheet" href="${path}/admin/css/admin_nav.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body>
	<nav>
		<div id="navi">
			<h3 align="center">Menu</h3>
			<ul>
				<li>사용자 계정</li>
				<li>추천란</li>
				<li>문의사항</li>
				<li>클래스</li>
				<li>카테고리
					<ul>
						<li>카테고리 조회
							<input type="hidden" value="admin_category_whole.jsp"/>
						</li>
						<li>생성
							<input type="hidden" value="admin_category_create.jsp"/>
						</li>
						<li>삭제
							<input type="hidden" value="admin_category_del.jsp"/>
						</li>
					</ul>
				</li>
				<li>쿠폰
					<ul>
						<li>쿠폰 조회
							<input type="hidden" value="${path}/cLC.do" />
						</li>
						<li>생성
							<input type="hidden" value="${path}/admin/admin_coupon_create.jsp"/>
						</li>
						<li>삭제
							<input type="hidden" value="${path}/couponDel.do"/>
						</li>						
					</ul>
				</li>
				<li>리뷰
					<input type="hidden" value="admin_review.jsp"/>
				</li>
				<li>신고
					<input type="hidden" value="${path}/reportDel.do"/>
				</li>
				
				<li>지도
					<input type="hidden" value=""/>
				</li>
				<li>수익
					<input type="hidden" value="admin_revenue.jsp"/>
				</li>
			</ul>		
		</div>
	</nav>
</body>
<script type="text/javascript" src="${path}/admin/js/admin_nav.js"></script>
</html>