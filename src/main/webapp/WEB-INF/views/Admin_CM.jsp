<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>회원관리 </title>
		<link rel="stylesheet" href="/css/Statement.css">
		<link rel="stylesheet" href="/css/main.css" type = "text/css">
		<link rel="stylesheet" href="/css/base.css" type = "text/css">
		<link rel="stylesheet" href="/css/SearchHotel.css" type = "text/css">
		<link rel="stylesheet" href="/css/Lastbar.css">
		<link rel="stylesheet" href="/css/Hotel-admin.css">
		<script type="text/javascript " src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script type="text/javascript" src="/res/js/admin_CM.js"></script>
		<script type="text/javascript">

			function HClick(){
				document.getElementsByClassName("div_tag11")[0].style.display = "block";
				
			}
			function xclick(){
				  document.getElementsByClassName("div_tag11")[0].style.display = "none";
			}
			
		</script>
	
	
		
	</head>

	<body class = "mainbody">
	   <div class="div_tag11">
	         	 <div class="div1_dididi" >
	            <p class="p1_dididi">호텔을 선택하면 해당 사이트로 이동합니다.</p> 
	            <div class="div1-1_dididi" onclick="xclick()"></div>
	          </div>
	          <div class="div2_dididi">
	            <div class="div2-1_dididi">
	               <div class="div2-2_dididi">
	                
	               </div>
		                <div class="div2-3_dididi">
		                  <div class="div2-3-1_dididi">
		                      <div class="div2-3-2_dididi"></div>
		                  </div>
		                   <div class="div2-3-3_dididi"> <a href="http://www.shilla.net/seoul/index.do?lang=ko" class="h5_dididi">서울신라호텔</a> </div>
		                    <div class="div2-3-3_dididi"> <a href="http://www.shillastay.com/gwanghwamun/index.do?lang=ko" class="h5_dididi">신라스테이 광화문</a> </div>
		                     <div class="div2-3-3_dididi"> <a href="http://www.shillastay.com/mapo/index.do?lang=ko" class="h5_dididi">신라스테이 마포</a> </div>
		                     <br><br>
		                      <div class="div2-3-4_dididi"> <a href="http://www.shillastay.com/seodaemun/index.do?lang=ko" class="h5-1_dididi">신라스테이 서대문</a> </div>
		                </div>
		                
	                <div class="div2-4_dididi">
	                      <div class="div2-3-1_dididi">
		                      <div class="div2-3-8_dididi"></div>
		                  </div>
		                   <div class="div2-3-3_dididi"> <a href="http://www.shillastay.com/yeoksam/index.do?lang=ko" class="h5_dididi">신라스테이 역삼</a> </div>
		                    <div class="div2-3-3_dididi"> <a href="http://www.shillastay.com/seocho/index.do?lang=ko" class="h5_dididi">신라스테이 서초</a> </div>
		                     <div class="div2-3-3_dididi"> <a href="http://www.shillastay.com/guro/index.do?lang=ko" class="h5_dididi">신라스테이 구로</a> </div>
	                      
	                </div>
	                <div class="div2-5_dididi">
	                     <div class="div2-3-1_dididi">
		                      <div class="div2-3-9_dididi"></div>
		                  </div>
		                   <div class="div2-3-3_dididi"> <a href="http://www.shillastay.com/dongtan/index.do?lang=ko" class="h5_dididi">신라스테이 동탄</a> </div>
		                    <div class="div2-3-3_dididi"> <a href="http://www.shillastay.com/cheonan/index.do?lang=ko" class="h5_dididi">신라스테이 천안</a> </div>
		                     <div class="div2-3-3_dididi"> <a href="http://www.shillastay.com/ulsan/index.do?lang=ko" class="h5_dididi">신라스테이 울산</a> </div>
		                     <br><br>
		                      <div class="div2-3-4_dididi"> <a href="http://www.shillastay.com/haeundae/index.do?lang=ko" class="h5-1_dididi">신라스테이 해운대</a> </div>
		                <div class="div2-3-5_dididi"> <a href="http://www.shillastay.com/jeju/index.do?lang=ko" class="h5-1_dididi">신라스테이 제주</a> </div>
		               <div class="div2-3-5_dididi"> <a href="http://www.shilla.net/jeju/index.do?lang=ko" class="h5-1_dididi">제주신라호텔</a> </div>
		               
	               
	       				     </div>
	            
	               </div>
	           </div>
	              <div class="backgraund" style="display: block;" ></div>
	         </div>
	         
<!--top -->
		<div class = "topbg ">
			<div class = "head">
				<div class = "header">
					<h1 class = "logo">
						<a href="/Main"></a>
					</h1>
					<span class = "loginArea">
						<c:choose>
		                     <c:when test="${sessionScope.USER != null}">
		                        <a href = "/Logout"> 로그아웃 </a>
		                        <a href = "/Profile"> 프로필 </a>
		                     <c:if test = '${sessionScope.USER.CL_membertype eq "staff"}'>
		                                 <a href = "/Admin_CL"> 관리자 </a>
		                         </c:if>
		                     </c:when>
		                     <c:otherwise>
		                        <a href = "/Login"> 로그인 </a>
		                           <a href = "/Sign1"> 회원가입 </a>
		                     </c:otherwise>
                 	    </c:choose>
					</span>
				
					<div class = "tople1" >		<!--호텔찾기 -->
					
						<a class = "btn" href="#none" onclick="HClick()"></a>
						
						
					</div>
					<div class = "tople2">		<!--예약 -->
						<a href="/Reservation"></a>
					</div>
					<div class = "toprimen">
						<ul>
							<li id = "list">		<!--호텔신라 소개 -->
								<span class = "right1">
								<a href="/Overview_Intro"></a>
								</span>
							</li>
							<li id = "list2">		<!--고객문의 -->
								<span class = "right2">
								<a href="/Contactus_Add"></a>
								</span>
							</li>
							<li id = "list3"><!--신라리워즈 -->
								<span class = "right3">
									<a href="/Rewards_RV"></a>
								</span>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	         

	
