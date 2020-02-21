$(document).ready(function() {
	
	$("#check_out1, #check_out2, .serch_bottom a").click(function(){
		alert('이 옵션은 결제 페이지에서 선택하실 수 있습니다.');
	});
	
	$(".serch_bottom .sc").click(function(){
		$(".hotel").show();
	});
	
	$('.choice').click(function() {
	    $("#choice").val($(this).text());
	});

	$("#hotel-select").submit(function(e){
			e.preventDefault();
			
			if($("#choice").val() == "") {
				alert("호텔를 선택하세요.");
				return;
			}
						
			$("#hotel-select")[0].submit();
			
//			var params = {
//
//							"RV_hotelname" : $("#choice").val()
//						 };
//			console.log(params);
//			$.ajax({
//				type : "POST",
//				url : "/Reservation",
//				data : params
//			}).done(function(d) {
//				console.log(d)
//				if($("#choice").val() == "") {
//					console.log("A");
//					$("#hotel-select").attr("disabled",true);
//				} else {
//					console.log("B");
//					location.href = "/Reservation_Select";
//				}
//		});
		
	});



	
});











