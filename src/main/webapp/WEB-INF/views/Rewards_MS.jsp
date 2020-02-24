<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Rewards_MS</title>
      <link rel="stylesheet" href="/css/Hotel-rewards.css">
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
                     <a href = "/Rewards_MS"><p class ="m-selected">신라리워즈 등급 및 포인트</p></a>
                     <a href = "/Rewards_RV"><p class ="m">예약 확인/취소</p></a>
                     <a href = "/Rewards_BN"><p class ="m">등급별 혜택 보기</p></a>
                     <p class ="m"></p>
                     <p class ="m"></p>
                  </div>
               </div>
            </div>
            <!-- 우측 본문 부분 -->
            <div id = "div2-R">
               <div id = "div2-R-T">신라리워즈 등급 및 포인트
                  <div id = "div2-R-T-R">
                  Home > My Page > <u class = "color">신라리워즈 등급 및 포인트</u>
                  </div>
               </div>
               <div id = "div2-R-B">
                  <div id = "div2-R-B-1"><span class = "bold">${sessionScope.USER.CL_Kname}</span> 님의 신라리워즈 등급 및 포인트에 대한 안내입니다.</div>
                  <div id = "div2-R-B-2">
                     <div id = "div2-R-B-2-L">
                        <div id = "div2-R-B-2-L-T">신라리워즈 회원등급</div>
                        <div id = "div2-R-B-2-L-B">${sessionScope.USER.CL_Mgrade}</div>
                     </div>
                     <div id = "div2-R-B-2-M">
                        <div id = "div2-R-B-2-M-T">신라리워즈 번호</div>
                        <div id = "div2-R-B-2-M-B">${sessionScope.USER.CL_RWnum}</div>
                     </div>
                     <div id = "div2-R-B-2-R">
                        <div id = "div2-R-B-2-R-T">신라리워즈 포인트</div>
                        <div id = "div2-R-B-2-R-B">${sessionScope.USER.CL_resMile}</div>
                     </div>
                  </div>
                  <br>
                  <br>
                  <br>
                  <br>
                  <div id = "div2-R-B-3">
                     <div id = "div2-R-B-3-L">
                     	<img src="/css/imgF/Reward1.png" alt = "img">
                     </div>
                     <div id = "div2-R-B-3-R1">
                     	<img src="/css/imgF/Reward2.gif" alt = "img">
                     </div>                   
                     <div id = "div2-R-B-3-R2">
                     	<a href = "/Rewards_BN" target = "_blank">
                     	<img src="/css/imgF/Reward3.gif" alt = "img">
                     	</a>
                     </div>
                  </div>
                  <br>
<!--                  <div id = "div2-R-B-4">
                     <div id = "div2-R-B-4-T">
                     	포인트 적립 내역
                     </div>
                     <br>
                     <div id = "div2-R-B-4-X">
                        <div class = "Rw-ctA">날짜</div>
                        <div class = "Rw-ctA">결제금액</div>
                        <div class = "Rw-ctA">적립포인트</div>
                     </div>
                     <div id = "div2-R-B-4-Y">
                        <div class = "Rw-ctA">2020-03-22</div>
                        <div class = "Rw-ctA">2,000,000</div>
                        <div class = "Rw-ctA">60,000</div>
                     </div>
                     
                  </div> -->
                  <br>
                  
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