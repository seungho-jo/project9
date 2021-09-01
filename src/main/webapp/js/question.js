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
	if ($("[name=id]").val() == "") {
		alert("아이디를 입력해주세요");
		$("[name=id]").focus();
	} else if ($("[name=pass]").val() == "") {
		alert("비밀번호를 입력해주세요");
		$("[name=pass]").focus();
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
		$("form").submit();
	}
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
$("#navi>ul>li").eq(3).addClass("now");
$(".now").css("color","#6482FF");