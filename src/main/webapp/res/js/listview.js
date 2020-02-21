$(document).ready(function() {
	
	//전체 데이터 가져오기
	function getList() {
		var params = {
				CL_membertype : "member"
		};
		console.log(params);
		$.ajax({
			type:"POST",
			url: "/Admin_CL",
			data: JSON.stringify(params),
			contentType: 'application/json; charset=UTF-8'
		}).done(function(d){
			newView(d.result);
		});
		
	}
	
	//버튼 누를때마다 새 창 띄우는 것
	var newView = function(data) {
		$("#view-list").empty();
		for(var i = 0; i < data.length; i++){				
			var html = `
						<div class = "list" data-key="${data[i].CL_RWnum}">
							<div class = "c1">${data[i].CL_Kname}</div>
							<div class = "c1">${data[i].CL_birth}</div>
							<div class = "c1">${data[i].CL_Mgrade}</div>
							<div class = "c2">
								<button type = "button" class = "link">정보 바로가기</button>
							</div>
						</div>
						`;
			$("#view-list").append(html);
		}
		btnEvent();	
	}
	
	//ALL , SILVER , GOLD , DIAMOND
	$("#selectboxA button").click(function(){
		var index = $("#selectboxA button").index(this);
		var $target = $("#selectboxA button").eq(index);
		console.log($target, $target.text());
		
		if($target.text() == "ALL") {
			getList();
			return;
		}
		
		var params = {
				CL_Mgrade : $target.text()
		}
		console.log(params);
		$.ajax({
			type:"POST",
			url: "/Admin_CL/Mgrade",
			data: params
		}).done(function(d){
			console.log(d);
			newView(d.result);
		});	
	});
	
	//검색 기능 구현
	$("#searchbutton").submit(function(e){
		e.preventDefault();
	    var txt = $("#keyword").val();
	    if(txt == ""){
	       console.log("X");
	       alert("검색 내용이 없습니다.");
	       return;
	    }
	    var params = {
	        "CL_Kname" : txt,
	        "CL_membertype" : "member"
	    };
	    console.log(params);
	    // ajax 실행
	    $.ajax({
	    	type:"POST",
	    	url: "/Admin_CL/Search",
	    	data: params
		}).done(function(d){
			console.log(d);
			console.log(txt);
//			getList(d.result);
			newView(d.result);
			
		});
	});

	
	//정보 바로가기
	function btnEvent() {
		$("#view-list .list .link").click(function(){
			var index = $("#view-list .list .link").index(this);
			var $target = $("#view-list .list").eq(index);
//			location.href = "/Admin_CL/detail?CL_RWnum=" + $target.attr("data-key");
			// POST 방식 호출 (동적 처리)
			var form = document.createElement("FORM");
			var input = document.createElement("input");
			var submit = document.createElement("input");


			
			form.setAttribute("action", "/Admin_CL/detail");
			form.setAttribute("method", "post");
			input.setAttribute("name", "CL_RWnum");
			input.setAttribute("type", "text");
			input.setAttribute("value", $target.attr("data-key"));
			submit.setAttribute("type", "submit");

			
			form.appendChild(input);
			form.appendChild(submit);
			document.body.appendChild(form);
			
			form.submit();	
		});
	}
	
	getList();	
	
});