<div class="container">

	<div id="div2-R-T">

		<a class ="menu_top" href = "/Admin_CL">회원목록</a>
		<a class ="menu_top" href = "/Admin_SL">직원목록</a>
							 
	</div>
	<div id = "div2-R">
					
			<div id = "div2-R-B">	
						<div id = "div2-R-B-2">
							<div class = "p">
								<input id="CL_Kname1" type= "text" class = "profile" placeholder = "이름" readonly="readonly" 
								style="border: 1px solid #cccccc;
								       width: 124.98px;
								       height: 42px;
								       text-align: center;
								       background-color: #ffffff;
								       border-top-width:  0px;
								       border-left-width:  0px;
								       border-right-width:  0px;
								       border-bottom-color: #3c2f26;
								       border-bottom-width: 3px;
								       font-weight: bold;
								       font-size: 22px;
								       margin-top: 0px;
								       margin-bottom: 7px;
								 ">
							님의 정보입니다.
							</div>
						</div>
						
						<div id = "div2-R-B-4">
							<h1 class = "h">About Membership & Mileage</h1>
							<div id = "div2-R-B-4-A-First">
								<div id = "div2-R-B-4-A-L">멤버십 안내</div>
								<div id = "div2-R-B-4-A-R">
									<a href= "/Rewards_BN" target = "_blank">바로가기</a>
								</div>	
							</div>
							<div id = "div2-R-B-4-A-Middle">
								<div id = "div2-R-B-4-A-L">멤버십 등급</div>
								<div id = "div2-R-B-4-A-R-radiobutton">
									<!-- <select name="Grade" id="CL_Mgrade">
										<option value="SILVER">SILVER</option>
										<option value="GOLD">GOLD</option>
										<option value="DIAMOND">DIAMOND</option>									
									</select> -->

									<input id="CL_Mgrade" type= "text" class = "profile" placeholder = "이름" readonly="readonly" style = "border: 1px solid #cccccc; ">
									
<!-- 									<input type= "radio" class = "radiobtn" name="Grade" value="SILVER" checked /> <span class = "milegrade">SILVER</span> -->
<!-- 									<input type= "radio" class = "radiobtn" name="Grade" value="GOLD" /> GOLD -->
<!-- 									<input type= "radio" class = "radiobtn" name="Grade" value="DIAMOND" /> DIAMOND -->
								</div>	
							</div>
							<div id = "div2-R-B-4-A-Final">
								<div id = "div2-R-B-4-A-L">마일리지 금액</div>
								<div id = "div2-R-B-4-A-R-inputtag">
									<input id="CL_resMile" type= "number" class = "profile" placeholder = "보유금액" readonly="readonly" style = "border: 1px solid #cccccc; ">
								</div>	
							</div>
							<!-- <div id = "ModifyManual">
								<div id = "Modify_profile"> 정보 수정하기</div>
								<div id = "Modify_completed"> 수정완료</div>
							</div> -->
						
						</div>
						
						<div id = "div2-R-B-3">
							<h1 class = "h">Member Profile</h1>
								<!-- 왼쪽 인적사항 부분 -->
								<div id = "div2-R-B-3-left">
									 <div id = "divA-F">
										<div id = "divA-L">이름(한글)</div>
										<div id = "divA-R">
											<input id="CL_Kname" type= "text" class = "profile" placeholder = "이름" readonly="readonly" style = "border: 1px solid #cccccc; ">
										</div>	
									</div>
									
									<div id = "divA">
										<div id = "divA-L">ID</div>
										<div id = "divA-R">
											<input id="CL_ID" type= "text" class = "profile" placeholder = "이름" readonly="readonly" style = "border: 1px solid #cccccc;">
										</div>	
									</div>
									<div id = "divA">
										<div id = "divA-L">생년월일</div>
										<div id = "divA-R">
											<input id="CL_birth" type= "text" class = "profile" placeholder = "이름" readonly="readonly" style = "border: 1px solid #cccccc;">
										</div>	
									</div>
									<div id = "divA">
										<div id = "divA-L">연락처</div>
										<div id = "divA-R">
											<input type= "text" class = "profile1" placeholder = "010" readonly="readonly" style = "border: 1px solid #cccccc;"> - 
											<input id="CL_phone" type= "text" class = "profile2" placeholder = "이름" readonly="readonly" style = "border: 1px solid #cccccc;">
										</div>	
									</div>
									<div id = "divA">
										<div id = "divA-L">E-mail</div>
										<div id = "divA-R">
											<input id="CL_email" type= "text" class = "profile" placeholder = "이름" readonly="readonly" style = "border: 1px solid #cccccc;">
										</div>	
									</div>
								</div>
								
								<!-- 아래쪽 주소 부분 -->
								<div id = "div2-R-B-3-bottom">
									<div id = "divA-add">
										<div id = "divA-L-add">주소</div>
										<div id = "divA-R-add">
											<input id="CL_postcode" type= "text" class = "profile" placeholder = "우편번호" readonly="readonly" style = "border: 1px solid #cccccc;">
											<input id="CL_address" type= "text" class = "profile" placeholder = "우편번호" readonly="readonly" style = "border: 1px solid #cccccc;">
											<input id="CL_detailaddress" type= "text" class = "profile" placeholder = "우편번호" readonly="readonly" style = "border: 1px solid #cccccc;">
										</div>	
									</div>
						<!--	<div class = "Modify">내용 수정하기</div> -->
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