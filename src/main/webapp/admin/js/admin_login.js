$("#button").click(function(){
	if($("[name=id]").val()==""){
		alert("아이디를 입력해주세요");
		$("[name=id]").focus();
	}else if($("[name=pass]").val()==""){
		alert("비밀번호를 입력해주세요");
		$("[name=pass]").focus();
	}else{
		$("form").submit();
	}
});



