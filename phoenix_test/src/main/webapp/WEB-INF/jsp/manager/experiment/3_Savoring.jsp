<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>HeHe Journals</title>
	         <link rel="icon" href="/phoenix_test/favicon.png"/>
<link rel="stylesheet" href="/phoenix_test/AdminLTE-2.4.2/media/styles.css">
<link rel="stylesheet"
	href=" //cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/phoenix_test/AdminLTE-2.4.2/media/main.css">

<link rel="stylesheet" href="/phoenix_test/AdminLTE-2.4.2/media/jq.dice-menu.min.css">


</head>
<body>

		<jsp:include page="panel.jsp"></jsp:include>
	       <jsp:include page="menu.jsp"></jsp:include>

	<div class="container" style="padding: 40px;">
	
	

		<div class="row visible-on">
			<div class="col-md-1 col-lg-1 hidden-xs hidden-sm"></div>
			<div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">

				<div class="card">
				
				<c:choose>
					<c:when test="${obj.stageParid eq 0}">
<!-- 					<h1 class="text-primary">本星期任務：每日記錄三件美好的事<br/>傳達感恩的信</h1> -->
					</c:when>
					<c:when test="${obj.stageParid eq 1}">
<!-- 					<h1 class="text-primary">本星期任務：對感恩對象寫一封信、訂立有關性健康的行動計劃、每日記錄三件美好的事<br/>傳達感恩的信</h1> -->
					</c:when>
					<c:when test="${obj.stageParid eq 2}">
					<h1 class="text-primary">本星期任務：每日練習活在當下並記錄感受、跟進有關性健康的行動計劃、每日記錄三件美好的事<br/>細味生活</h1>
					</c:when>
					<c:when test="${obj.stageParid eq 3}">
					<h1 class="text-primary">本星期任務：樂觀練習、跟進有關性健康的行動計劃、每日練習活在當下並記錄感受、每日記錄三件美好的事<br/>細味生活</h1>
					</c:when>
				</c:choose>
				
<!-- 					<h1 class="text-primary">本星期任務：每日練習活在當下並記錄感受、跟進有關性健康的行動計劃、每日記錄三件美好的事<br/>細味生活</h1> -->
					
					<video src="/phoenix_test/AdminLTE-2.4.2/media/3_Savoring.mov"  id="my-video"  style="width: 100%;"  controls="controls"  id="my-video">
						</video>
						<div style="display: none;">
				       现在<span id="zzbf">0</span> 前一秒<span id="zzbf2">0</span><
				            视频当前播放:<span id="v1">0</span>&nbsp;&nbsp;&nbsp; 视频前一秒:<span id="v2">0</span>&nbsp;&nbsp;&nbsp; 相差:<span id="v3">0</span>
				</div>
						
												<input type="text" name="videoTime" id="videoTime"  hidden="hidden">
						<input type="text" name="totalTime" id="totalTime"  hidden="hidden">
						
						<div  class="text_l"  style="padding-top: 20px;">
						每天預留20分鐘去做一些你享受的事。在你的「小假期」裏，嘗試完全專注於你的感覺、感受。這些可以來自視覺、聽覺、嗅覺等。留意每一個正面的感覺，不要讓它流走。你就會留意到爲什麽你覺得某一件事讓你感到愉快。
						</div>

					<div >
					
	<form action="/phoenix_test/land/trial_savoring_post"   method="post"   onsubmit="return check()">
					<!-- 左右像书本那样的 -->
					<div class="row"  style="padding-top: 20px;">
			<div class="col-md-6 col-lg-6 col-xs-6 col-sm-12">
			<p >
				第一步：
<br/>在這一天，習慣不時問自己這個問題：我現在的思緒在哪裡？無論你的思緒在哪裡，你都可以簡單留意到它在哪裡徘徊。
<br/> 
<br/>第二步：
<br/>當你發現你的思緒離開了你現在做的事的時候，只標籤這個情況為「思緒遊走」，「思考」或「心理感覺」。如果你的思緒被拉到一個內心畫面，你可以簡單地標籤這個情況做「看見」。同樣地，如果一個聲音令你集中不了精神，你可以標籤這個情況做「聽見」，然後回到現在的活動。
<br/> 
<br/>第三步：
<br/>在標籤你遊走的思緒後，你可以放下當時的想法（包括腦中的畫面或其他吸引你的事物和感覺），並重新將你的思緒集中到現在這一刻和回到你的身體，你亦會回到你現在正進行的活動。
<br/> 
<br/>第四步：
<br/>當你回到現在這一刻，盡可以留意你正在做的事的每一個細節。用差不多五分鐘的時間讓自己專注在正在做的事，看看你活在當下的時候，帶給你愉快和集中的感覺。
<br/>•	當你的身體在動，可以欣賞身體隨時跟隨你的指示，讚嘆你的身體、手和其他動作是多麼靈敏。留意你身邊的顏色和圖形，看看有沒有你喜歡的顏色或物件。例如，如果你坐在電腦面前，你可以留意自己的手如何放在鍵盤上，電腦螢幕的顏色和身體接觸椅子的感覺。
<br/> 
<br/>•	集中於在這一刻的環境或你在做的活動，留意當中令你覺得感恩的事物。那些事可以是任何事情，例如是感激當下有瓦遮頭、面前的一杯暖咖啡或一杯茶。又或者欣賞你現在的穿著或你坐著舒適的椅子。
<br/> 
<br/>•	在這二十分鐘的最後，計劃你未來數天的假期和開始期待它。嘗試為每日計劃不同活動，令你不會習慣於任何一個活動和感到理所當然。你可能對這些事感到興趣，例如是一個令你心情舒暢的散步、看一本書，洗一個澡或者嘗試一個新的食物。
<br/>
			</p>
			</div>
			<div class="col-md-6 col-lg-6 col-xs-6 col-sm-12">
			<input type="text" name="stage" id="stage" value="${obj.stage }" hidden="hidden">
