<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ,고객문의</title>
	<link rel="stylesheet" href="/css/Faq2.css">
    <link rel="stylesheet" href="/css/base.css" type = "text/css">
 	<link rel="stylesheet" href="/css/main.css" type = "text/css">
	<link rel="stylesheet" href="/css/SearchHotel.css" type = "text/css">
		
	<script type="text/javascript">

			function HClick(){
				document.getElementsByClassName("div_tag11")[0].style.display = "block";
				
			}
			function xclick(){
				  document.getElementsByClassName("div_tag11")[0].style.display = "none";
			}
		</script>
		
		<script type="text/javascript">
		 

		function Accordion(target) {
			var dis = target.children[1];
		    if (dis.style.display === "block") {
		    	dis.style.display = "none";
		    } else {
		    	dis.style.display = "block";
		    }
		  }
		
		</script>
		
</head>
<body>	
	<c:import url="/header" />
	
         <div class= "div1"></div>
	         <div class= "div2">
	           <div class="div2-1">
	           
	          
		              <div class="div2-2" >
		                 <p class="div2-3" style="font-size: 22px; font-weight: bold;">FAQ,고객문의</p>
		                <div class="div2-5">
		                    <p class="p2">FAQ, 문의 게시판 </p>
		                    <a href="/Contactus" class="p2-1" style="font-size: 15px; font-weight: bold; color: #432c10;">문의하기</a>
		                    <a href="/Contactus_Add" class="p2-1" style="font-size: 15px; font-weight: bold; color: #432c10;" >연락처</a>
		                </div>
		              </div>
		            <div class="div2-4">
			              <h3 class="div2-4-1">FAQ, 문의 게시판
			               <div class="p2-4-1"> Home > FAQ, 고객문의 > <u style="color: #865009">FAQ, 문의 게시판 </u> </div>
			              </h3>
		              <br>
		                   <div class="div2-6 "></div>
		                   <div class="div2-7"><p class="p2-7"><a href="/Faq"> 문의게시판</a> &nbsp;&nbsp; <a href="/Faq2">자주하는 질문</a></p></div>
		                   
		              <br> <br>     
		                  
		                 
		             
		              <br> <br><br>
		              
		               <div class="div2-9">
			              <button class="li-1" onclick="Accordion(this)"> 
			              	<ul>
			                 <li ><span class="sp1">문의내용</span><h3 class="h3-1">Q. 객실 쿠폰 사용 방법이 궁금합니다. </h3> </li>
			               </ul>
			               <div class="div2-9-1">
				                 <p class="p222">객실 업그레이드 쿠폰은 GOLD 등급 (차상위 2매, 스위트 1매), DIAMOND 등급 (차상위 4매, 스위트 1매)가 발행 됩니다.

										<br>
										<br>
										<br>등급 업그레이드로 인한 등급 조정 시 발행되고 있습니다.
										<br>
										
										<br>
										<br>[쿠폰 사용 방법]
										<br>
										<br>1. 지류 쿠폰 또는 APP 쿠폰함 내 모바일 쿠폰 확인 후 쿠폰 번호를 예약하신 호텔 지점의 객실 예약실로 직접 신청해주십시오.
										<br>
										<br>   (서울 예약실 02-2230-3310, 제주 예약실 1588-1142)
										<br>
										
										<br>
										<br>2. 체크인 시, 모바일 쿠폰 또는 지류 쿠폰을 프론트에 제시해 주시면 사용 완료 처리를 도와드립니다.
										<br>
										<br>
										
										<br>※ 쿠폰 사용은 예약 시점에 해당 예약실로 사전 신청을 해야 하며, 투숙 호텔의 객실 사정에 따라 제공이 제한될 수 있습니다.
										<br>
										<br>※ 객실 예약자 명과 멤버십 회원 명이 동일하여야만 업그레이드 쿠폰 적용이 가능합니다.
										<br>
										<br>※ 객실 업그레이드 쿠폰은 공식 호텔 홈페이지, 공식 APP 또는 예약실을 통한 직접 예약에 한하여 적용 가능합니다.
										<br>
										<br>※ 객실 업그레이드 쿠폰은 등급에 따른 회원특전 사항에 포함되므로 각 투숙 기간 동안 1회에 한해 제공되며,
										<br>
										<br>    모든 혜택은 다른 혜택과 중복 제공되지 않습니다.
										<br>
										<br>※ 객실 업그레이드 서비스는 1회 투숙 시 최대 3박까지 제공됩니다. 3박을 초과하는 투숙 시에는 추가 요금을
										<br>
										<br>    별도 지불하시거나,  업그레이드 이전 객실로의 룸 체인지가 필요합니다.
										<br>
										<br>※ 쿠폰 사용의 상세한 세부 조건은 이용 약관을 참고 해주십시오.
										<br>
										<br>
										감사합니다.</p>
										
				               </div>
			               </button>
				               
				               
				                       
				             <button class="li-1" onclick="Accordion(this)"> 
				                <ul>
			                 		<li class="li-1"><span class="sp1">문의내용</span><h3 class="h3-1">Q. [전환신청] 기존 멤버십 (다이너스티/골드클럽) 회원인데 신규가입을 해야 하나요?</h3> </li>
			               		</ul>
			               		<div class="div2-9-1">
				                 <p class="p222">
				                 기존 멤버십 회원인 경우, 신라리워즈 멤버십 회원으로 '전환'신청을 하셔야 합니다.

 
										
							<br>		[전환 신청 방법]
							<br>		
							<br>		① 신라리워즈 홈페이지 좌측 메뉴 '신라리워즈 전환 안내'를 클릭
							<br>		
							<br>		② '변경된 이용약관 동의하기'버튼을 클릭
							<br>		
							<br>		③ 회원님의 성명 및 기타 정보 입력 후 구 멤버십 번호 인증
							<br>		
							<br>		④ 신라리워즈 약관 및 개인정보 이용 동의, 제3자 정보 제공에 대해 모두 동의해주신 후 '완료' 버튼을 클릭
							<br>		
							<br>		 
							<br>		
							<br>		신청 일 익일(영업일 기준) 멤버십 센터에서 입력 내용 확인 후 기존 멤버십 등급에 맞는 신라리워즈 멤버십 등급을 등록합니다. 
							<br>		
							<br>		
							<br>		
							<br>		전환 신청 처리 완료 후 가입 시 입력하신 연락처로 멤버십 번호를 문자 안내드립니다.
							<br>		
							<br>		전달 받으신 멤버십 번호를 사용하시어 홈페이지에서 "온라인 계정 활성화" 등록 시 로그인이 가능합니다.
							<br>		
							<br>		
							<br>		
							<br>		※ 구 멤버십 번호는 해당 멤버십 센터를 통하여 조회 가능합니다.
							<br>		
							<br>		서울 다이너스티 멤버십 02-2230-3344
							<br>		
							<br>		제주 골드클럽 멤버십 02-2230-3844
							<br>		
							<br>		
							<br>		
							<br>		감사합니다.
				                 
				                 </p>
										
				               </div>
				               
				               
			               </button>
			               
			                <button class="li-1" onclick="Accordion(this)"> 
				                <ul>
			                 		<li class="li-1"><span class="sp1">문의내용</span><h3 class="h3-1">Q. 신라리워즈 가입은 어떻게 하나요?</h3> </li>
			               		</ul>
			               		<div class="div2-9-1">
				                 <p class="p222">객실 업그레이드 쿠폰은 GOLD 등급 (차상위 2매, 스위트 1매), DIAMOND 등급 (차상위 4매, 스위트 1매)가 발행 됩니다.

										<br>
										<br>
										<br>등급 업그레이드로 인한 등급 조정 시 발행되고 있습니다.
										<br>
										
										<br>
										<br>[쿠폰 사용 방법]
										<br>
										<br>1. 지류 쿠폰 또는 APP 쿠폰함 내 모바일 쿠폰 확인 후 쿠폰 번호를 예약하신 호텔 지점의 객실 예약실로 직접 신청해주십시오.
										<br>
										<br>   (서울 예약실 02-2230-3310, 제주 예약실 1588-1142)
										<br>
										
										<br>
										<br>2. 체크인 시, 모바일 쿠폰 또는 지류 쿠폰을 프론트에 제시해 주시면 사용 완료 처리를 도와드립니다.
										<br>
										<br>
										
										<br>※ 쿠폰 사용은 예약 시점에 해당 예약실로 사전 신청을 해야 하며, 투숙 호텔의 객실 사정에 따라 제공이 제한될 수 있습니다.
										<br>
										<br>※ 객실 예약자 명과 멤버십 회원 명이 동일하여야만 업그레이드 쿠폰 적용이 가능합니다.
										<br>
										<br>※ 객실 업그레이드 쿠폰은 공식 호텔 홈페이지, 공식 APP 또는 예약실을 통한 직접 예약에 한하여 적용 가능합니다.
										<br>
										<br>※ 객실 업그레이드 쿠폰은 등급에 따른 회원특전 사항에 포함되므로 각 투숙 기간 동안 1회에 한해 제공되며,
										<br>
										<br>    모든 혜택은 다른 혜택과 중복 제공되지 않습니다.
										<br>
										<br>※ 객실 업그레이드 서비스는 1회 투숙 시 최대 3박까지 제공됩니다. 3박을 초과하는 투숙 시에는 추가 요금을
										<br>
										<br>    별도 지불하시거나,  업그레이드 이전 객실로의 룸 체인지가 필요합니다.
										<br>
										<br>※ 쿠폰 사용의 상세한 세부 조건은 이용 약관을 참고 해주십시오.
										<br>
										<br>
										감사합니다.</p>
										
				               </div>
				               
				               
			               </button>
			               
			                <button class="li-1" onclick="Accordion(this)"> 
				                <ul>
			                 		<li class="li-1"><span class="sp1">문의내용</span><h3 class="h3-1">Q. 온라인 계정 활성화 등록과 온라인 가입의 차이점은 무엇인가요?</h3> </li>
			               		</ul>
			               		<div class="div2-9-1">
				                 <p class="p222">객실 업그레이드 쿠폰은 GOLD 등급 (차상위 2매, 스위트 1매), DIAMOND 등급 (차상위 4매, 스위트 1매)가 발행 됩니다.

										<br>
										<br>
										<br>등급 업그레이드로 인한 등급 조정 시 발행되고 있습니다.
										<br>
										
										<br>
										<br>[쿠폰 사용 방법]
										<br>
										<br>1. 지류 쿠폰 또는 APP 쿠폰함 내 모바일 쿠폰 확인 후 쿠폰 번호를 예약하신 호텔 지점의 객실 예약실로 직접 신청해주십시오.
										<br>
										<br>   (서울 예약실 02-2230-3310, 제주 예약실 1588-1142)
										<br>
										
										<br>
										<br>2. 체크인 시, 모바일 쿠폰 또는 지류 쿠폰을 프론트에 제시해 주시면 사용 완료 처리를 도와드립니다.
										<br>
										<br>
										
										<br>※ 쿠폰 사용은 예약 시점에 해당 예약실로 사전 신청을 해야 하며, 투숙 호텔의 객실 사정에 따라 제공이 제한될 수 있습니다.
										<br>
										<br>※ 객실 예약자 명과 멤버십 회원 명이 동일하여야만 업그레이드 쿠폰 적용이 가능합니다.
										<br>
										<br>※ 객실 업그레이드 쿠폰은 공식 호텔 홈페이지, 공식 APP 또는 예약실을 통한 직접 예약에 한하여 적용 가능합니다.
										<br>
										<br>※ 객실 업그레이드 쿠폰은 등급에 따른 회원특전 사항에 포함되므로 각 투숙 기간 동안 1회에 한해 제공되며,
										<br>
										<br>    모든 혜택은 다른 혜택과 중복 제공되지 않습니다.
										<br>
										<br>※ 객실 업그레이드 서비스는 1회 투숙 시 최대 3박까지 제공됩니다. 3박을 초과하는 투숙 시에는 추가 요금을
										<br>
										<br>    별도 지불하시거나,  업그레이드 이전 객실로의 룸 체인지가 필요합니다.
										<br>
										<br>※ 쿠폰 사용의 상세한 세부 조건은 이용 약관을 참고 해주십시오.
										<br>
										<br>
										감사합니다.</p>
										
				               </div>
				               
				               
			               </button>
				               
			               
		              </div>
		              
			              	 
		            </div>
		     
		            
		            
		            
	          </div>
           </div>

<!--lastbar -->

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

</body>
</html>