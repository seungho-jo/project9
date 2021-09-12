$("#btns button").eq(0).click(function(){
	history.back();
})
$("#btns button").eq(2).click(function(){
	location.href = "updateQuestion.jsp";
})
function show () {
	// 인원선택 팝업창 띄우기
	document.querySelector(".background").className = "background show";
}
function close () { 
	// 팝업창 닫기
	document.querySelector(".background").className = "background";
}
document.querySelector("#close").addEventListener('click', close);
$("#delete").click(function(){
	show();
	$("[name=choice]").val("삭제")
	$("[name=pass_check]").keyup(function(event){
		if(event.keyCode == '13'){
			if($("[name=pass_check]")!=null){
				$("#deleteFrm").submit();
			}else{
				alert("비밀번호를 입력하세요")
			}
		}
	})
})
$("#update").click(function(){
	$("#updateFrm").submit();
})