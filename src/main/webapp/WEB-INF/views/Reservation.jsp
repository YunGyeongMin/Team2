<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Reservation</title>
		<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
		<link rel="stylesheet" href="/css/main.css" type = "text/css">
		<link rel="stylesheet" href="/css/base.css" type = "text/css">
		<link rel="stylesheet" href="/css/Reservation.css">
		<link rel="stylesheet" href="/css/SearchHotel.css" type = "text/css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="/res/js/commons.js"></script>
		<script src="/res/js/Reservation.js"></script>
	</head>
<body>	
	<c:import url="/header" />
	
	<div class="contain">
		<div class ="new_rsvBox">
			<div class = "rsvStepWrap">
				<div class ="rsvStepList">
					<ul>
						<li class ="step1">
							<img src="/css/shillaUI/rsv_step1_on.png" alt="down" >
						</li>
<!-- 						<li>
							<img src="shillaUI/rsv_step2_on.png" alt="down" >
							</li> -->
<!-- 						<li>	
							<img src="shillaUI/rsv_step3_on.png" alt="down" >
							</li> -->
				
					</ul>
				</div>
				<form id="hotel-select" action="/Reservation_Select" method="get">
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
											<div class = "sc"  > 
												<input id="choice" class="im" type="text" placeholder="호텔을 선택하세요." required name ="choice" readonly="readonly"  >
											</div>
											<div class = "ch_in">
												<input id="check_out1"  type='date' name='ch_in' id="chekin" disabled="disabled">
											</div>
											<div class = "day" id="day">
											1박
											</div>
											<div class = "ch_out">
												<input id="check_out2" type='date' name='ch_out' id="chekout"  min ="2019-12-23" disabled="disabled">
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
						<div class = "serch_botton" >
									<button type="submit"  style=" border: 0; outline: 0; padding: 0; cursor: pointer;" >
										<img src="/css/shillaUI/btn_search.gif" alt="검색" width="125px" height="55px"  onclick="">
									</button>
						</div>
					</div>	
				</form>
			</div>
		
			<div class = "non_serch" >
				<h3 id="non_serch">예약을 원하시는 호텔, 날짜, 인원을 선택해주세요.</h3>
				<div class ="hotel">
					<div class="hotelBox_N" tabindex="0" style="display: block;">
						<div class="hHead">
							<ul class="htTab">
			   					<li class="tab2 first on"><a href="#"><span>신라호텔 목록</span></a></li>
<!-- 							<li class="tab1  last"><a href="#"><span>브랜드별</span></a></li>a 선택시 li class on 추가 -->
							</ul>
						</div>
			
					
						<div class="hCon htData" style="display: block;">
							<div class="list2 korea">				
								<dl>
								
										<dd >
											<strong class="tit">서울 강북</strong>
											<br>
												<ul style="width:100%;">
													<li class="first"><a class="choice" href="#">서울신라호텔</a></li>
													<li><a class="choice" href="#">신라스테이 광화문</a></li>
													<li><a class="choice" href="#">신라스테이 마포</a></li>
													<li class="last"><a class="choice" href="#">신라스테이 서대문</a></li>
												</ul>
										</dd>
										<dd>
											<strong class="tit">서울 강남</strong>
											<ul style="width:100%;">
												<li class="first"><a class="choice" href="#">신라스테이 역삼</a></li>
												<li><a class="choice" href="#">신라스테이 서초</a></li>
												<li class="last"><a class="choice" href="#">신라스테이 구로</a></li>
											</ul>
									</dd>
									<dd>
										<strong class="tit">전국</strong>
										<ul style="width:100%;">
											<li class="first"><a class="choice" href="#">신라스테이 동탄</a></li>
											<li><a class="choice" href="#">신라스테이 천안</a></li>
											<li><a class="choice" href="#">신라스테이 울산</a></li>
											<li><a class="choice" href="#">신라스테이 해운대</a></li>
											<li><a class="choice" href="#">신라스테이 제주</a></li>
											<li class="last"><a class="choice" href="#">제주신라호텔</a></li>
										</ul>
									</dd>
								</dl>
								
							</div>
					
						</div>
						
						
					</div>
				</div>
				
				<div class ="people">
					<div class="r_number">
							<div class="con room1 add">
								<dl>
									<dt>객실1</dt>
									<dd>
										<ul>
											<li class="first"><strong class="tit">성인</strong>
												<div class="number">
													<a href="#none" class="minus">감소</a> <span class="num">3</span>
													<a href="#none" class="plus disabled">증가</a>
												</div></li>
											<li><strong class="tit">어린이</strong>
												<div class="number">
													<a href="#none" class="minus">감소</a> <span class="num">0</span>
													<a href="#none" class="plus">증가</a>
												</div></li>
											<li class="last"><strong class="tit">유아</strong>
												<div class="number">
													<a href="#none" class="minus">감소</a> <span class="num">0</span>
													<a href="#none" class="plus">증가</a>
												</div></li>
										</ul>
									</dd>
								</dl>
							</div>
							<div class="con room2">
								<dl>
									<dt>객실2</dt>
									<dd>
										<ul>
											<li class="first"><strong class="tit">성인</strong>
												<div class="number">
													<a href="#none" class="minus">감소</a> 
													<span class="num">2</span>
													<a href="#none" class="plus">증가</a>
												</div></li>
											<li><strong class="tit">어린이</strong>
												<div class="number">
													<a href="#none" class="minus">감소</a> 
													<span class="num">0</span>
													<a href="#none" class="plus">증가</a>
												</div></li>
											<li class="last"><strong class="tit">유아</strong>
												<div class="number">
													<a href="#none" class="minus">감소</a> 
													<span class="num">0</span>
													<a href="#none" class="plus">증가</a>
												</div></li>
										</ul>
									</dd>
									<dd class="rooms">
										<a href="#none" class="btnRooms del2">삭제</a>
										<a href="#none" class="btnRooms add2">추가</a>
									</dd>
								</dl>
							</div>
							<div class="con room3">
								<dl>
									<dt>객실3</dt>
									<dd>
										<ul>
											<li class="first"><strong class="tit">성인</strong>
												<div class="number">
													<a href="#none" class="minus">감소</a> 
													<span class="num countp">1</span>
													<a href="#none" class="plus">count</a>
												</div></li>
											<li><strong class="tit">어린이</strong>
												<div class="number">
													<a href="#none" class="minus">감소</a> 
													<span class="num">0</span>
													<a href="#none" class="plus">증가</a>
												</div></li>
											<li class="last"><strong class="tit">유아</strong>
												<div class="number">
													<a href="#none" class="minus">감소</a> 
													<span class="num">0</span>
													<a href="#none" class="plus">증가</a>
												</div></li>
										</ul>
									</dd>
									<dd class="rooms">
										<a href="#none" class="btnRooms del3">삭제</a>
										<a href="#none" class="btnRooms add3">추가</a>
									</dd>
								</dl>
							</div>
		                <ul class="notiList1">
		                	<li class="first">객실은 최대 3개까지 선택 가능합니다.</li>
		                	<li class="last">어린이 : 37개월 이상 ~ 만 12세 이하&nbsp;/&nbsp;유아 : 36개월 이하</li>
		                </ul>
		                     	<div class="btnList" style="left:-10%;">
				    				<a href="#none" ><img src="/css/img/reserve_step1_ok.gif" alt="확인" id="keywordAreaBtn"></a>
		           				</div>
		              </div>
		      
				</div>
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
