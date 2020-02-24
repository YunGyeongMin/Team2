<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Overview_Seoul</title>
		<link rel="stylesheet" href="/css/Hotel-Seoul.css">
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
						<div class = "intro">호텔신라 소개</div>
						<div class = "menu">
							<a href = "/Overview_Intro"><p class ="m">개요</p></a>
							<a href = "/Overview_Seoul"><p class ="m-selected">서울신라호텔</p></a>
							<a href = "/Overview_Jeju"><p class ="m">제주신라호텔</p></a>
							<p class ="m"></p>
							<p class ="m"></p>
						</div>
					</div>
				</div>
				<!-- 우측 본문 부분 -->
				<div id = "div2-R">
					<div id = "div2-R-T">서울신라호텔
						<div id = "div2-R-T-R">
						Home > About the Shilla > <u class = "color">서울신라호텔</u>
						</div>
					</div>
					<div id = "div2-R-B">
						<div id = "div2-R-B-2"></div>
						<div id = "div2-R-B-3"></div>
						<br>
						<br>
						<a id = "Seoul-link" href="http://www.shilla.net/seoul/index.do" target = "_blank"></a>
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