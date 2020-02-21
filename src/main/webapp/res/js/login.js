/**
 * 로그인 스크립트
 */
$(document).ready(function(){
	
	$("#allbox").submit(function(e){
		e.preventDefault();
		var params = {
				CL_ID: $("#CL_ID").val(),
				CL_PW: $("#CL_PW").val()
		};
		console.log(params);
		$.ajax({
			type:"post",
			url:"/Login",
			data: params
		}).done(function(d){
			console.log(d);
			if(d.CD == 1) {
				location.href = "/";
			} else {
				alert(d.MSG);
			}
		});
	});
	
});