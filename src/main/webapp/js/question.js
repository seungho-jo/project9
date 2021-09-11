$("#navi>ul>li").eq(3).addClass("now");
$(".now").css("color","#6482FF");
$("#paging>span").eq(0).css("background-color","#6482FF");
$("button").click(function(){
	location.href = "writeQuestion.jsp";
})
$("#paging>span").click(function(event){
	var page = $(event.target).text();
	if(page == 1){
		$("[name=start]").val(1);
	}else{
		$("[name=start]").val(1 + ((page-1)*10));
	}
	$("[name=end]").val(page * 10);	
	var xhr = new XMLHttpRequest();
	var snd = $("#page").serialize();
	xhr.open("post","qlist.do","true");
	xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	xhr.send(snd);
	xhr.onreadystatechange = function(){
		if(xhr.readyState==4&&xhr.status==200){
			$(event.target).css("background-color","#6482FF");
			$(event.target).siblings().css("background-color","white");
			var data = JSON.parse(xhr.responseText);
			var show = "";
			if(page == 1){
				$(data).each(function(idx,qs){
				show += "<tr><td>"+(totpage-idx)+"</td><td>"+qs.title+"</td><td>"
						+qs.wdate+"</td><td>"+qs.answer+"</td></tr>"
				})
			$("tbody").html(show);
			}else{
				$(data).each(function(idx,qs){
				show += "<tr><td>"+(totpage-((page-1)*10)-idx)+"</td><td>"+qs.title+"</td><td>"
						+qs.wdate+"</td><td>"+qs.answer+"</td></tr>"
				})
				$("tbody").html(show);
			}
		}
	}
})