<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>매출전표 </title>
		<link rel="stylesheet" href="/css/Statement.css">
		<link rel="stylesheet" href="/css/main.css" type = "text/css">
		<link rel="stylesheet" href="/css/base.css" type = "text/css">
		<link rel="stylesheet" href="/css/SearchHotel.css" type = "text/css">
		<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script type="text/javascript" src="/res/js/graphviewer.js"></script>
		
  		<!-- datepicker 
		<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
		<script src="//code.jquery.com/jquery.min.js"></script>
		<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>	-->	
		
		<!-- graph/chart -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
		
		
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

	
<div class="container">

	<div id="div2-R-T">
		<a class ="menu_top" href = "/Admin_ST">매출전표</a>
		<a class ="menu_top" href = "/Admin_CL">회원목록</a>
		<a class ="menu_top" href = "/Admin_SL">직원목록</a>
							 
	</div>
	

	<div class="middle">
		<div class = "div_mid">
			<p style ="font-size: 30px; font-weight: bold;">매출</p>
			<p style ="font-size: 13px; color:gray; float : right;">단위 : 백만원</p>
			<p style ="font-size: 17px; font-weight: bold;">(TS : Total Sales)</p>		
			<p style ="font-size: 30px; font-weight: bold;">734,195,000 KRW</p>
			
		</div>
		<div class = "div_mid">
			<p style ="font-size: 30px; font-weight: bold;">조회수</p>
			<p style ="font-size: 13px; color:gray; float : right;">단위 : 만원</p>
			<p style ="font-size: 17px; font-weight: bold;">(PV : Page Views)</p>		
			<p style ="font-size: 30px; font-weight: bold;">8,389,227</p>
			
		</div>
		<div class = "div_mid">
			<p style ="font-size: 30px; font-weight: bold;">예약건수</p>
			<p style ="font-size: 13px; color:gray; float : right;">단위 : 천원</p>
			<p style ="font-size: 17px; font-weight: bold;">(NoR : Number of Reservations)</p>		
			<p style ="font-size: 30px; font-weight: bold;">437,559</p>
			
		</div>
		
	</div>
	
	<div class="bottom">
		<div class = div_bot>
			<div class="bot_top">
				<div class="bot_menuA">월간 변동 추이 그래프</div>
					<div class="bot_menu3" >
						<div id = "yearchoice">				
							
							<input type="button" value = "2017" id="graphAbtn" onclick="showgraphA()">
							<input type="button" value = "2018" id="graphBbtn" onclick="showgraphB()">
							<input type="button" value = "2019" id="graphCbtn" onclick="showgraphC()">

						</div>
					</div>
			</div>
			
			
			
			<div class ="bot_graphview">
				
		       	<div id="chart_div">
		       	
		       	
<!--  		       			<div id="graphA" style="width: 1100px; height: 450px;"></div>
						<div id="graphB" style="width: 1100px; height: 450px;"></div>
						<div id="graphC" style="width: 1100px; height: 450px;"></div> -->
						
