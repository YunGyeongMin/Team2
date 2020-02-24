<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>정보입력 | 신라리워즈 가입 | The Shilla Hotels & Resorts</title>
		<link rel="shortcut icon" href="#">
		
		<link rel="stylesheet" href="/css/main.css" type = "text/css">
		<link rel="stylesheet" href="/css/base.css" type = "text/css"> 
		<link rel="stylesheet" href="/css/join.css" type = "text/css">
		<link rel="stylesheet" href="/css/SearchHotel.css" type = "text/css">
	
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script type = "text/javascript" src = "/res/js/sign2.js"></script>
	<script type="text/javascript">

			function HClick(){
				document.getElementsByClassName("div_tag11")[0].style.display = "block";
			}
			function xclick(){
				  document.getElementsByClassName("div_tag11")[0].style.display = "none";
			}
			
			function sample6_execDaumPostcode() {
		        new daum.Postcode({
		            oncomplete: function(data) {
		                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

		                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
		                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		                var addr = ''; // 주소 변수
		                var extraAddr = ''; // 참고항목 변수

		                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                    addr = data.roadAddress;
		                } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                    addr = data.jibunAddress;
		                }

		                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
		                if(data.userSelectedType === 'R'){
		                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
		                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
		                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                        extraAddr += data.bname;
		                    }
		                    // 건물명이 있고, 공동주택일 경우 추가한다.
		                    if(data.buildingName !== '' && data.apartment === 'Y'){
		                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                    }
		                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
// 		                    if(extraAddr !== ''){
// 		                        extraAddr = ' (' + extraAddr + ')';
// 		                    }
		                    // 조합된 참고항목을 해당 필드에 넣는다.
// 		                    document.getElementById("sample6_extraAddress").value = extraAddr;
		                }
// 		                } else {
// 		                    document.getElementById("sample6_extraAddress").value = '';
// 		                }

		                // 우편번호와 주소 정보를 해당 필드에 넣는다.
		                document.getElementById('CL_postcode').value = data.zonecode;
		                document.getElementById("CL_address").value = addr;
		                // 커서를 상세주소 필드로 이동한다.
		                document.getElementById("CL_detailaddress").focus();
		            }
		        }).open();
		    }
	</script>
	<script> 
	var replaceNotInt = /[^0-9]/gi;
    $(document).ready(function(){
        $("#inputPhone").on("focusout", function() {
            var x = $(this).val();
            if (x.length > 0) {
                if (x.match(replaceNotInt)) {
                   x = x.replace(replaceNotInt, "");
                }
                $(this).val(x);
            }
        }).on("keyup", function() {
            $(this).val($(this).val().replace(replaceNotInt, ""));
        });
 	 });
 	</script>
		</head>
<body>	
	<c:import url="/header" />
<!--member information input-->
		<section id = "Signall" class = "joincontain">
			<form name = "joinform" action="/Sign2" method="post" id = "clearlog">
				<div class = "container">
					<div class = "contents">
						<div class = "ctnjoin joiner2">
							<div class = "location">
								<p class = "lote">
									 > 
									<strong>회원가입</strong>
								</p>
							</div>
							<div class = "informdata">
								<div class = "informdataimg"></div>
							</div>
							<div class = "joinstep">
								<ul class = "order">
									<li class = "argee">
<!--약관동의 -->							<span></span> 
									</li>
									<li class = "memberinform on">
<!--회원정보입력 -->						<span></span>
									</li>
									<li class = "joinend">
<!--가입완료-->							<span></span>
									</li>
								</ul>
							</div>
							<div class = "jtitle jtitle2"></div>
