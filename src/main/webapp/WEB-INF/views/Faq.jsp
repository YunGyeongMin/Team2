<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ,고객문의</title>
	<link rel="stylesheet" href="/css/Faq.css">
    <link rel="stylesheet" href="/css/base.css" type = "text/css">
 	<link rel="stylesheet" href="/css/main.css" type = "text/css">
	<link rel="stylesheet" href="/css/SearchHotel.css" type = "text/css">
	<link rel="stylesheet" href="/css/SearchHotel.css" type = "text/css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="/lib/ckeditor.js"></script>
	<script src="/res/js/Faq.js"></script>	
	<script type="text/javascript">

			function HClick(){
				document.getElementsByClassName("div_tag11")[0].style.display = "block";
				
			}
			function xclick(){
				  document.getElementsByClassName("div_tag11")[0].style.display = "none";
			}
			
		</script>
	<style type="text/css">
		.li-2 {display: none;}
	</style>
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
				<div class="p2-4-1"> Home &gt; FAQ, 고객문의 &gt; <span style="color: #865009; text-decoration: underline;">FAQ, 문의 게시판 </span> </div>
			</h3>
			<br>
			<div class="div2-6 "></div>
			<div class="div2-7"><p class="p2-7">문의게시판 &nbsp;&nbsp; <a href="/Faq2">자주하는 질문</a></p></div>
			<br> <br>
	    <form id="faqsearch">
			<div id="namesearchdiv">
				<div class="div2-8"><input type="text" class="ip1" id="searchinput"></div>
				<button type="submit" class="div-e" >검색</button>
			</div>
			<br><br><br>
		</form>
			<div class="div2-9"></div>
			
		</div>
	</div>
</div>

<script>
	
</script>



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