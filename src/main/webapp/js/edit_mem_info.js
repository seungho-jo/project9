function setThumbnail(event) {
	if (event.files && event.files[0]) {
		var reader = new FileReader();
		reader.onload = function(e) {
			document.getElementById('preview').src = e.target.result;
		};
		reader.readAsDataURL(event.files[0]);
	} else {
		document.getElementById('preview').src = "";
	}
}
$("#edit").click(function() {
	if ($("[name=pass]").val() == "") {
		alert("비밀번호를 입력해주세요");
		$("[name=pass]").focus();
	}else if ($("[name=re_pass]").val() == "") {
		alert("비밀번호를 다시 확인해주세요");
		$("[name=re_pass]").focus();
	}else if ($("[name=name]").val() == "") {
		alert("이름을 입력해주세요");
		$("[name=name]").focus();
	} else if ($("[name=phone]").val() == "") {
		alert("휴대번호 입력해주세요");
		$("[name=phone]").focus();
	} else if ($("[name=zipcode]").val() == "") {
		alert("우편번호를 입력해주세요");
		$("[name=zipcode]").focus();
	} else {
		show();
		$("[name=pass_check]").keyup(function(event){
			if(event.keyCode == '13'){
				if($("[name=pass_check]")!=null){
					$("[name=choice]").val("회원정보수정");
					$("form").submit();
				}else{
					alert("비밀번호를 입력하세요")
				}
			}
		})
	}
});
$("#remove").click(function(){
	show();
	$("[name=pass_check]").keyup(function(event){
		if(event.keyCode == '13'){
			if($("[name=pass_check]")!=null){
				$("[name=choice]").val("회원탈퇴");
				$("form").submit();
			}else{
				alert("비밀번호를 입력하세요")
			}
		}
	})
});
var passCheck = /^[a-z0-9!@#$%^&*-+=]{8,15}$/;
$("[name=pass]").blur(function() {
	if (!passCheck.test($("[name=pass]").val())) {
		if ($("table tr:eq(3) td br").length) {

		}
		else {
			$("table tr:eq(3) td").append("<br><span style='color:red;'>비밀번호는 영문자+숫자+특수문자 조합으로 8~15자리 사용해야합니다</span>");
		}
	} else {
		$("table tr:eq(3) td br").remove();
		$("table tr:eq(3) td span").remove();
	}
})
$("[name=re_pass]").blur(function() {
	if ($("[name=re_pass]").val() != $("[name=pass]").val()) {
		if ($("table tr:eq(5) td br").length) {
		}
		else {
			$("table tr:eq(5) td").append("<br><span style='color:red;'>다시한번 확인해주세요</span>");
		}
	} else {
		$("table tr:eq(5) td br").remove();
		$("table tr:eq(5) td span").remove();
	}
})
function sample6_execDaumPostcode() {
	new daum.Postcode({
		oncomplete: function(data) {
			var addr = '';
			var extraAddr = '';
			if (data.userSelectedType === 'R') {
				addr = data.roadAddress;
			} else {
				addr = data.jibunAddress;
			}
			document.querySelector("[name=zipcode]").value = data.zonecode;
			document.querySelector("[name=addr1]").value = addr;
			document.querySelector("[name=addr2]").focus();
		}
	}).open();
}
$("#click").click(function(){
	$("[name=profile]").click();
})
$("#navi ul li").eq(0).addClass("now");
$(".now").css("color","#6482FF");

function show () {
	// 인원선택 팝업창 띄우기
	document.querySelector(".background").className = "background show2";
}
function close () { 
	// 팝업창 닫기
	document.querySelector(".background").className = "background";
}
document.querySelector("#close").addEventListener('click', close);