<h4>當你活在當下的時候，你體驗到什麽？</h4>
						<p>
							<textarea  id="experience" name="experience" rows="11"  style="width:100%" placeholder=""></textarea>
						</p>
<h4>在進入到「愉快、舒服的時刻」後，嘗試用一段時間去紀錄你所細味的時刻<br/>你預備在明天的練習做什麽？</h4>
						<p>
							<textarea  id="vacation" name="vacation" rows="11"  style="width:100%" placeholder=""></textarea>
						</p>
						<p>
						小貼士提升令你更細味生活
<br/>-	分享：與別人分享你的體驗和你如何珍惜這一刻
<br/>-	建立回憶：在腦海中拍照或留下屬於這件事的紀念品，之後和其他人分享回憶
<br/>-	讚賞自己：告訴自己別人對你有多好印象、我等了多久才等到這一刻的來臨
<br/>-	提升感官敏銳度：專注於五官中一個感覺（例如：閉目聽音樂）
<br/>-	陶醉：讓你自己完全專注現在所做的事，嘗試不用思考、只需感覺，不用提醒自己之後要做的事
<br/>
		</p>	
			</div>
			</div>


	<button type="submit" id="add-content">儲存並繼續</button>
</form>
					</div>
				</div>


			</div>
			<div class="col-md-1 col-lg-1   hidden-xs hidden-sm"></div>
		</div>
	</div>

	<footer class="footer  ">
		<div class="footer-limiter">
			<!-- <div class="row" style="color: white;">
  <div class="col-6 col-md-4">.col-6 .col-md-4</div>
  <div class="col-6 col-md-4">.col-6 .col-md-4</div>
  <div class="col-6 col-md-4">.col-6 .col-md-4</div>
</div> -->
			<div class="footer-right">
				<a href="../contact_us.html"><i class="fa "></i>聯絡我們</a> <a
					href="../disclaimer.html"><i class="fa "></i>免責聲明</a> <a
					href="../privacy_policy.html"><i class="fa "></i>隱私政策</a>
			</div>
			<div class="footer-left">
				<p class="footer-links"><img alt="logo" style="height: 50px;"  src="/phoenix_test/AdminLTE-2.4.2/media/logo_2.png"></p>
			</div>
		</div>
	</footer>

</body>

<script src=" //cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script
	src=" //cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<script src="/phoenix_test/AdminLTE-2.4.2/media/common.js"></script>
	
			<script src="/phoenix_test/AdminLTE-2.4.2/media/jq.dice-menu.js"></script>
			
				<script type="text/javascript">
				
				var current = 0;

				$(document).ready(function(){
					  $("#my-video").on(
					    "timeupdate", 
					    function(event){
					      onTrackedVideoFrame(this.currentTime, this.duration);
					    });
					})

					function onTrackedVideoFrame(currentTime, duration){
					if (currentTime > current) {
						current = currentTime;
						$("#videoTime").val(current);
						$("#totalTime").val(duration);
					}
					   /*  $("#current").text(currentTime);
					    $("#duration").text(duration); */
					}
					
				var int_1 = self.setInterval("setControl()", 1)
				var int_2 = self.setInterval("tesst()", 100)
				//让其一直显示进度条
				function setControl() {
				    var video = document.getElementById("my-video"); //获取video对象
				    video.controls = true; //设置控制条显示
				}
				var zq = 0;
				var zh = -1;
				var hou = 0;
				function tesst() {
				    var v2 = document.getElementById("v2");
				    v2.innerHTML = hou;
				    var s = document.getElementById("zzbf");
				    var b = document.getElementById("zzbf2");
				    var v1 = document.getElementById("v1");
				    var v3 = document.getElementById("v3");
				    zq = zq + 1;
				    zh = zh + 1;
				    var video = document.getElementById("my-video"); //获取video对象
				    var time1 = video.currentTime;
				    var xc = time1 - hou;
				    v3.innerHTML = xc;
				    if(xc > 2) {
				        document.getElementById("my-video").pause();
				        video.currentTime = hou;
				    }
				    if(xc <= -2) {
				    }
				    hou = time1;
				    v1.innerHTML = time1;
				    s.innerHTML = zq;
				    b.innerHTML = zh;
				}
				var i = 0;

				function stop() {
				    //点击暂停播放 
				    if(i == 0) {
				        document.getElementById("my-video").pause();
				        i = 1;
				    } else {
				        document.getElementById('my-video').play();
				        i = 0;
				    }
				}
				
function check(){
// 	alert("on...");
	if (!$.trim($("#experience").val())
			||!$.trim($("#vacation").val())
	) {
		alert("細味生活不能為空，請填寫後提交！");
		return false;
	}
	return true;
}
</script>
</html>
