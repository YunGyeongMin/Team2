<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Profile</title>
      <link rel="stylesheet" href="/css/Hotel-Profile.css">
      <link rel="stylesheet" href="/css/main.css">
      <link rel="stylesheet" href="/css/Lastbar.css">
      <link rel="stylesheet" href="/css/base.css">
      <link rel="stylesheet" href="/css/SearchHotel.css" type = "text/css">
      
      <script type="text/javascript " src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
        <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
         <script type="text/javascript" src="/res/js/profile.js"></script>
    
      
      <script type="text/javascript">

         function HClick(){
            document.getElementsByClassName("div_tag11")[0].style.display = "block";
         }
         function xclick(){
              document.getElementsByClassName("div_tag11")[0].style.display = "none";
         }
         
         function sample6_execDaumPostcode() {
              new daum.Postcode({
                  oncomplete: function(data) {
                      // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                      // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                      // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                      var addr = ''; // 주소 변수
                      var extraAddr = ''; // 참고항목 변수

                      //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                      if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                          addr = data.roadAddress;
                      } else { // 사용자가 지번 주소를 선택했을 경우(J)
                          addr = data.jibunAddress;
                      }

                      // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                      if(data.userSelectedType === 'R'){
                          // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                          // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                          if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                              extraAddr += data.bname;
                          }
                          // 건물명이 있고, 공동주택일 경우 추가한다.
                          if(data.buildingName !== '' && data.apartment === 'Y'){
                              extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                          }
                          // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
//                           if(extraAddr !== ''){
//                               extraAddr = ' (' + extraAddr + ')';
//                           }
                          // 조합된 참고항목을 해당 필드에 넣는다.
//                           document.getElementById("sample6_extraAddress").value = extraAddr;
                      }
//                       } else {
//                           document.getElementById("sample6_extraAddress").value = '';
//                       }

                      // 우편번호와 주소 정보를 해당 필드에 넣는다.
                      document.getElementById('CL_postcode').value = data.zonecode;
                      document.getElementById("CL_address").value = addr;
                      // 커서를 상세주소 필드로 이동한다.
                      document.getElementById("CL_detailaddress").focus();
                  }
              }).open();
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
                  <div class = "intro">PROFILE</div>
                  <div class = "menu">
                     <a href = "/Profile"><p class ="m-selected">프로필 수정/관리</p></a>
                     <p class ="m"></p>
                     <p class ="m"></p>
                     <p class ="m"></p>
                     <p class ="m"></p>
                  </div>
               </div>
            </div>
            <!-- 우측 본문 부분 -->
            <div id = "div2-R">
               <div id = "div2-R-T">프로필 관리
                  <div id = "div2-R-T-R">
                  Home > About the Shilla > <u class = "color">Profile</u>
                  </div>
               </div>
               <div id = "div2-R-B">   
                  <div id = "div2-R-B-2">
                  <h1 class = "h">
                     <p class = "p">
                     <span class = "border1">${sessionScope.USER.CL_Kname}</span>  
                     님의 정보입니다.
                     </p>
                  </h1>
                  
                  </div>
                  <div id = "div2-R-B-3">
                  <h1 class = "h">Guest Profile</h1>
                  <p class = "h2">※입력된 정보가 사실과 다를 시 불이익이 있을 수 있습니다.</p>
                     <!-- 왼쪽 인적사항 부분 -->
                     <div id = "div2-R-B-3-left">
                        <div id = "divA-F">
                           <div id = "divA-L">ID</div>
                           <div id = "divA-R">
                              <input type= "text" id = "CL_ID" class = "profile"  disabled style = "border: 1px solid #cccccc;" value="${sessionScope.USER.CL_ID}">
                           </div>
                        </div>
                        <div id = "divA">
                           <div id = "divA-L">이름(한글)</div>
                           <div id = "divA-R">
                              <input type= "text" id = "CL_Kname" class = "profile" disabled style = "border: 1px solid #cccccc;" value="${sessionScope.USER.CL_Kname}">
                           </div>   
                        </div>
                        <div id = "divA">
                           <div id = "divA-L">생년월일</div>
                           <div id = "divA-R">
                              <input type= "text" id = "CL_birth" class = "profile" readonly="readonly" style = "border: 1px solid #cccccc;" value="${sessionScope.USER.CL_birth}">
                           </div>   
                        </div>
                        <div id = "divA">
                           <div id = "divA-L">연락처</div>
                           <div id = "divA-R">
                              <input type= "text" class = "profile1"  readonly="readonly" style = "border: 1px solid #cccccc;" value="010"> -
                              <input type= "text" maxlength="8" id = "CL_phone" class = "profile2"  readonly="readonly" style = "border: 1px solid #cccccc;" value="${sessionScope.USER.CL_phone}">
                           </div>   
                        </div>
                        <div id = "divA">
                           <div id = "divA-L">E-mail</div>
                           <div id = "divA-R">
                              <input type= "email" id = "CL_email" class = "profile"  readonly="readonly" style = "border: 1px solid #cccccc;" value="${sessionScope.USER.CL_email}">
                           </div>   
                        </div>
                        <div id = "divA">
                           <div id = "divA-L">비밀번호</div>
                           <div id = "divA-R">
                              <input type= "password" maxlength="20" id = "CL_PW" class = "profile" readonly="readonly" style = "border: 1px solid #cccccc;" value="${sessionScope.USER.CL_PW}" >
                           </div>   
                        </div>
                     </div>
                     <!-- 아래쪽 주소 부분 -->
                     <div id = "div2-R-B-3-bottom">
                        <div id = "divA-add">
                              <div id = "divA-L-add">주소
                              </div>
                              <div id = "divA-R-add">
                                 <input type="text" id="CL_postcode" class = "profile" name = "CL_address" readonly="readonly" style = "border: 1px solid #cccccc;" value="${sessionScope.USER.CL_postcode}">
                                 <input type="button" onclick="sample6_execDaumPostcode()" class = "addsch2" value="주소 찾기" style="height: 32px; margin-top: 8px;" disabled="disabled"><br>
                                 <input type="text" id="CL_address" class = "profile" name = "CL_address" readonly="readonly" style = "border: 1px solid #cccccc;" value="${sessionScope.USER.CL_address}"><br>
                                 <input type="text" id="CL_detailaddress" class = "profile"  name = "CL_address" readonly="readonly" style = "border: 1px solid #cccccc;" value="${sessionScope.USER.CL_detailaddress}">
                              </div>   
                        </div>
                        <div id = "ModifyManual">
                           <div style=" margin-left:  auto; margin-right:  auto;text-align:  center;">
                              <button type="submit" id="Modify_profile" style = "border : 0px; padding : 0px; height: 35px;">정보 수정하기</button>
                           </div>
                           <div style=" margin-left:  auto; margin-right:  auto;text-align:  center;">
                              <button type="submit" id="Modify_completed" style = "border : 0px; padding : 0px; height: 35px;">수정완료</button>
                           </div>
                        </div>
                     </div>
                  <br>
                  <br>
               </div>
               <div id = "div2-R-B-4">
