$(document).ready(function() {
	
	//검색 누르면 첫 사이트로 돌아감
	$('#rv_hotelname').click(function() {
	    location.href = "/Reservation";
	});
	
	
	//현재 날짜 가져오기(targetnowDate)
	var today = new Date();
	var nowday = today.getDate();
	var nowmonth = today.getMonth() + 1; 	// January is 0
	var nowyear = today.getFullYear();
	
	if(nowday < 10) {
		nowday = "0" + nowday;
	}
	if(nowmonth < 10) {
		nowmonth = "0" + nowmonth;
	}
	
	var targetnowDate = nowyear + "-" + nowmonth + "-" + nowday;
	
	
	//체크인 날짜 선택 시 현재 날짜 이전은 선택 못하게 막음
	$("#check_out1").click(function(){
		$("#check_out1").attr("min", targetnowDate);
	});
	
	//체크인 날짜 설정
	$("#check_out1").change(function(){
		var d1 = new Date($("#check_out1").val());
		d1.setDate(d1.getDate() + 1);
		var year = d1.getFullYear();
		var month = d1.getMonth() + 1;
		if(month < 10) month = "0" + month;
		var day = d1.getDate();
		if(day < 10) day = "0" + day;
		var targetDate = ("min", (year + "-" + month + "-" + day));
										//
		$("#check_out2").val(targetDate);										// 
		$("#check_out2").attr("min", targetDate);								// 체크아웃 날짜 최솟값
		$("#day").text("1");
		$("#check_out2").attr('disabled', false);								// 체크아웃 disabled 해제

		
		var targetNum = Number($(".room3 .number span").eq(0).text());
		if(targetNum == 0) {
			targetNum++;
		}
		$(".room3 .number span").eq(0).text(targetNum);
	    $(".room > p").text(targetNum);
	    fun_total();
	});
	
	//체크아웃 날짜 설정
	$("#check_out2").change(function(){
		var d1 = new Date($("#check_out1").val());
		var d2 = new Date($("#check_out2").val())
		 
	    var diff = Math.abs(d2.getTime() - d1.getTime());
	    diff = Math.ceil(diff / (1000 * 3600 * 24));
	    
		$("#day").text(diff);
		fun_total();
	});
	
	//객실, 인원수 설정
	$(".room3 .number a").click(function(){
	     var index = $(".room3 .number a").index(this);
	     var target = "";
	     var targetIndex = -1;
	     var targetNum = 0;
	     // 0,1  2,3  4,5  6,7
	     if(index == 0 || index == 1) {
	    	 targetIndex = 0;
	    	 target = ".room > p";
	     }
	     else if(index == 2 || index == 3) {
	    	 targetIndex = 1;
	    	 target = ".ad > p";
	     }
	     else if(index == 4 || index == 5) {
	    	 targetIndex = 2;
	    	 target = ".ch > p";
	     }
	     else if(index == 6 || index == 7) {
	    	 targetIndex = 3;
	    	 target = ".i_ch > p";
	     }
	     
	     if(index%2 == 0)      
	        {
	           targetNum = Number($(".room3 .number span").eq(targetIndex).text()) - 1;
	           if(index == 0) {
	              if(targetNum < 1) return;
	           } else {
	              if(targetNum < 0) return; 
	           }
	        } else {         
	           targetNum = Number($(".room3 .number span").eq(targetIndex).text()) + 1;
	           if(index == 1){
	              if(targetNum > 3) return;
	           }
	           if(index == 3 || index == 5 || index == 7){
	              if(targetNum > 12) return;
	           }
	        }
	     
	     $(".room3 .number span").eq(targetIndex).text(targetNum);
	     $(target).text(targetNum);
	     
	     fun_total();
	});
	
	// 총 결제금액
	var fun_total = function(){
		 var total = 0;
	     var RI_cost = Number($("#RI_cost").text());					
	     var 박 = Number($("#day").text());								
	     var 객실 = Number($(".room > p").text());
	     var 성인 = Number($(".ad > p").text());
	     var 어린이 = Number($(".ch > p").text());
		 var 유아 = Number($(".i_ch > p").text());
		 
	     var 일수별 = (객실 * RI_cost);
	     var 성인별 = (성인 * 60000);
	     var 어린이별 = (어린이 * 30000);
	     var 유아별 = (유아 * 10000);
	     
	     total = ((일수별 + (성인별 + 어린이별 + 유아별)) * 박);
	     
	     $("#divP-2-L-12 > span").text(total);
	     fun_point(total);
	}
	
	// 마일리지
	var fun_point = function(total){
		var point = (total * 0.03);
		$("#divP-2-L-22 > span").text(point);
	}
	
	// 최종 예약완료
	$("#divP-2-R-B").click(function(){
		
		if($("#check_out1").val() == "") {
			alert("체크인 날짜를 선택하세요.");
			return;
		}
		
		if($("#check_out2").val() == "") {
			alert("체크아웃 날짜를 선택하세요.");
			return;
		}
		
		var params = {
				H_num : $("#H_num").val(),
				RI_RoomNo : $("#RI_RoomNo").val(),
				RV_checkin : $("#check_out1").val(),
				RV_checkout : $("#check_out2").val(),
				객실 : $(".room > p").text(),
				성인 : $(".ad > p").text(),
				어린이 : $(".ch > p").text(),
				유아 : $(".i_ch > p").text(),
				총결제금액 : $("#divP-2-L-12 > span").text(),
				적립포인트 : $("#divP-2-L-22 > span").text()
		};
		console.log(params);
        $.ajax({
            type : "POST",
            url : "/Rewards_RV",
            data : params
         }).done(function(d) {
            console.log(d);
            if(d.result > 0) {
               alert("예약 성공");
               location.href = "/Rewards_RV";
            } else {
               alert("예약 실패");
               location.href = "/Reservation";
            }
         
       });
	});
	
});
