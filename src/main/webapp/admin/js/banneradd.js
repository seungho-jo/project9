var xhr = new XMLHttpRequest();
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
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
	oAppRef: oEditors,
	elPlaceHolder: "bo_content",
	sSkinURI: "smarteditor2/SmartEditor2Skin.html",
	fCreator: "createSEditor2"
});
$("#subm").click(function(){
	if($("[name=title]").val()==""){
		alert("제목을 적어주세요");
		$("[name=title]").focus();
	}else if($(textarea).val()==""){
		alert("내용을 작성해주세요");
		$(textarea).focus();
	}else{
		$("form").submit();
	}
});
$(".tolist").click(function(){
	history.back();
})