<!--                   <h1 class = "h">Change Your Password</h1> -->
<!--                   <p class = "h2">주기적인 비밀번호 변경으로 개인정보 손실을 방지하세요.</p> -->
<!--                         <div id = "div2-R-B-4-A-F"> -->
<!--                         <div id = "div2-R-B-4-A-L">현재 비밀번호</div> -->
<!--                         <div id = "div2-R-B-4-A-R-pwd"> -->
<!--                            <input type = "password" maxlength = "20" class = "pw0" id = "CL_PW" name = "CL_PW" placeholder = "현재 비밀번호를 입력하세요." style = "border: 1px solid #cccccc;"> -->
<!--                         </div>    -->
<!--                      </div> -->
<!--                      <div id = "div2-R-B-4-A"> -->
<!--                         <div id = "div2-R-B-4-A-L">새 비밀번호</div> -->
<!--                         <div id = "div2-R-B-4-A-R-pwd"> -->
<!--                            <input type = "password" maxlength = "20" class = "pw123" id = "CL_newPW" name = "CL_newPW" placeholder = "새 비밀번호를 입력하세요." style = "border: 1px solid #cccccc;"> -->
<!--                         </div>    -->
<!--                      </div> -->
<!--                      <div id = "div2-R-B-4-A"> -->
<!--                         <div id = "div2-R-B-4-A-L">새 비밀번호 확인</div> -->
<!--                         <div id = "div2-R-B-4-A-R-pwd"> -->
<!--                            <input type = "password" maxlength = "20" class = "pw456" id = "CL_newPW2" name = "CL_newPW2" placeholder = "새 비밀번호를 다시 한번 입력하세요." style = "border: 1px solid #cccccc;"> -->
<!--                         </div>    -->
<!--                      </div> -->
<!--                      <div id = "div2-R-B-4-A"> -->
<!--                         <div id = "div2-R-B-4-A-L">주의사항</div> -->
<!--                         <div id = "div2-R-B-4-A-R">8~20자의 영문,숫자를 혼용하여 입력하시오. -->
<!--                         </div>    -->
<!--                      </div> -->
<!--                      <div style=" margin-left:  auto; margin-right:  auto;text-align:  center;"> -->
<!--                         <button type="submit" id="Modify_pwd" style = "border : 0px; padding : 0px; height: 35px;">변경하기</button> -->
<!--                      </div> -->

                  </div>
                  <div id = "div2-R-B-5">
                     <h1 class = "h">Retirement</h1>
                     <p class = "h2">신청 전 아래 유의사항을 꼭 확인하시기 바랍니다.</p>
                     
                     <div id = "div2-R-B-5-info">
                        <p class = "h2">- 회원탈퇴를 신청하시면 번복이 불가능하며 보유하신 모든 포인트는 소멸됩니다.</p>
                        <br>
                        <p class = "h2">- 개인정보보호법에 따라 고객님의 호텔 이용기록, 개인정보 및 문의내역 기록도 모두 삭제됩니다.</p>
                        <br>
                        <p class = "h2">- 회원탈퇴가 완료되면 즉시 홈페이지 로그인이 제한됩니다.</p>
                        
                     
                     </div>
                     
                     <form id = "delete">
                     <div style=" margin-left:  auto; margin-right:  auto;text-align:  center;">
<%--                         <input id = "CL_RWnum" type="hidden" value="${sessionScope.USER.CL_RWnum}"> --%>
<%--                          <input id = "delYn1" type="hidden" value="${sessionScope.USER.CL_retireYN}">  --%>
                        <button type="submit" id="Retirement" style = "border : 0px; padding : 0px; height: 35px;">회원 탈퇴하기</button>
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