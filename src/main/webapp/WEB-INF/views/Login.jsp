<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 | The Shilla Hotels & Resorts</title>
		<link rel="shortcut icon" href="#">
		
		<link rel="stylesheet" href="/css/main.css" type = "text/css">
		<link rel="stylesheet" href="/css/base.css" type = "text/css">
		<link rel="stylesheet" href="/css/login.css" type = "text/css">
		<link rel="stylesheet" href="/css/SearchHotel.css" type = "text/css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script type="text/javascript" src="/res/js/login.js"></script>
		<script src="/res/js/commons.js"></script>
	 
		<script src="${contextPath}/res/js/cookie.js">
		</script>
		
		
		</head>
<body>	
	<c:import url="/header" />
<!-- login -->
	<c:if test="${not empty cookie.user_check}">
		<c:set value="checked" var="checked"/>
	</c:if>
	<div class = "loginpage">
		<div class = "loginwelcome">
			<div class = "loginbox line">
				<div class = "location rgt">
					<p class = "lote">
						<strong>로그인</strong>
					</p>
				</div>
				<div class = "logintit"></div>
				<div class = "logintop"></div>
				<div class = "loginform">
					<div class = "logbtn">
						
					</div>
					<div class ="infom infomon">
						<form action="/Login" method="post" id = "allbox">
							<div class = "box">
								<div class = "formbox">
									<div id = "idbox">
										<div class = "field">
											<div class = "inputform">
												<div class = "inputid">
													<input type = "text" class = "idinput" id = "CL_ID" name = "CL_ID" placeholder = "신라리워즈 번호 또는 아이디 입력">
												</div>
												<div class = "inputpw">
													<input type ="password" class = "pwinput" id="CL_PW" name="CL_PW" placeholder = "비밀번호 입력">
												</div>
												<div class = "check divcheck">
													<input id = "down" class = "divcheckinput checkwidth" type = "checkbox">
													<label for = "down"> 신라리워즈 번호 또는 아이디 저장 </label>
												</div>
												<div class = "loginbtn">
													<input type="submit" id="lginbtn" name ="submit" alt="lginbtn" value="">
												</div>
											</div>
										</div>
										<div class = "downbtn">
											<a class = "joinbtn" href = "/Sign1">신라리워즈 가입</a>
										</div>
									</div>
								</div>
							</div>
							<div class = "infomod">
								<p>이메일, 연락처 등의 정보가 변경되면 웹사이트에서 회원정보를 수정해주시기 바랍니다.</p>
							</div>
							<div class = "infomod">
								<p>아이디와 비밀번호를 잊어버리신 분은 고객센터로 문의 해주시기 바랍니다.</p>
							</div>
						</form>
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