$(document).ready(function(){
	var option = {
			  type: "",
			  url: "/Sign2",
			  data: "",
			  contentType: 'application/json; charset=UTF-8'
		};
	
	//생년월일
	var birth = function(){
		var d = new Date();
		var y = d.getFullYear();
		var m = Number(d.getMonth() + 1);
		if(m < 10) m = "0" + m;
		var dd = d.getDate();
		$("#CL_birth").attr("min", "1900-01-01");
		$("#CL_birth").attr("max", (y + "-" + m + "-" + dd));
	}
	birth();
	
	//ID 중복체크
	$("#idcheckbtn").click(function(){
		option.url = "/Sign2";
		if($("#CL_ID").val().length < 5) {
			alert("아이디의 최소 길이는 5자 이상입니다.");
			return;
		}
		
		var params = {
				"CL_ID"	:	$("#CL_ID").val()
		};
		console.log(params);
		option.data = JSON.stringify(params);
		option.type = "PATCH";
		$.ajax(option).done(function(data){
			if(data == 1) {
				alert("사용 불가능한 아이디 입니다.");
				$("#CL_ID").val();
			} else {
				alert("사용 가능한 아이디입니다");
			}
		});
	});
	
	//email 중복체크
	$("#emcheckbtn").click(function(){
		option.url = "/Sign2/emchk";
		if($("#CL_email").val().length < 1) {
			alert("이메일을 입력하세요.");
			return;
		}
		var params = {
				"CL_email"	:	$("#CL_email").val()
		};
		console.log(params);
		option.data = JSON.stringify(params);
		option.type = "PATCH";
		$.ajax(option).done(function(data){
			console.log(data);
			if(data == 1) {
				alert("사용 불가능한 이메일 입니다.");
				$("#CL_email").val();
				console.log(data);
			} else {
				alert("사용 가능한 이메일입니다");
			}
		});
	});
	
	//비밀번호 중복 체크
	$("#clearlog").submit(function(e){
		e.preventDefault();

		if($("#CL_PW").val().length < 8) {
			alert("비밀번호의 최소 길이는 8자 이상입니다.");
			return;
		}

		var params = {
			"CL_Kname"			:	$("#CL_Kname").val(),
			"CL_birth"			:	$("#CL_birth").val(),
			"CL_email"			:	$("#CL_email").val(),
			"CL_phone"			:	$("#CL_phone").val(),
			"CL_postcode"		:	$("#CL_postcode").val(),
			"CL_address"		:	$("#CL_address").val(),
			"CL_detailaddress"	:	$("#CL_detailaddress").val(),
			"CL_ID"				:	$("#CL_ID").val(),	
			"CL_PW"				:	$("#CL_PW").val()	
		};
		console.log(params);
		option.data = JSON.stringify(params);
		option.type = "PUT";
		$.ajax(option).done(function(data){
			console.log(data);
			if(data > 0){
				console.log("A");
		          location.href = "/Sign3";
			}else {
				console.log("B");
		    }
		});
	});
});