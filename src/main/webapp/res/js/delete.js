$(document).ready(function(){
	var op = { contentType: 'application/json; charset=UTF-8'};
	
	$("#delete").submit(function(e){
		console.log("delete");
		e.preventDefault();
		op.type ="DELETE";
	    op.url = "/Delete";
	    $.ajax(op).done(function(d){
	       console.log(d);
	       if(d > 0){
	          alert("회원 탈퇴");
	          location.href = "/Login";
	       }else {
	          alert("회원 탈퇴 실패");
	       }
	    });
		
	});
		
});