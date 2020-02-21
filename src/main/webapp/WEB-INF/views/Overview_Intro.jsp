<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Overview_Intro</title>
		<link rel="stylesheet" href="/css/Hotel-Overview.css">
		<link rel="stylesheet" href="/css/main.css">
		<link rel="stylesheet" href="/css/Lastbar.css">
		<link rel="stylesheet" href="/css/base.css">
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
						<div class = "intro">호텔신라 소개</div>
						<div class = "menu">
							<a href = "/Overview_Intro"><p class ="m-selected">개요</p></a>
							<a href = "/Overview_Seoul"><p class ="m">서울신라호텔</p></a>
							<a href = "/Overview_Jeju"><p class ="m">제주신라호텔</p></a>
							<p class ="m"></p>
							<p class ="m"></p>
						</div>
					</div>
				</div>
				<!-- 우측 본문 부분 -->
				<div id = "div2-R">
					<div id = "div2-R-T">개요
						<div id = "div2-R-T-R">
						Home > About the Shilla > <u class = "color">Overview</u>
						</div>
					</div>
					<div id = "div2-R-B">
						<div id = "div2-R-B-2"><!-- 사진 --></div>
						
						<div id = "div2-R-B-3">
						<h1 class = "h">Samsung Group Affiliate</h1>
						<p class = "p">
						호텔신라는 수많은 국빈의 방문과 국제행사를 치러내며 '삼성 그룹을 대표하는 얼굴', '한국을 대표하는 호텔' 로서 자부심과 책임감을 가지고 우리나라 서비스 산업의 견인차 역할을 해오고 있습니다.
						<br>
						<br>
						호텔신라는 천년 역사와 함께 가장 찬란한 문화예술의 꽃을 피웠던 신라 왕조의 이름에서 유래하였으며, 삼성그룹 故 이병철 초대 회장의 뜻에 따라 1979년 3월 개관하였습니다.
						</p>
						</div>
						
						<div id = "div2-R-B-4">
						<h1 class = "h">The Best Hospitality Company</h1>
						<p class = "p">
						호텔신라는 '최고의 호스피탈리티 기업'을 목표로 오랜 세월동안 품위와 전통을 유지하며 고객들의 마음을 사로잡아 왔습니다.
						<br>
						LHW 가입을 통해 세계 최고의 럭셔리 호텔들과 어깨를 나란히 하는가 하면 전통이라는 지붕 위에 모더니즘적 디자인 요소를 가미, 삶의 여유와 품격을 한층 높여 주는 프리미엄 라이프 스타일 공간으로 변화를 거듭해 왔습니다.
						<br>
						호텔신라는 앞으로도 끊임없는 창조적 혁신과 도전을 바탕으로 차별화된 최상의 가치를 선사하는 글로벌 호스피탈리티 명문 기업으로 성장할 것을 약속드립니다.
						</p>
						</div>
						
						<div id = "div2-R-B-5">
						<h1 class = "h">Vision</h1>
						<p class = "p">
						Premium Lifestyle Leading Company
						<br>
						최고의 품격과 신뢰를 바탕으로 고객이 꿈꾸는 라이프스타일을 제공하는 글로벌 선도기업
						</p>
						</div>
						
						<div id = "div2-R-B-6">
						<h1 class = "h">Mission</h1>
						<p class = "p">
						우리는 최고의 라이프스타일 전문가로서 더 많은 인류에게 품격과 자부심을 경험케 한다.
						</p>
						</div>
						
						<div id = "div2-R-B-7"></div>
						
						<div id = "div2-R-B-8">
						<h1 class = "h">Core Value Pride of the Shilla</h1>
						<ul class = "p">
							<li>모든 사업에 최고를 지향합니다</li>
							<li>모든 업무에서 혁신을 추구합니다</li>
							<li>모든 고객에게 정성을 다합니다</li>
							<li>모든 신라인은 서로를 존중합니다</li>
						</ul>
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