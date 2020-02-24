<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>가입완료 | 신라리워즈 가입 | The Shilla Hotels & Resorts</title>
		<link rel="shortcut icon" href="#">
		
		<link rel="stylesheet" href="/css/main.css" type = "text/css">
		<link rel="stylesheet" href="/css/base.css" type = "text/css">
		<link rel="stylesheet" href="/css/join.css" type = "text/css">
		<link rel="stylesheet" href="/css/SearchHotel.css" type = "text/css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script src="/res/js/commons.js"></script>
		

		
		</head>
<body>	
	<c:import url="/header" />
	
<!--member information input-->
		<div class = "joincontain">
			<form name = "joinform">
				<div class = "container">
					<div class = "contents">
						<div class = "ctnjoin joiner3">
							<div class = "location">
								<p class = "lote">
									 > 
									<strong>신라리워즈 가입</strong>
								</p>
							</div>
							<div class = "rewardsjoin">
								<div class = "rewardsjoinimg"></div>
							</div>
							<div class = "joinstep">
								<ul class = "order">
									<li class = "argee">
<!--약관동의 -->							<span></span> 
									</li>
									<li class = "memberinform">
<!--회원정보입력 -->						<span></span>
									</li>
									<li class = "joinend on">
<!--가입완료-->							<span></span>
									</li>
								</ul>
							</div>
<!--가입자 확인-->
							<div class = "top">
								<p class ="info1">${sessionScope.CL_Kname} 님께서는 신라리워즈에 정상적으로 가입되셨습니다.</p>
							</div>
							<div class = "memglobox bold3px">
								<ul class = "rewardbox">
									<li>
										<img src="/css/Other/8joinclear/joinshrwnum1.png">
									</li>
									<li class = "rewnum">${sessionScope.CL_RWnum}</li>
								</ul>
								<ul class = "rewardbox">
									<li>
										<img src="/css/Other/8joinclear/joinshrwnum2.png">
									</li>
									<li class = "rewnum">${sessionScope.CL_ID}</li>
								</ul>
								<div class = "graybox">
									신라리워즈 번호는 가입 시 기재하신 이메일로도 발송되었습니다.
									<br>
									로그인 하신 후 다양한 혜택과 서비스를 경험해보시기 바랍니다.
									<div class = "join">
									<br>
									<br>
									실버 회원님을 위한 1만 포인트가 발급되었습니다.
									<br>
									로그인 후 마이페이지 > 쿠폰함에서 확인 가능합니다.
									<br>
									* 해당 쿠폰은 모바일 앱에서 사용 가능합니다.
									</div>
								</div>
							</div>
							<br>
							<div class = "btnloginclear">
								<a class = "btnloclmain" href="/Login">로그인</a>
							</div>
						</div>
					</div>
				</div>
			</form>
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