<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Reservation_Select</title>
		<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
		<link rel="stylesheet" href="/css/main.css" type = "text/css">
		<link rel="stylesheet" href="/css/base.css" type = "text/css">
		<link rel="stylesheet" href="/css/Reservation.css">
		<link rel="stylesheet" href="/css/Reservation_Select.css">
		<link rel="stylesheet" href="/css/SearchHotel.css" type = "text/css">
		<script src="/res/js/commons.js"></script>
		<script src="/res/js/Reservation_Select.js"></script>
		</head>
<body>	
	<c:import url="/header" />
	
	<div class="contain">
		<div class ="new_rsvBox">
			<div class = "rsvStepWrap">
				<div class ="rsvStepList">
					<ul>
						<li class ="step1">
							<img src="/css/shillaUI/rsv_step2_on.png" alt="down" >
						</li>
<!-- 						<li>
							<img src="shillaUI/rsv_step2_on.png" alt="down" >
							</li> -->
<!-- 						<li>	
							<img src="shillaUI/rsv_step3_on.png" alt="down" >
							</li> -->
				
					</ul>
				</div>
				<div class =Serch_main>
					<div class ="serchbar">
								<div class="serch_top">
										<div class = "sc" > 호텔 또는 도시</div>
										<div class = "ch_in">체크인</div>
										<div class = "day" >
										<img src="https://www.shillahotels.com/images/ko/mem/new_2019/ico_night.png" alt="down" width="15px" height="15px" >
										</div>
										<div class = "ch_out">체크아웃</div>
										<div class = "room">객실</div>
										<div class = "ad">성인</div>
										<div class = "ch">어린이
										</div>
										<div class = "i_ch">유아</div>
								</div>
								<div class="serch_bottom">
										<div class = "sc" id="rv_hotelname">${RV_hotelname}</div>
										<div class = "ch_in">
											<input id="check_out1"  type='date' name='ch_in' id="chekin" disabled="disabled">
										</div>
										<div class = "day" id="day">
											1박 
										</div>
										<div class = "ch_out">
											<input id="check_out2" type='date' name='ch_out' id="chekout" min ="2019-12-23" disabled="disabled">
										</div>
										<div class = "room"  >
										 	<a href="">0</a>
										 </div>
										<div class = "ad"  >	
											<a href="">0</a>
										</div>
										<div class = "ch"  > 
											<a href="">0</a>
										</div>
										<div class = "i_ch"  >
											<a href="">0</a>
										</div>
								</div>
						</div>
					<div class = "serch_botton">
						<a href="#none">
							<img src="/css/shillaUI/btn_search.gif" alt="검색" width="125px" height="55px"  onclick="">
						</a>
					</div>					
				</div>	
				
			</div>
			
			<!-- rsvStepWrap UI가 끝나는 부분 -->
		
			<div id = "divRS">
				<p class = "info">모든 금액은 1박 당 요금이며, 할인이 적용된 요금입니다.</p>
				
		<c:forEach var="row" items="${data.result}">
				<div class = "divRS-1">
					<div class = "divRS-Img1">
						<img src="${row.RI_img}">
					</div>
					<div class = "divRS-L">
						<h1 class = "room-title">${row.RI_head}</h1>
						<p class = "explanation">${row.RI_body}</p>
						<br>
						<br>
						<h2 class = "room-cost">COST : <span>${row.RI_cost}</span> 원</h2>
					</div>
					<div class = "divRS-R">
						<a href="/Reservation_Payment/${row.RI_RoomNo}">
							<img src = "/css/imgF/reservation1.gif" >
						</a>
					</div>			
				</div>
		</c:forEach>
				
			</div>
			
			
			<!-- 여기까지가 객실창 -->
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
