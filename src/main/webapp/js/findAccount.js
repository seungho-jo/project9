var win;
var width1 = window.screen.width/2 -150
var height1 = window.screen.height/2 -75
var width2 = window.screen.width/2 -300
var height2 = window.screen.height/2 -250
$("#idBtn").click(function() {
	if ($("#findId [name=phone]").val() == "") {
		alert("휴대번호를 입력해주세요");
		$("#findId [name=phone]").focus();
	} else if (isNaN($("#findId [name=phone]").val())) {
		alert("숫자만 입력해주세요");
		$("#findId [name=phone]").val("");
		$("#findId [name=phone]").focus();
	} else {
		var url = "findId.jsp?phone=" + $("#findId [name=phone]").val();
		win = window.open(url, "", "width=300,height=150");
		win.moveBy(width1,height1);
	}
	win.onbeforeunload = function() {
		$("#findId [name=phone]").focus();
	};
});
$("#passBtn").click(function() {
	if($("#findPass [name=id]").val() == ""){
		alert("아이디를 입력해주세요");
		$("#findPass [name=id]").focus();
	} else if ($("#findPass [name=phone]").val() == "") {
		alert("휴대번호를 입력해주세요");
		$("#findId [name=phone]").focus();
	} else if (isNaN($("#findPass [name=phone]").val())) {
		alert("숫자만 입력해주세요");
		$("#findId [name=phone]").val("");
		$("#findId [name=phone]").focus();
	} else {
		var url = "findPass.jsp?id="+$("#findId [name=id]").val()+"&phone=" + $("#findId [name=phone]").val();
		win = window.open(url, "", "width=600,height=500");
		win.moveBy(width2,height2);
	}
});