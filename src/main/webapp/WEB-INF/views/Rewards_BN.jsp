<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Rewards_BN</title>
		<link rel="stylesheet" href="/css/Hotel-Benefits.css">
		<link rel="stylesheet" href="/css/main.css">
		<link rel="stylesheet" href="/css/Lastbar.css">
		<link rel="stylesheet" href="/css/base.css">
		<link rel="stylesheet" href="/css/SearchHotel.css" type = "text/css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="/res/js/commons.js"></script>
		
	
		
	</head>
<body>	
	<c:import url="/header" />
	
		<!-- end : Main -->
		<!-- Section -->
		<div id = "div2">
			<!-- margin 제거 -->
			<div id = "div2-1">
				<!-- 좌측 메뉴 부분 -->
				<div id = "div2-L">
					<div class = "contents">
						<div class = "intro">SHILLA REWARDS</div>
						<div class = "menu">
							<a href = "/Rewards_MS"><p class ="m">신라리워즈 등급 및 포인트</p></a>
							<a href = "/Rewards_RV"><p class ="m">예약 확인/취소</p></a>
							<a href = "/Rewards_BN"><p class ="m-selected">등급별 혜택 보기</p></a>
							<p class ="m"></p>
							<p class ="m"></p>
						</div>
					</div>
				</div>
				<!-- 우측 본문 부분 -->
				<div id = "div2-R">
					<div id = "div2-R-T">회원특전
						<div id = "div2-R-T-R">
						Home > Shilla Rewards > <u class = "color">Benefits</u>
						</div>
					</div>
					<div id = "div2-R-B">
							<div id = "div2-R-B-1A"></div>
							<br>
							<br>
							<div id = "div2-R-B-1B"></div>
							<br>
							<br>
							<div id = "div2-R-B-1C"></div>
							<br>
							<br>
						<div id = "div2-R-B-2">
							<h1 class = "h">회원 특전</h1>
							<p class = "h2">객실 및 식음업장 이용 실적에 따라 등급이 부여되며, 등급에 따른 특별한 혜택을 추가로 받으실 수 있습니다.</p>
							
							<div id = "div2-R-B-2-Grade">
								<div id="div2-R-B-2-S">
									<div id = "div2-R-B-2-typeS">
									실버<br><span class = "Silver">Silver</span>
									</div>
									<div id = "div2-R-B-2-explain">
										<ul class = "ul">
											<li class = "li">기본 적립률 : 객실 이용 금액 3%</li>
											<li class = "li">투숙 시 1만 포인트 사용권 제공 : 연 1회 제공, 서울/제주 각 1매, 정규 예약을 통한 이용에 한정, 유효기간 내 사용(이월 사용 불가), 타쿠폰 및 할인 서비스 등과 중복사용 불가</li>
										</ul>
									</div>
								</div>
								<div id="div2-R-B-2-G">
									<div id = "div2-R-B-2-typeG">
									골드<br><span class = "Gold">Gold</span>
									</div>
									<div id = "div2-R-B-2-explain">
										<ul class = "ul">
											<li class = "li">기본 적립률 + 포인트 추가 적립 1%</li>
											<li class = "li">투숙 시 멤버스 스위트 박스 제공</li>
											<li class = "li">식음업장 이용 금액 5% 할인</li>
											<li class = "li">투숙 시 Laundry 이용 금액 10% 할인</li>
											<li class = "li">투숙 시 무료 Laundry 서비스 (서울신라호텔: 셔츠 1개 다림질, 제주신라호텔 : 셔츠 1개 세탁)</li>
											<li class = "li">객실 연 3회 업그레이드(1회 限 스위트 객실 업그레이드 제공)</li>
											<li class = "li">72시간 예약 개런티</li>
										</ul>
									</div>
								</div>
								<div id="div2-R-B-2-D">
									<div id = "div2-R-B-2-typeD">
									다이아몬드<br><span class = "Diamond">Diamond</span>
									</div>
									<div id = "div2-R-B-2-explain">
										<ul class = "ul">
											<li class = "li">기본 적립률 + 포인트 추가 적립 2%</li>
											<li class = "li">투숙 시 멤버스 스위트 박스 제공</li>
											<li class = "li">식음업장 이용 금액 10% 할인</li>
											<li class = "li">투숙 시 Laundry 이용 금액 15% 할인</li>
											<li class = "li">투숙 시 무료 Laundry 서비스 (서울신라호텔: 정장 1벌, 셔츠 1개 다림질, 제주신라호텔 : 상,하의 각 1개 세탁)</li>
											<li class = "li">객실 연 5회 업그레이드(1회 限 스위트 객실 업그레이드 제공)</li>
											<li class = "li">Express Check-In/Check-Out</li>
											<li class = "li">Early Check-In,(12시) Late Check-out (15시) (호텔별 예약 상황 등에 따라 서비스 제공이 제한될 수 있습니다.)</li>
											<li class = "li">서울/제주신라호텔 라운지 무료 이용(동반 1인까지)</li>
											<li class = "li">회원의 생일 투숙 시 케이크 제공</li>
											<li class = "li">48시간 예약 개런티</li>
										</ul>
									</div>
								</div>
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