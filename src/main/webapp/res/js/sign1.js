$(document).ready(function(){
    
	$(".checkall").click(function(){
	    if($(".checkall")[0].checked){
	      document.getElementsByName("agreeselect")[0].checked = true;
	      document.getElementsByName("agreeselect2")[0].checked = true;
	      document.getElementsByName("agreeselect3")[0].checked = true;
	    } else {
	      document.getElementsByName("agreeselect")[1].checked = true;
	      document.getElementsByName("agreeselect2")[1].checked = true;
	      document.getElementsByName("agreeselect3")[1].checked = true;
	    }
	    
	});
	
	$(".buttstyle").click(function(){
		   var mc = true;
		    if(!document.getElementsByName("agreeselect")[0].checked) {
		       mc = false;
		       alert("1번 항목을 동의하지 않으셨습니다.");
		    }
		    if(!document.getElementsByName("agreeselect2")[0].checked) {
		       mc = false;
		       alert("2번 항목을 동의하지 않으셨습니다.");
		    }
		    if(!document.getElementsByName("agreeselect3")[0].checked) {
		       mc = false;
		       alert("3번 항목을 동의하지 않으셨습니다.");
		    }
		    if(mc){
		       alert("회원정보 입력 페이지로 넘어갑니다.");
		       $.ajax({
		    	   type: "post",
		    	   url: "/Sign2/pageCheck",
		    	   data: {point : 1}
		       }).done(function(d){
		    	   console.log(d);
		    	   if(d == 1) location.href = "/Sign2";
		       });
		    } else {
		    	("");
//		       alert("전체 동의가 필요합니다.");
		    }
		});
			
});