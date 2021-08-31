$("ul li").click(function(event){
	// 색상주기
	$(this).css("color","#6482FF");
	$(this).siblings().css("color","black");
	// 클래스 입히기
	$(this).children("ul").addClass("show");
	// 슬라이드
	$(this).children().slideToggle(300).siblings().slideUp("slow");
	$(this).siblings().children().slideUp("slow");
	// 부모의 이벤트 전파 막기
	event.stopPropagation();
	$(this).siblings().children().click(function(){
		$(this).css("color","#6482FF");
		$(this).siblings().css("color","black");
	});
	console.log($(this).text());
});