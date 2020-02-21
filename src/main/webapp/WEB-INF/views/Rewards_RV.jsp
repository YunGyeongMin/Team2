<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Hotel-rewards</title>
		<link rel="stylesheet" href="/css/Hotel-admin.css">
		<link rel="stylesheet" href="/css/main.css">
		<link rel="stylesheet" href="/css/Lastbar.css">
		<link rel="stylesheet" href="/css/base.css">
		<link rel="stylesheet" href="/css/Hotel-rewards-rsv.css">
		<link rel="stylesheet" href="/css/Hotel-rewards.css">
		<link rel="stylesheet" href="/css/SearchHotel.css" type = "text/css">
		
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
							<a href = "/Rewards_RV"><p class ="m-selected"">예약 확인/취소</p></a>
							<a href = "/Rewards_BN"><p class ="m">등급별 혜택 보기</p></a>
							<p class ="m"></p>
							<p class ="m"></p>
						</div>
					</div>
				</div>
				<!-- 우측 본문 부분 -->
				<div id = "div2-R">
					<div id = "div2-R-T">예약 확인/취소
						<div id = "div2-R-T-R">
						Home > rewards > <u class = "color">resevation</u>
						</div>
					</div>
					<div id = "div2-R-B">	
						<div class = "div2-top">
							<div id = "div2-top-1">객실 예약 내역을 확인하실 수 있습니다.</div>
								<div class="div-mid-wrap">
									
									<div class="rsv_check_box">객실/패키지 예약
									</div>
									<div> <!--  패키지 예약 박스-->
										
										<div class="rsv_box_top">
											<div class="T-box1">예약번호</div>
											<div class="T-box2">호텔</div>
											<div class="T-box3">객실이름</div>
											<div class="T-box4">객실 수</div>
											<div class="T-box5">체크인/<br>체크아웃</div>
											<div class="T-box7">예약상태</div>
											<div class="T-box8">예약취소</div>
										
										</div>
										<div class="rsv_box_bottom">
											<div class="box1">132</div>
											<div class="box2">서울</div>
											<div class="box3">Rewards Fontana Milano 1915</div>
											<div class="box4">1</div>
											<div class="box5">200204<br>200216</div>
											<div class="box7">예약완료</div>
											<div class="box8">
												<button id = "rsvcancel" type = "button" class = "button">예약취소</button>
											</div>
											
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