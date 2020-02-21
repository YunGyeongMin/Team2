$(document).ready(function(){
	
	
	
      $("#faqsearch").submit(function(e){
         e.preventDefault();
         var params = {
        		 "CL_Kname" : $("#searchinput").val()
         };
         $.ajax({
            type: "post",
            url: "/Faq",
            data: params
         }).done(callBack);
         
      });
	   	
	function getList() {
		$.ajax({
			type:"POST",
			url: "/Faq"			
		}).done(callBack);
	}
	
	var callBack = function(d){
//		console.log(d);
		var data = d.result;
		
		$(".div2-9").empty();
		for(var i = 0; i < data.length; i++){
			var txt = "등록";
			if(data[i].QnA_Answer != "") {txt = "수정";}
			if(data[i].QnA_Answer == undefined) {data[i].QnA_Answer = "";} 
			var QnA_YN = "답변대기";
			if(data[i].QnA_YN == 'Y') {QnA_YN = "답변완료";}
			var html = `
						<ul data-no="${data[i].QnA_No}">
							<li class="li-1"><span class="sp1">${QnA_YN}</span><h3 class="h3-1">Q. ${data[i].QnA_title}</h3> </li>
							<li class="li-2">
								<div class="p-inform"> 작성자 : ${data[i].CL_Kname}, 작성일 : ${data[i].QnA_Qdate} </div>
								<div class="div2-9-1 " >
									<br><p class = "border-bottom">${data[i].QnA_main}</p><br>
									<br><em><strong> A.</strong></em><br>
									<br><p class="txt"></p><br>
								</div>
								<div class="div2-9-2">
									<div class="div2-9-2-top">
										<div class="div2-9-3"><p class="p3">답변</p></div>
										<div class="div2-9-4"> 
											<div id="editor${i}" style="visibility: hidden; display: none;"></div>
										</div>
									</div>
									<div class="div2-9-2-bottom">
										<div class="div2-9-5-regist btn"><p class="p2-9-5" style="color: #faf1d0;">${txt}</p></div>
									</div> 
								</div>
							</li>
						</ul>
						`;
			$(".div2-9").append(html);
			$(".div2-9-1 .txt").eq(i).html(data[i].QnA_Answer);
			CKEDITOR.replace( "editor" + i ,{toolbar: []});	
			
		}
		btnEvent();
	}
	
	function btnEvent() {    
		$(".li-1").click(function(){
			var i = $(".li-1").index(this);
			var display = $(".li-2").eq(i).css("display");
			if(display == "none"){
				$(".li-2").eq(i).css("display", "block");
				getCkEditor();
			} else {
				$(".li-2").eq(i).css("display", "none");
			}
		});
	}
	function getCkEditor(){
		$(".div2-9-2-bottom .btn").off().on("click", function(){
			var index = $(".div2-9-2-bottom .btn").index(this);
			var data = CKEDITOR.instances["editor" + index].getData();
			var no = $(".div2-9 > ul").eq(index).attr("data-no");
			var params = {
					QnA_No : no,
					QnA_Answer : data ,
					"QnA_YN"  : $("#QnA_YN").val() 
			}
			console.log("getCkEditor", params);   
			$.ajax({
				type : "POST",
				url : "/Faq/setFaq",
				data: params
			}).done(function(d){
				console.log(d);
				 
				if(data != "") {$(".div2-9-2-bottom .p2-9-5").eq(index).text("수정");}
				if(d.result > 0) {
					$(".sp1").eq(index).text("답변완료");
					$(".div2-9-1 .txt").eq(index).html(data);
					CKEDITOR.instances["editor" + index].setData("");
					alert("답변 완료");
				} else {
					CKEDITOR.instances["editor" + index].setData("");
					alert("관리자만 답변을 달 수 있습니다.");
				}
				
			});
		});
	}
	getList();
	


	
	
});