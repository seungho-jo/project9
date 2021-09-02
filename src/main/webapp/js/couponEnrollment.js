$("#navi>ul>li").eq(2).addClass("now");
$("#navi>ul>li:nth-child(3)>ul>li").eq(1).addClass("now");
$("#navi>ul>li:nth-child(3)>ul").css("display","block");
$("#navi>ul>li:nth-child(3)>ul").addClass("show");
$(".now").css("color","#6482FF");
$("#enrollment").click(function(){
	if($("[name=code1]").val()==""){
		alert("쿠폰 번호를 입력해주세요");
		$("[name=code1]").focus();
	}else if($("[name=code2]").val()==""){
		alert("쿠폰 번호를 입력해주세요");
		$("[name=code2]").focus();
	}else if($("[name=code3]").val()==""){
		alert("쿠폰 번호를 입력해주세요");
		$("[name=code3]").focus();
	}else if($("[name=code4]").val()==""){
		alert("쿠폰 번호를 입력해주세요");
		$("[name=code4]").focus();
	}else{
		location.href = "myCoupon.jsp";
	}
})