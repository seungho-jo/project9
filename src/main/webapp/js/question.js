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
				if(data!=null){
					$(data).each(function(idx,qs){
					show += "<tr><td>"+(totpage-idx)+"</td><td><a href='qlist.do?qcode="+qs.qcode+"'>"+qs.title+"</a></td><td>"
						+qs.wdate+"</td><td>"+qs.answer+"</td></tr>"
					})
					$("tbody").html(show);
				}else{
					show += "<h1>내 문의 내역</h1><button>문의 남기기</button><h3>등록된 정보가 없습니다</h3>";
					$("#contents").html(show);
				}
			}else{
				$(data).each(function(idx,qs){
				show += "<tr><td>"+(totpage-((page-1)*10)-idx)+"</td><td><a href='qlist.do?qcode="+qs.qcode+"'>"+qs.title+"</a></td><td>"
						+qs.wdate+"</td><td>"+qs.answer+"</td></tr>"
				})
				$("tbody").html(show);
			}
		}
	}
})
$("td").click(function(event){
	$("[name=qcode]").val($(event.target).find("#qcode").val());
	//$("#move").submit();
})