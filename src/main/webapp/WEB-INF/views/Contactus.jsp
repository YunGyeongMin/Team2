<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객문의 문의하기</title>
	<link rel="stylesheet" href="/css/Ask.css">
	<link rel="stylesheet" href="/css/base.css" type = "text/css">
  	<link rel="stylesheet" href="/css/main.css" type = "text/css">
	<link rel="stylesheet" href="/css/SearchHotel.css" type = "text/css">
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script type = "text/javascript" src = "/res/js/Contactus.js"></script>	
	<script type="text/javascript">

			function HClick(){
				document.getElementsByClassName("div_tag11")[0].style.display = "block";
				
			}
			function xclick(){
				  document.getElementsByClassName("div_tag11")[0].style.display = "none";
			}
		</script>
		
		</head>
<body>	
	<c:import url="/header" />
	         
	         
	         <div class= "div2">
	           <div class="div2-1">
		              <div class="div2-2" >
		                <h2 class="div2-3" style="font-size: 22px; font-weight: bold;">FAQ,고객문의</h2>
		                <div class="div2-5">
		                    <a href="/Faq" class="p2-1">FAQ, 문의 게시판 </a>
		                    <p class="p2">문의하기</p>
		                    <a href="/Contactus_Add" class="p2-1">연락처</a>
		                </div>
		              </div>
		            <div class="div2-4">
			              <h3 class="div2-4-1">문의하기
			               <div class="p2-4-1"> Home > FAQ, 고객문의 > <u style="color: #865009">문의하기</u> </div>
			              </h3>
			              <p class="ptop"> <span style="color: red;"> * </span> <strong> 표시 필수입력사항</strong> </p>
		              <br> <br> <br> <div class="div2-4-2">
		              
			              	 
			              	 
			              	    <div class="div-sp1" >
				              	    <p class="span-center">&nbsp; <span style="color: red;"> * </span>
				              	    	<strong>제목</strong> 
				              	    </p>
			              	    </div>
			              	   <div class="div-sp2" > 
			              	   		<input type="text"  class="ipt-title" id="title">  
			              	   </div>
			              	   <div class="div-sp3">
				              	   <p class="span-center2">&nbsp; <span style="color: red;"> * </span>
				              	   		<strong>내용</strong> 
				              	   </p>
			              	   </div>
			              	   <div class="div-sp4" > 
				              	   <textarea  outline: none; rows = "20" cols = "50" class = "ip" id="main"></textarea>
			              	   </div> 
			              </div>
		              <h5 class="p"><strong style="font-size: 14px;">필수적 개인정보 수집 및 이용에 대한 동의</strong></h5>
		              <br>
			          <div class="div-s">
			              	 <a class="a">
					              	      <br>  신라호텔 고객의 문의 및 의견과 관련하여 귀사가 아래와 같이 본인의 개인정보를 수집 및 이용하는데 동의합니다. <br> <br>
								<br>	<strong>1. 필수적인 개인정보의 수집 ㆍ이용에 관한 사항 </strong>
								<br>	<strong>① 수집ㆍ이용 항목 | 성명(국문·영문), 이메일, 휴대전화 </strong>
								<br>	<strong>② 수집ㆍ이용 목적 | 문의에 대한 안내 및 서비스 제공 </strong>
								<br>	<strong>③ 보유ㆍ이용 기간 | 수집ㆍ이용 동의일로부터 5년간 </strong>
								<br>	※위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경우 문의에 대한 안내 및 서비스 제공과 관련된 제반 절차 진행이 불가능 할 수 있음을 알려드립니다.
							 </a>
			          </div>  
			              	 <br>
			              	 <div class="input-div" id="inputmame1">
				              	  <input type="radio" style="font-size: 10px;" class="ipt1-radio2" name="inputmame1"> 
					              	  <label > 동의함 </label>
					              	  
					              	  <input type="radio" style="font-size: 10px;" class="ipt1-radio2" name="inputmame1" checked="checked"> 
				              	  <label > 동의하지 않음 <span style="display: none; color: red; font-weight: bold;">*</span> </label>
			              	 </div>
				              	 <br>
				              	 <br>
			              	 	   <h5 class="p"><strong style="font-size: 14px;">선택적 개인정보 수집 및 이용에 대한 동의</strong></h5>
		              		 	 <br>
		              		<div class="div-s">
									 <a class="a">      	     
									        <br>  	     신라호텔 고객의 문의 및 의견과 관련하여 귀사가 아래와 같이 본인의 개인정보를 수집 및 이용하는데 동의합니다. 
						                    <br> 
											<br> 	선택적인 개인정보의 수집 ㆍ이용에 관한 사항
											<br> <strong>① 수집ㆍ이용 항목 | 자택전화 </strong>	
											<br> <strong>② 수집ㆍ이용 목적 | 문의에 대한 안내 및 서비스 제공 </strong>	
											<br> <strong>③ 보유ㆍ이용 기간 | 수집ㆍ이용 동의일로부터 5년간 </strong>	
											<br> 	※위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경우 문의에 대한 안내 및 서비스 제공과 관련된 일반전화 안내 진행이 불가능 할 수 있음을 알려드립니다.
									 </a>
							  </div>  
			              	  <br>
			              	 <div class="input-div" id="inputmame2">
			              	  <input type="radio" style="font-size: 10px;" class="ipt1-radio2" name="inputmame2"> 
			              	  <label > 동의함 </label>
			              	  
			              	  <input type="radio" style="font-size: 10px;" class="ipt1-radio2" name="inputmame2" checked="checked"> 
			              	  <label > 동의하지 않음 <span style="display: none; color: red; font-weight: bold;">*</span> </label>
			              	 </div>
			              	 <br>
			              	  <br>
			              	   <br>
			              	    <br>
			              	<form id="save">
				              	 <div class="div-e" >
				              	 	<button type="submit" class="buttonST">
				              	 		<h5 class="h5">등록</h5>
				              	 	</button>
				              	 </div>
			              	</form>
			              	 
		            </div>
	          </div>
           </div>


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