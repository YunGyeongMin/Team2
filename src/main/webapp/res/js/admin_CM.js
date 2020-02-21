$(document).ready(function() {
	
		function getData(){
			$.ajax({
				type: "post",
				url: "/Admin_CL/detailData"
			}).done(function(d){
				console.log(d);
				$("#CL_Mgrade").val(d.CL_Mgrade);
				$("#CL_resMile").val(d.CL_resMile);			
	
				$("#CL_Kname1").val(d.CL_Kname);
				$("#CL_Kname").val(d.CL_Kname);
				$("#CL_ID").val(d.CL_ID);
				$("#CL_birth").val(d.CL_birth);
				$("#CL_phone").val(d.CL_phone);
				$("#CL_email").val(d.CL_email);
				$("#CL_postcode").val(d.CL_postcode);
				$("#CL_address").val(d.CL_address);
				$("#CL_detailaddress").val(d.CL_detailaddress);
			});
		}
		
		getData();

		
		//마일리지 금액에 따른 등급변경
		
		
		
		
		//맨 아래 프로필창 정보 disabled
		$(".profile").attr("readonly",true).attr("disabled",true);
		
		//맨 아래 프로필창 정보 disabled
		$(".profile1").attr("readonly",true).attr("disabled",true);
		
		//맨 아래 프로필창 정보 disabled
		$(".profile2").attr("readonly",true).attr("disabled",true);
		
		
		//처음에 radiobutton disabled
		$(".radiobtn").attr('disabled', true); 
		
	
		//정보 수정하기를 누르면 disabled=true인게 false로 변경(radiobtn)
		$("#Modify_profile").click(function(){
			$(".radiobtn").attr('disabled', true) 
			{
				$("input[name='Grade']").attr('disabled', false);
			}
		});
	

		//수정완료를 누르면 disabled=false인게 true로 변경(radiobtn)
		$("#Modify_completed").click(function(){
			$(".radiobtn").attr('disabled', false) 
			{
				$("input[name='Grade']").attr('disabled', true);
			}
		});
	
		
		//정보 수정하기를 누르면 readonly=true인게 false로 변경(mileagecost)
		$("#Modify_profile").click(function() { 
		    $(".mileagecost").attr('readonly', true) 
			    { 	
			        $(".mileagecost").addClass('bg-color');
			        $(".mileagecost").attr('readonly', false); 
			    } 

		});
		
		//수정완료를 누르면 readonly=false인게 true로 변경(mileagecost)
		$("#Modify_completed").click(function() {
			$(".mileagecost").attr('readonly', false)
				{
					$(".mileagecost").removeClass('bg-color');
					$(".mileagecost").attr('readonly', true);
				}
		});
	



	
});











