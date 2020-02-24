<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" >
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Main</title>
		<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
		<link rel="stylesheet" href="/css/base.css" type = "text/css">
		<link rel="stylesheet" href="/css/SearchHotel.css" type = "text/css">
		<link rel="stylesheet" href="/css/main.css" type = "text/css">
		<script src="/res/js/commons.js"></script>
		
		
	</head>
<body>
	<c:import url="/header" />	      
	<form id = "mainform" name = "mainform">
		<div class = "mainset">
				<ul class = "maimg">
					<li>
						<a>
							<img class = "img" src = "/css/Main/main4.jpg">
						</a>
					</li>
				</ul>
			
		</div>
		<div class = "centerhub">  
	
	<!--specialoffer -->   
	         
			<div class = "specialoffer">
				<div class = "sptitle"></div>
				<div class = "specialofferimg">
					<div class = "centerport" style = "overflow: hidden; position: relative;">
						<ul class = "tab" style = "width: 600%; transition-duration: 0s; transform: translate3d(-1200px, 0px, 0px);">
							<li class = "clone" style = "width: 1200px; float: left; display: block;">
								<div class = "slidetype1"></div>
							</li>
							<li class = "active-slide" style = "width: 1200px; float: left; display: block;">
								<div class = "slidetype1">
									<div class = "type1">
										<div class = "offerimg pck">
											<a>
												<img src = "/css/Main/offers1.jpg">
											</a>
										</div>
										<ul>
											<li class = "pck first">
												<a>
													<img src = "/css/Main/offers3.jpg">
												</a>
											</li>
											<li class = "pck">
												<a>
													<img src = "/css/Main/offers4.jpg">
												</a>
											</li>
										</ul>
									</div>
									<div class = "type2">
										<ul>
											<li class = "pck">
												<a>
													<img src = "/css/Main/offers2.jpg">
												</a>
											</li>
											<li class = "pck">
												<a>
													<img src = "/css/Main/offers5.jpg">
												</a>
											</li>
										</ul>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
<!--membership -->
			<div class = "membercase">
				<div class = "membercaseIn">
					<h2 class = "memtitle">
						<img src = "/css/Other/2button/tabmembership.gif">
					</h2>
					<ul class = "memlogo">
						<li class = "first">
							<a>
								<img src = "/css/Other/2button/member1.gif">
							</a>
						</li>
						<li>
							<a>
								<img src = "/css/Other/2button/member2.gif">
							</a>
						</li>
						<li>
							<a>
								<img src = "/css/Other/2button/member3.gif">
							</a>
						</li>
					 </ul>
					<div class = "memdetail">
						<img src = "/css/Other/2button/detail.gif">
						<div class = "detailsee">
							<a href = "/Rewards_BN">
								<img src = "/css/Other/2button/btndetailmore.gif">
							</a>
						</div>
					</div>
					<div class = "join">
						<img src = "/css/Other/2button/detailcard.png">
						<div class = "btnjoin">
							<a href = "/Sign1">
								<img src = "/css/Other/2button/btnjoin.gif">
							</a>
						</div>
					</div>			
				</div>
			</div>
<!--gallery -->
			<div class = "galvideo">
				<div class = "gallery"></div>
			</div>
				<div class = "iframebox">
					<div class = "iframeset">
					 	<iframe src ="https://www.youtube.com/embed/81xxCLvADlU?rel=0&showinfo=0"
					 	width="1200" height="678"></iframe>
					</div>
				</div>
			</div>
		</form>
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