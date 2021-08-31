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
<link rel="stylesheet" href="css/detailimg.css"/>
<script src="https://kit.fontawesome.com/e34f41b737.js" crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script type="text/javascript">
{
	  "tags": [
	    "swiper"
	  ],
	  "name": "Swiper - CSS mode",
	  "dependencies": {
	    "swiper": "latest",
	    "parcel-bundler": "^1.6.1"
	  }
	}
</script>
</head>
<body>
	<jsp:include page="header.jsp"/>
	
	<section>
		<div class="class-info">
			<h1>생화같은 카네이션 앙금쿠키 원데이 클래스</h1>
			<div class="gosu-info">
				<div class="gosu_img">
					<img src="img/reco2.JPG" alt=""/>
				</div>
				<div class="short-info">
					<span>이은정</span>
				</div>
			</div>
		</div>
	<%-- 클래스이미지 슬라이더 --%>
    <div class="swiper mySwiper">
      <div class="swiper-wrapper">
        <div class="swiper-slide"><img src="img/reco2.JPG" alt=""/></div>
        <div class="swiper-slide"><img src="img/reco2.JPG" alt=""/></div>
        <div class="swiper-slide"><img src="img/reco2.JPG" alt=""/></div>
        <div class="swiper-slide"><img src="img/reco2.JPG" alt=""/></div>
        <div class="swiper-slide"><img src="img/reco2.JPG" alt=""/></div>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>
	<%-- 네비 수강신청버튼 --%>	
	<div class="sticky_area">
		<div class="sticky_navi">
			<h2>클래스 일정</h2>
			<div id="c_schedule">
				<ul id="sch_list">
					<li class="sch_date">협의 후 날짜,시간 결정</li>
					<li class="sch_loc">수원</li>
					<li class="sch_place">상세장소: 추후공지</li>
				</ul>
			</div>
			<div id="c_price">
				<ul id="price_list">
					<li class="c_price">44,000원 / 시간</li>
					<li class="c_tot">132,000원 / 총 1회 3시간</li>
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
		<div class="class_info">
			<div id="class_notice">
				<div id="class_notice_title">
					<h2>클래스 공지사항</h2>
				</div>
				<div id="class_notice_content">
					<p>공지) 신청 2명 이상부터 수업 가능하며, 장소 대여비는 없습니다. 개인 작업실이기 때문에 위치는 신청 시에 보내드립니다. 개인 커스텀 스텐실은 최소 5만원부터 시작하며 반영구적 사용이 가능합니다. </p>
				</div>			
			</div>
			<div id="class_target">
				<div id="class_target_title">
					<h2>이런 분들이 들으면 좋아요.</h2>
				</div>
				<div id="class_target_content">
					<p>수업대상<br>

♡ 어버이날, 스승의날 또는 각종 기념일 및 행사에 단 하나뿐인 직접 만든 쿠키를 선물하고 싶은 분<br>

♡ 이색 커플데이트, 같은 취미를 공유하고 싶은 분<br>

♡ 창업 전 앙금플라워가 나에게 잘 맞는지 알아보고 싶은 분<br>

♡ 정형화된 꽃스타일에서 생화느낌 파이핑 기법으로 바꾸고 싶은 분<br>

♡ 태교 및 힐링 취미로 배워보고 싶은 분<br></p>
				</div>
			</div>
			<div id="gosu_info">
				<div id="gosu_info_content">
					<h2>고수소개</h2>
				</div>
				<div id="gosu_info_title">
					<p>*경력 및 이력<br>
-(SFCA) 서울플라워케이크협회 1급 지도사 자격증 취득<br>
-(KRCA)한국라이스클래이협회 앙금플라워 데코전문강사<br>
자격증취득<br>
-Tiniartschool 수료증 취득<br>
-현)앙금플라워케이크 공방 운영<br>
-다수의 앙금플라워 창업 수강생 배출<br>
-중국, 대만, 두바이, 캐나다 등 해외 수강생 지도<br>
<br>
*튜터 소개<br>
안녕하세요 ^^<br>
저는 3년째 앙금플라워 전문 공방을 운영중이고, 전직 10년차 시각 디자이너로도 활동해왔습니다.<br>
시각디자이너의 노하우와 경험을 토대로 좀 더 감각적인 색감과 디자인, 생화같은 앙금플라워를 만나게 해드리려 끊임없이 연구하고 있습니다.<br>
생화보다 더 생화처럼 아름답고 맛있는 꽃 피우며 힐링하는 시간 갖어봐요^^<br>
다년간의 노하우로 곰손도 금손으로 만들어 드릴게요 :)</p>
				</div>
			</div>
		</div>
		<%--리뷰 --%>
		
	</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
<<<<<<< Updated upstream
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
      var swiper = new Swiper(".mySwiper", {
        cssMode: true,
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
        pagination: {
          el: ".swiper-pagination",
        },
        mousewheel: true,
        keyboard: true,
      });
    </script>

</body>
<script src="${path}/js/detailgosu.js" type="text/javascript"></script>
=======
</body>
<script>
$(document).ready(function(){ 
    var main = $('.bxslider').bxSlider({ 
    mode: 'fade', 
    auto: false,	//자동으로 슬라이드 
    controls : true,	//좌우 화살표	
    autoControls: false,	//stop,play 
    pager:true,	//페이징 
    pause: 3000, 
    autoDelay: 0,	
    slideWidth: 1000, 
    speed: 500, 
    stopAutoOnclick:true 
}); 
   
$(".bx-stop").click(function(){	 
    main.stopAuto(); 
    $(".bx-stop").hide(); 
    $(".bx-start").show(); 
    return false; 
}); 

$(".bx-start").click(function(){	
    main.startAuto(); 
    $(".bx-start").hide(); 
    $(".bx-stop").show(); 
    return false; 
}); 

  $(".bx-start").hide();	
}); 
</script>
>>>>>>> Stashed changes
</html>