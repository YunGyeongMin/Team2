<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Reservation_Payment</title>
		
	

		<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
		<link rel="stylesheet" href="/css/main.css" type = "text/css">
		<link rel="stylesheet" href="/css/base.css" type = "text/css">
		<link rel="stylesheet" href="/css/Reservation.css">
		<link rel="stylesheet" href="/css/Reservation_Select.css">
		<link rel="stylesheet" href="/css/Reservation_Payment.css">
		<link rel="stylesheet" href="/css/card.css">
		<link rel="stylesheet" href="/css/SearchHotel.css" type = "text/css">
		<script src="/res/js/commons.js"></script>
		<script src="/res/js/Reservation_Payment.js"></script>
		
		</head>
<body>	
	<c:import url="/header" />
	
	<div class="contain">
		<div class ="new_rsvBox">
			<div class = "rsvStepWrap">
				<div class ="rsvStepList">
					<ul>
						<li class ="step1">
							<img src="/css/shillaUI/rsv_step3_on.png" alt="down" >
						</li>				
					</ul>
				</div>
				<form id="hotel-select" action="/Reservation_Select" method="get">
				<div class =Serch_main>
					<div class ="serchbar">
								<div class="serch_top">
										<div class = "sc" >
										 호텔 또는 도시
										 <input id="choice" class="im" type="hidden" placeholder="호텔을 선택하세요." name ="choice" value="${data.result.H_name}" >
										 </div>
										<div class = "sc2">f</div>
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
										<div class = "sc" id="rv_hotelname">${data.result.H_name}</div>
										<div class = "sc2">
											<a href="#none" >
												<img src="/css/shillaUI/ico_htsearh.png" alt="down" > 
											</a>
										</div>
										<div class = "ch_in"><input id="check_out1"  type='date' name='ch_in'> </div>
										<div class = "day"><span id="day">0</span>박</div>
										<div class = "ch_out">
											<input id="check_out2" type='date' name='ch_out' disabled="disabled">
										</div>
										<div class = "room"  >
										 	<p>1</p>
										 </div>
										<div class = "ad"  >	
											<p>0</p>
										</div>
										<div class = "ch"  > 
											<p>0</p>
										</div>
										<div class = "i_ch"  >
											<p>0</p>
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
			<div class ="people">
					<div class="r_number">
							<div class="con room3">
								<dl>
									<dd>
										<ul>
											<li class="first"><strong class="tit">객실</strong>
												<div class="number">
													<a href="#none" class="minus">감소</a> 
													<span class="num countp">1</span>
													<a href="#none" class="plus ">count</a>
												</div></li>
											<li class="first"><strong class="tit">성인</strong>
												<div class="number">
													<a href="#none" class="minus">감소</a> 
													<span class="num countp">0</span>
													<a href="#none" class="plus ">count</a>
												</div></li>
											<li><strong class="tit">어린이</strong>
												<div class="number">
													<a href="#none" class="minus">감소</a> 
													<span class="num countp">0</span>
													<a href="#none" class="plus ">count</a>
												</div></li>
											<li class="last"><strong class="tit">유아</strong>
												<div class="number">
													<a href="#none" class="minus">감소</a> 
													<span class="num countp">0</span>
													<a href="#none" class="plus ">count</a>
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
		              </div>
		      
				</div>

			
			
		
			<div id = "divP">
				
				<div id = "divP-0" style = "margin-top: 30px;">
					<div class = "divRS-Img1">
						<img src="${data.result.RI_img}">
					</div>
					<div class = "divRS-L">
						<h1 class = "room-title">${data.result.RI_head}</h1>
						<p class = "explanation">${data.result.RI_body}</p>
						<input type="hidden" id="RI_RoomNo" value="${data.result.RI_RoomNo}">
						<input type="hidden" id="H_num" value="${data.result.H_num}">
						<br>
						<br>
						<h2 class = "room-cost">COST : <span id="RI_cost">${data.result.RI_cost}</span> 원</h2>
					</div>
				</div>
				
				
				<div id = "divP-1">
					
					
					<div class = "contan">
			<form name = "resvForm" id = "resvForm" method = "post">
				<div class = "contaner">
					<div class = "contentts">
						<div class = "new_rsvBox">
							<div class = "rsvOptionWrap">
								<dl class = "rsvInfoType">
									<dt class = "infoTit">
										<strong>정보입력</strong>
										<span class = "fRight">
											<span class = "emtext">
											<font color = "#f33333">*</font>
									 			표시 필수 입력사항
											</span>	
										</span>
									</dt>
									<dd class = "formWrap">
										<div class = "colWrap">
											<div class = "col2 colL">
												<div class = "cont">
													<strong class = "fmTit mt0">고객정보</strong>
													<table class ="customerInfo">
														<tbody>
															<tr>
																<th>
																	성명(국문)
																	<font color = "#f33333">*</font>
																</th>
																<td>
																	<div class = "optionList">
																		<input type="text" class="text textResv" style="width: 386px;" id="guestNm" name="guestNm" 
																			   value="${user.CL_Kname}" maxlength="30" autocomplete="off" readonly="readonly">
																	</div>
																</td>
															</tr>
															<tr>
																<th>
																	이메일
																	<font color = "#f33333">*</font>
																</th>
																<td>
																	<div class = "optionList">
																		<input type="text" class="text textResv" style="width: 386px;" id="guestEmail" name="guestEmail" 
																			   value="${user.CL_email}" maxlength="30" autocomplete="off" readonly="readonly">
																	</div>
																</td>
															</tr>
															<tr>
																<th>
																	연락처
																	<font color = "#f33333">*</font>
																</th>
																<td>
																	<div class = "optionList">
																		<input type="text" class="text textResv" style="width: 386px;" id="phno" name="phno" 
																		value="${user.CL_phone}" maxlength="13" autocomplete="off" readonly="readonly" 
																		onkeyup="this.value=this.value.replace(/[^a-z]/gi,'');">
																	</div>
															</tr>
														</tbody>
													</table>
												</div>
												<div class = "cont">
													<div class="fmTitWrap">
														<strong class="fmTit">신라리워즈 포인트 안내</strong>
													</div>
													<div class="holdPointBox">
				                          				<strong>현재 보유 포인트</strong> <span>${user.CL_totalMile} P</span>
				                        			</div>
												</div>
											</div>
											<div class = "col2 colR">
												<div class = "cont">
													<div class="fmTitWrap mt0">
														<strong class = "fmTit">호텔 이용 안내</strong>
													</div>
											
													<ul class = "notiList1">
														<li class = "first">
														체크인은 오후 3시부터이며 체크아웃은 정오 12시까지입니다. 오후 3시 이전 Early check-in 또는 12시 이후 Late check-out 하실 경우 추가 요금이 부과될 수 있습니다.
														</li>
														<li class = "list">
														본 홈페이지 요금은 할인 적용된 요금이며, 카드사 할인 등의 중복 할인 혜택이 적용되지 않습니다.
														</li>
														<li class = "list">
														어린이 동반 고객을 위한 영유아 용품(아기 욕조, 아기 침대, 어린이 베개 및 아동용 배스로브와 슬리퍼)은 객실예약과를 통해 사전 요청 가능하며, 이용 상황에 따라 조기 마감될 수 있습니다. (단, 유모차는 현장에서만 대여 가능합니다.)
														</li>
														<li class = "list">
														투숙객 본인 확인을 위해 체크인 시 신분증을 반드시 제시해 주시기 바랍니다.
														</li>
														<li class = "list">
														자세한 객실안내는 객실예약과(02-2230-3310)로 문의 바랍니다.
														</li>
														<li class = "list">
														<font color = "#f33333">온라인 예약 시 직접 결제가 이루어지지 않으며,</font> 최종 결제는 체크아웃 시 프런트 데스크에서 해주시기 바랍니다.
														</li>
													</ul>
												</div>
											</div>
										</div>
									</dd>
								</dl>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
					
					
				</div>
				
				
				<div id = "divP-2">
					<div id = "divP-2-L">
						<div id = "divP-2-L-Box">
							<div id = "divP-2-L-11" class = "h">총 결제금액</div>
							<div id = "divP-2-L-12" class = "h"><span>0</span>원</div>
							<div id = "divP-2-L-21" class = "h">적립 포인트</div>
							<div id = "divP-2-L-22" class = "h"><span>0</span>원</div>
						</div>
					</div>
					<div id = "divP-2-R">
						<div id = "divP-2-R-T">
							<h1 class = "h" style=" text-align: center;">
											좌측의 가격과 포인트 적립금을 꼭 확인하신 후 예약을 진행하시기 바랍니다.
											<br>고객님의 부주의로 인한 불이익은 저희 호텔에서 책임지지 않습니다.
											<br>예약을 진행하시려면 하단 '예약하기' 버튼을 클릭하십시오.
							</h1>
						</div>
						<div id = "divP-2-R-B">
							<div class = "Modify"><a href="#" style="color: white;">예약하기</a></div>
						</div>
					</div>
				</div>
				
				
			</div>
			
			
			<!-- 여기까지가 객실창 -->
		</div>	
	</div>

<!--lastbar -->
	<div>
		<div class = "lastbar foot">
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