<!--세부입력 -->
							<div class = "baseinput">
								<h4 class = "tit">기본 입력</h4>
								<div class = "emtext">
									<font color = "#f33333">*</font>
									 표시 필수입력사항
								</div>	
							</div>
							<table class = "table1 tablemsg" style = "margin-top : 0px;">
								<colgroup>
									<col width = "16%">
								</colgroup>
								<tbody>
									<!--이름(한) -->
									<tr class="form-group">
										<th class="control-label">
											<font color = "#f33333">*</font>
											성명(국문)
										</th>
										<td>
											<input type="text" onkeyup="this.value=this.value.replace(/[^ㄱ-ㅎ가-힇]/g,'')" class ="databox form-control" id="CL_Kname" name="CL_Kname" required="required">
										</td>
									</tr>
									<!--생년월일 -->
									<tr class="form-group">
										<th>
											<font color = "#f33333">*</font>
											생년월일
										</th>
										<td>
											<input class = "databox" id = "CL_birth"  type = "date" name = "CL_birth" >
										</td>
									</tr>
									<!--이메일-->
									<tr class="form-group">
										<th>
											<font color = "#f33333">*</font>
											이메일
										</th>
										<td>
											<input type="email" class ="databox" pattern="[a-zA-z0-9]{3,16}@[a-z]{3,10}.[a-z]{2,5}"id="CL_email" name="CL_email" required="required">
											<button type="button" id="emcheckbtn" class = "emailconfirm" style = "border : 0px; padding : 0px;"></button>
										</td>
									</tr>
									<!--휴대전화-->
									<tr class="form-group">
										<th>
											<font color = "#f33333">*</font>
											휴대전화
										</th>
										<td>
											<div id = dayt style = "width : 78px; height: 23px; border: #cccccc 1px solid; float: left; text-align: center;">
												010
											</div>
											 - 
											<input type="text" class ="databox form-control" id="CL_phone" name="CL_phone" style = "text-align: center" 
											maxlength="8" required="required">
										</td>
									</tr>
									<!--자택주소-->
									<tr id = "homeaddres" class="form-group">
										<th>자택주소</th>
										<td class = "inters">
											<input type="text" id="CL_postcode" class = "addsch1" placeholder="우편번호" name = "CL_address">
											<input type="button" onclick="sample6_execDaumPostcode()" class = "addsch2" value="주소 찾기"><br>
											<input type="text" id="CL_address" class = "address1" placeholder="주소" name = "CL_address"><br>
											<input type="text" id="CL_detailaddress" class = "address1" placeholder="상세주소" name = "CL_address">
										</td>
									</tr>
								</tbody>
							</table>
<!--ID, PW 입력-->
							<div class = "baseinput">
								<h4 class = "tit">웹사이트 비밀번호 입력</h4>
							</div>
							<table class = "table1 tablemsg" style = "margin-top : 0px;">
								<colgroup>
									<col width = "16%">
								</colgroup>
								<tbody>
									<!--아이디-->
									<tr class="form-group">
										<th>
											<font color = "#f33333">*</font>
											아이디
										</th>
										<td>
											<input type="text" onkeyup="this.value=this.value.replace(/[^a-zA-z0-9]/g,'')" maxlength="12" class ="databox form-control" id="CL_ID" name="CL_ID"  required="required">
												<button type="button" id="idcheckbtn" class="idconfirm btn btn-default" style = "border : 0px; padding : 0px;"></button>
											<div class = "condition">5~12자  이내 영문 또는 영문/숫자 조합</div>
										</td>
									</tr>
									<!--비밀번호-->
									<tr class="form-group">
										<th>
											<font color = "#f33333">*</font>
											비밀번호
										</th>
										<td>
											<input type="password" class ="databox form-control" onkeyup="this.value=this.value.replace(/[^a-zA-z0-9]/g,'')" maxlength="20" id="CL_PW" name="CL_PW" required="required">
											<div class = "pwguid">
												<span class = "pwguidtxt">비밀번호입력안내</span>
												<div class = "pwicon"></div>
											</div>
											<div class = "condition">8~20자  이내 영문/숫자 조합</div>
										</td>
									</tr>
									<!--비밀번호 확인-->
<!-- 									<tr class="form-group"> -->
<!-- 										<th> -->
<!-- 											<font color = "#f33333">*</font> -->
<!-- 											비밀번호 확인 -->
<!-- 										</th> -->
<!-- 										<td> -->
<!-- 											<input type="password" class ="databox form-control" id="CL_PWYN" name="CL_PWYN"> -->
<!-- 										</td> -->
<!-- 									</tr> -->
								</tbody>
							</table>
							<div class = "shpromotion">
								<span>※ 신라리워즈 가입 고객께는 모바일 카드가 발급 되며 혜택 및 약관은 홈페이지에서 확인 가능합니다.</span>
							</div>
							<div class = "btnjoinbtn" >
								<input type="submit" class = "joinsendbtn">
<!-- 								<button type="submit" class = "joinsendbtn" style = "border : 0px; padding : 0px;"></button> -->
							</div>
						</div>
					</div>
				</div>
			</form>
		</section>
<!--lastbar -->
	<div>
		<div class = "lastbar">
			<div class = "barfoot">
				<div class = "barlogo"></div>
				<div class = "brandcase">
					<div class = "brand"></div>
					<div class = "brandstay"></div>
				</div>
				<div class = "explain">
					<dl class = "exbox">
						<dd class = "d1">
							<a href = "/Overview_Intro">
								<span>호텔신라 소개</span>
							</a>
						</dd>
						<dd class = "d2">
							<a href = "/Contactus_Add">
								<span>고객문의</span>
							</a>
						</dd>
						<dd class = "d3">
							<a href = "/Rewards_MS">
								<span>신라리워즈 전환안내</span>
							</a>
						</dd>
					</dl>
					<div class = "htnumber"></div>
				</div>
			</div>
			<div class = "barfoot2">
				<div class = "exlocal">
					<div class = "exin"></div>
				</div>
				<div class = "copylight"></div>
			</div>
		</div>
	</div>
</body>
</html>