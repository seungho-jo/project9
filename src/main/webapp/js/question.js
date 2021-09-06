$("#navi>ul>li").eq(3).addClass("now");
$(".now").css("color","#6482FF");
$("#paging>span").eq(0).css("background-color","#6482FF");
$("#paging>span").click(function(){
	$(this).css("background-color","#6482FF");
	$(this).siblings().css("background-color","white");
});
$("button").click(function(){
	location.href = "writeQuestion.jsp";
})