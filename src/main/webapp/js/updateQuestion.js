var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
	oAppRef: oEditors,
	elPlaceHolder: "content",
	sSkinURI: "smarteditor2/SmartEditor2Skin.html",
	fCreator: "createSEditor2"
});
$("#update").click(function(){
	oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);
	if($("select").val()=="선택하세요"){
		alert("카테고리를 선택해주세요")
	}else if($("[name=title]").val()==""){
		alert("제목을 적어주세요");
		$("[name=title]").focus();
	}else if($("[name=content]").val()==""){
		alert("내용을 작성해주세요");
		$("[name=content]").focus();
	}else{
		console.log($("[name=content]").val());
		$("form").submit();
	}
});
$("#cancel").click(function(){
	history.back();
})