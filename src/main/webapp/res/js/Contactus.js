$(document).ready(function() {
	
	$("#inputmame1 input[type=radio]").click(function(){
		var $i1 = $("#inputmame1 input[type=radio]");
		var i1 = $i1.index($("#inputmame1 input[type=radio]:checked"));
		if(i1 == 0) {
			$("#inputmame1 span").css("display", "none");
		} else {
			$("#inputmame1 span").css("display", "inline-block");
		}
	});
	
	$("#inputmame2 input[type=radio]").click(function(){
		var $i2 = $("#inputmame2 input[type=radio]");
		var i2 = $i2.index($("#inputmame2 input[type=radio]:checked"));
		if(i2 == 0) {
			$("#inputmame2 span").css("display", "none");
		} else {
			$("#inputmame2 span").css("display", "inline-block");
		}
	});
	

	$("#save").submit(function(e){
		e.preventDefault();
		
		var $i1 = $("#inputmame1 input[type=radio]");
		var i1 = $i1.index($("#inputmame1 input[type=radio]:checked"));
		if(i1 == 1) {
			console.log("미 동의");
			$("#inputmame1 span").css("display", "inline-block");
			return;
		}
		
		var $i2 = $("#inputmame2 input[type=radio]");
		var i2 = $i2.index($("#inputmame2 input[type=radio]:checked"));
		if(i2 == 1) {
			console.log("미 동의");
			$("#inputmame2 span").css("display", "inline-block");
			return;
		}
		
		var params = {
						"QnA_title" : $("#title").val(),
						"QnA_main"  : $("#main").val() 
					 };
		console.log(params);
		$.ajax({
			type : "POST",
			url : "/Contactus",
			data : params
		}).done(function(d) {
			console.log(d);
			if(d.result > 0) {
				alert("고객님의 문의가 접수되었습니다.");
				location.href = "/Faq";
			} else {
				alert("입력 실패");
				location.href = "/Login";
			}
		});
	});
	
	


	
});











