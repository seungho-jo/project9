/**
 * 
 */

$("#randomCk").click(function(){
	var num1 = $("[name=cNum1]").val(Math.floor(Math.random()*9999+1001));
	var num2 = $("[name=cNum2]").val(Math.floor(Math.random()*9999+1001));
	var num3 = $("[name=cNum3]").val(Math.floor(Math.random()*9999+1001));
	var num4 =$("[name=cNum4]").val(Math.floor(Math.random()*9999+1001));
});

$("#button").click(function(){
	if($("[name=couponName]").val()==""){
		alert("쿠폰명을 입력하세요.");
		$("[name=couponName]").focus();
	}else if($("[name=cNum1]").val()==""){
		alert("쿠폰번호를 생성하세요.");
		$("[name=cNum1]").focus();
		$("[name=cNum2]").focus();
		$("[name=cNum3]").focus();
		$("[name=cNum4]").focus();
	}else if($("[name=discount]").val()==""){
		alert("할인율을 작성하세요.");
		$("[name=discount]").focus();
	}
	else{
		$("form").submit();
	}
});



