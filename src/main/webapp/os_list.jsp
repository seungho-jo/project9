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
<script type="text/javascript">

function enterkey() {
    if (window.event.keyCode == 13) {
         $("#form").submit();
    }
}
	
</script>
<body>
<jsp:include page="header.jsp"/>

	<section>
		<jsp:include page="osnavi.jsp" />
		<div id="os_div">
			<div id="cate_title">
			<h1>외주 - 레슨</h1>
			</div>
			<div class="os-search-box">
				<input type="text" class="os-search-txt" name="ossearch"
					placeholder="외주 검색" onkeyup="enterkey()">

			</div>
			<hr style="margin-bottom: 50px;">
			<div id="class_ing">
				<div id="ing_info">

					<div id='ing_title'>운동 관련 어플리케이션 제작</div>	<span id="dday">D-27</span>

					<div id="ing_info_con">
						<div id='ing_price'>
							<p>금액</p><span>협의가능</span>
						</div>
						<div id='ing_content'>
							<span id="ing_content_span"><프로젝트의 현재상황> 이 어플리케이션은 회원가입시 받은 정보(문진표작성)의 결과를 토대로 필요한 운동을 보여주도록 하는 것이 목적입니다. 현재는 초보 개발자, 운동사 UI,UX 디자이너 분이 계시고 , 어플리케이션의 기초가 될 개발 작업을</span>
						</div>
			
					</div>
				</div>
			</div>

		</div>

	</section>
	<jsp:include page="footer.jsp"/>
</body>

</html>