<!-- 		       			<script>					
						function hidefirst(){
							console.log("hide1");
							$("#graphA").hide();
							$("#graphB").hide();
							$("#graphC").hide();
							console.log("hide2")
							}				
						</script> -->
						

						<script>
						function showgraphA(){
							
							if($("#graphA").css("display") == "none"){
							    $("#graphA").show();
							    $("#graphB").hide();
							    $("#graphC").hide();
							} else {
							    /* $("#graphA").hide(); */
							}

						}
						</script>
						
						<script>
						function showgraphB(){
							
							if($("#graphB").css("display") == "none"){
							    $("#graphB").show();
							    $("#graphC").hide();
							    $("#graphA").hide();
							} else {
							    /* $("#graphB").hide(); */
							}

						}
						</script>
						
						<script>
						function showgraphC(){
							
							if($("#graphC").css("display") == "none"){
							    $("#graphC").show();
							    $("#graphA").hide();
							    $("#graphB").hide();
							} else {
							    /* $("#graphC").hide(); */
							}

						}
						</script>
						

						

				<!-- 2017 -->
		   				<script id="graphA">
	
		   		     
		
		   				google.charts.load('current', {'packages':['corechart']});
		   				      google.charts.setOnLoadCallback(drawVisualization);
		
		   				      function drawVisualization() {
					        
		   				     var data = new google.visualization.DataTable();
		   				        data.addColumn('string','Month');
		   				     	data.addColumn('number','TS');
		   				 		data.addColumn('number','PV');
		   						data.addColumn('number','NoR');
		
		   					var resources = [
		   						{'Col1':'01', 'Col2': 998, 'Col3' : 288, 'Col4' : 680},
		   						{'Col1':'02', 'Col2': 901, 'Col3' : 450, 'Col4' : 614},
		   						{'Col1':'03', 'Col2': 807, 'Col3' : 397, 'Col4' : 623},
		   						{'Col1':'04', 'Col2': 608, 'Col3' : 234, 'Col4' : 577},
		   						{'Col1':'05', 'Col2': 511, 'Col3' : 450, 'Col4' : 614},
		   						{'Col1':'06', 'Col2': 478, 'Col3' : 450, 'Col4' : 688},
		   						{'Col1':'07', 'Col2': 597, 'Col3' : 524, 'Col4' : 825},
		   						{'Col1':'08', 'Col2': 718, 'Col3' : 450, 'Col4' : 797},
		   						{'Col1':'09', 'Col2': 998, 'Col3' : 487, 'Col4' : 714},
		   						{'Col1':'10', 'Col2': 998, 'Col3' : 533, 'Col4' : 645},
		   						{'Col1':'11', 'Col2': 925, 'Col3' : 571, 'Col4' : 682},
		   						{'Col1':'12', 'Col2': 731, 'Col3' : 622, 'Col4' : 614}
		   						
		   					];	
		   						
		   						
		   					for(var i=0; i < resources.length; i++) {
		   						var arry = [];
		   						arry[0] = resources[i].Col1;
		   						arry[1] = resources[i].Col2;
		   						arry[2] = resources[i].Col3;
		   						arry[3] = resources[i].Col4;
		   						data.addRow(arry);
		   						console.log(arry);
		   					}
		   						
		   						
		   				        var options = {
		   				          width : 1100,
		   				          height : 450,
		   				          title : '2017',
		   				          vAxis: {title: 'values'},
		   				          hAxis: {title: 'month'},
		   				          seriesType: 'line',
		   				          series : {
		   				        	  0: {color : 'red'},
		   				        	  1: {color : 'green'},
		   				        	  2: {color : 'blue'}			        	  
		   				          }
		   				                 };
		
		   				        var chart = new google.visualization.ComboChart(document.getElementById('graphA'));
		   				        chart.draw(data, options);
		   				      }
		   				</script>
		   				
		   				
		   		<!-- 2018 -->
		   				<script id = "graphB">
		   		     
		
		   				google.charts.load('current', {'packages':['corechart']});
		   				      google.charts.setOnLoadCallback(drawVisualization);
		
		   				      function drawVisualization() {
					        
		   				     var data = new google.visualization.DataTable();
		   				        data.addColumn('string','Month');
		   				     	data.addColumn('number','TS');
		   				 		data.addColumn('number','PV');
		   						data.addColumn('number','NoR');
		
		   					var resources = [
		   						{'Col1':'01', 'Col2': 877, 'Col3' : 784, 'Col4' : 577},
		   						{'Col1':'02', 'Col2': 904, 'Col3' : 765, 'Col4' : 614},
		   						{'Col1':'03', 'Col2': 807, 'Col3' : 644, 'Col4' : 688},
		   						{'Col1':'04', 'Col2': 608, 'Col3' : 783, 'Col4' : 751},
		   						{'Col1':'05', 'Col2': 675, 'Col3' : 742, 'Col4' : 632},
		   						{'Col1':'06', 'Col2': 712, 'Col3' : 688, 'Col4' : 688},
		   						{'Col1':'07', 'Col2': 810, 'Col3' : 574, 'Col4' : 755},
		   						{'Col1':'08', 'Col2': 718, 'Col3' : 499, 'Col4' : 797},
		   						{'Col1':'09', 'Col2': 595, 'Col3' : 487, 'Col4' : 714},
		   						{'Col1':'10', 'Col2': 674, 'Col3' : 455, 'Col4' : 645},
		   						{'Col1':'11', 'Col2': 409, 'Col3' : 571, 'Col4' : 577},
		   						{'Col1':'12', 'Col2': 644, 'Col3' : 731, 'Col4' : 519}
		   						
		   					];	
		   						
		   						
		   					for(var i=0; i < resources.length; i++) {
		   						var arry = [];
		   						arry[0] = resources[i].Col1;
		   						arry[1] = resources[i].Col2;
		   						arry[2] = resources[i].Col3;
		   						arry[3] = resources[i].Col4;
		   						data.addRow(arry);
		   						console.log(arry);
		   					}
		   						
		   						
		   				        var options = {
		   				          width : 1100,
				   				  height : 450,
		   				          title : '2018',
		   				          vAxis: {title: 'values'},
		   				          hAxis: {title: 'month'},
		   				          seriesType: 'line',
		   				          series : {
		   				        	  0: {color : 'red'},
		   				        	  1: {color : 'green'},
		   				        	  2: {color : 'blue'}			        	  
		   				          }
		   				                 };
		
		   				        var chart = new google.visualization.ComboChart(document.getElementById('graphB'));
		   				        chart.draw(data, options);
		   				      }
		   				</script>
		   				
		   				
		   	<!-- 2019 -->
		   				<script id = "graphC">
		   		     
		
		   				google.charts.load('current', {'packages':['corechart']});
		   				      google.charts.setOnLoadCallback(drawVisualization);
		
		   				      function drawVisualization() {
					        
		   				     var data = new google.visualization.DataTable();
		   				        data.addColumn('string','Month');
		   				     	data.addColumn('number','TS');
		   				 		data.addColumn('number','PV');
		   						data.addColumn('number','NoR');
		
		   					var resources = [
		   						{'Col1':'01', 'Col2': 748, 'Col3' : 288, 'Col4' : 710},
		   						{'Col1':'02', 'Col2': 811, 'Col3' : 450, 'Col4' : 764},
		   						{'Col1':'03', 'Col2': 807, 'Col3' : 397, 'Col4' : 623},
		   						{'Col1':'04', 'Col2': 788, 'Col3' : 488, 'Col4' : 577},
		   						{'Col1':'05', 'Col2': 754, 'Col3' : 550, 'Col4' : 614},
		   						{'Col1':'06', 'Col2': 652, 'Col3' : 550, 'Col4' : 698},
		   						{'Col1':'07', 'Col2': 597, 'Col3' : 524, 'Col4' : 825},
		   						{'Col1':'08', 'Col2': 609, 'Col3' : 650, 'Col4' : 844},
		   						{'Col1':'09', 'Col2': 638, 'Col3' : 487, 'Col4' : 683},
		   						{'Col1':'10', 'Col2': 708, 'Col3' : 533, 'Col4' : 794},
		   						{'Col1':'11', 'Col2': 825, 'Col3' : 591, 'Col4' : 952},
		   						{'Col1':'12', 'Col2': 731, 'Col3' : 692, 'Col4' : 788}
		   						
		   					];	
		   						
		   						
		   					for(var i=0; i < resources.length; i++) {
		   						var arry = [];
		   						arry[0] = resources[i].Col1;
		   						arry[1] = resources[i].Col2;
		   						arry[2] = resources[i].Col3;
		   						arry[3] = resources[i].Col4;
		   						data.addRow(arry);
		   						console.log(arry);
		   					}
		   						
		   						
		   				        var options = {
		   				          width : 1100,
				   				  height : 450,
		   				          title : '2019',
		   				          vAxis: {title: 'values'},
		   				          hAxis: {title: 'month'},
		   				          seriesType: 'line',
		   				          series : {
		   				        	  0: {color : 'red'},
		   				        	  1: {color : 'green'},
		   				        	  2: {color : 'blue'}			        	  
		   				          }
		   				                 };
		
		   				        var chart = new google.visualization.ComboChart(document.getElementById('graphC'));
		   				        chart.draw(data, options);
		   				      }
		   				</script>
		   				
		   				
		   				
		   				
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