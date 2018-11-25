<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

<%-- 	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
        <span class="sr-only">切换导航</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      </button>
      <a href="/phoenix_test/land/experiment/index" class=" nav-title"><img alt="logo" style="height: 50px;" src="/phoenix_test/AdminLTE-2.4.2/media/logo_1.png"></a>
    </div>
    <div class="collapse navbar-collapse" id="navbar-menu">
      <ul class="nav navbar-nav navbar-right">
        <li class="nav-item"><a href="/phoenix_test/land/experiment/index">主頁</a></li>
        <li class="nav-item"><a href="/phoenix_test/land/experiment/ppi">什麼是正向心理學?</a></li>
        <li class="nav-item"><a href="/phoenix_test/land/experiment/today">問卷</a></li>
        <li class="nav-item"><a class="nav-link " href="/phoenix_test/land/experiment/action">行动计划</a></li>
        <li class="nav-item"><a class="nav-link " href="/phoenix_test/land/experiment/notice">使用指南</a></li>
        <li class="nav-item"><a class="nav-link " href="#">你好， ${sessionScope.user.name} </a></li>
        <li class="nav-item"><a class="nav-link "  href="javascript:void(0)" onclick="logout()">登出</a></li>
      </ul>
    </div>
  </div>
</nav>  --%>

	<div class="container" style="padding: 40px;">
	
	

		<div class="row visible-on">
			<div class="col-md-1 col-lg-1 hidden-xs hidden-sm"></div>
			<div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">

				<div class="card">
<%-- 				${obj.stage  eq 'e4_1_1'} --%>
<%-- 				${obj.stage} --%>
<%-- 				<c:if test="${obj.stage  eq 'e4_1_1'}">整體生活</c:if> --%>


				
				 <c:choose>
					<c:when test="${obj.stage  eq 'e4_1_1'}"><h1 class="text-primary">本星期任務：樂觀練習、跟進有關性健康的行動計劃、每日練習活在當下並記錄感受、每日記錄三件美好的事<br/>樂觀練習<br/>社交</h1></c:when>
					<c:when test="${obj.stage  eq 'e4_1_2'}"><h1 class="text-primary">本星期任務：樂觀練習、跟進有關性健康的行動計劃、每日練習活在當下並記錄感受、每日記錄三件美好的事<br/>樂觀練習<br/>感情生活</h1></c:when>
					<c:when test="${obj.stage  eq 'e4_1_3'}"><h1 class="text-primary">本星期任務：樂觀練習、跟進有關性健康的行動計劃、每日練習活在當下並記錄感受、每日記錄三件美好的事<br/>樂觀練習<br/>健康</h1></c:when>
					<c:when test="${obj.stage  eq 'e4_1_4'}"><h1 class="text-primary">本星期任務：樂觀練習、跟進有關性健康的行動計劃、每日練習活在當下並記錄感受、每日記錄三件美好的事<br/>樂觀練習<br/>工作</h1></c:when>
					<c:when test="${obj.stage  eq 'e4_1_5'}"><h1 class="text-primary">本星期任務：樂觀練習、跟進有關性健康的行動計劃、每日練習活在當下並記錄感受、每日記錄三件美好的事<br/>樂觀練習<br/>關係</h1></c:when>
					<c:when test="${obj.stage  eq 'e4_1_6'}"><h1 class="text-primary">本星期任務：樂觀練習、跟進有關性健康的行動計劃、每日練習活在當下並記錄感受、每日記錄三件美好的事<br/>樂觀練習<br/>生命的意義</h1></c:when>
					<c:otherwise>樂觀練習</c:otherwise>
				 </c:choose>
			
				
				<%-- <c:choose>
					<c:when test="${obj.stage  eq 'e4_1_1'} "><h1 class="text-primary">${obj.date }-整體生活</h1></c:when>
					<c:when test="${obj.stage  eq 'e4_1_2'} "><h1 class="text-primary">${obj.date }-家庭關系</h1></c:when>
					<c:when test="${obj.stage  eq 'e4_1_3'} "><h1 class="text-primary">${obj.date }-事業</h1></c:when>
					<c:when test="${obj.stage  eq 'e4_1_4'} "><h1 class="text-primary">${obj.date }-健康</h1></c:when>
					<c:when test="${obj.stage  eq 'e4_1_5'} "><h1 class="text-primary">${obj.date }-感情生活</h1></c:when>
					<c:when test="${obj.stage  eq 'e4_1_6'} "><h1 class="text-primary">${obj.date }-社交生活</h1></c:when>
					<c:otherwise><h1 class="text-primary">樂觀練習</h1></c:otherwise>
				</c:choose> --%>
					
					<video src="/phoenix_test/AdminLTE-2.4.2/media/4_Optimism.mov" id="my-video"  style="width: 100%;"  controls="controls">
						</video>
						
						<div>
						<p>
							現在，用10分鐘時間，請你不間斷地寫下你對未來5年的想像:
<br/>1.	發揮你的想像力和創造力
<br/>2.	你想用什麽寫作形式都可以、不用擔心文法錯誤或錯字
<br/>3.	寫得越詳細越好
<br/>4.	四十字左右，歡迎寫得更多
<br/>
						<c:choose>
					<c:when test="${obj.stage  eq 'e4_1_1'}">
		社交
<br/>請用一點時間去思考你未來最理想的社交生活（假設是五年後），想像所有的事情都進行得可以有多好就有多好。可能你有一群很好的朋友或者鄰居，你從來不會擔心沒有人支持你或沒有人與你交際。想著這是實現你心目中最理想的社交生活。
					</c:when>
					<c:when test="${obj.stage  eq 'e4_1_2'}">
感情生活
<br/>請用一點時間去思考你未來最理想的感情生活（假設是五年後），想像所有的事情都進行得可以有多好就有多好。可能你有一個很好的伴侶/丈夫/妻子，其他人都十分欣賞你的感情生活。想著這是實現你心目中最理想的感情生活。
</c:when>
					<c:when test="${obj.stage  eq 'e4_1_3'}">
健康
<br/>請用一點時間去思考你未來最理想的身體健康和心理健康（假設是五年後），想像所有的事情都進行得可以有多好就有多好。可能你定期做運動和有一個健康的飲食習慣，令你感到強壯。又或者你少了感到焦慮和不會像以前那樣擔心事物。想著這是實現你心目中最理想的身體健康和心理健康
</c:when>
					<c:when test="${obj.stage  eq 'e4_1_4'}">
工作
<br/>請用一點時間去思考你未來最理想的職業或工作（假設是五年後），想像所有的事情都進行得可以有多好就有多好。可能你有一個「夢想中的職業」或有自己的事業，不論是全職工作或者是一個星期只有數小時的職業。想著這是實現你心目中最理想的工作或職業。
</c:when>
					<c:when test="${obj.stage  eq 'e4_1_5'}">
家庭關係
<br/>請用一點時間去思考你未來最理想的家庭生活（假設是五年後），想像所有的事情都進行得可以有多好就有多好。可能你有一個可以給予你支持的同伴或者良好的親子關係，又或者你現在和父母、朋友或兄弟姊妹住得很近，可以經常見面。想著這是實現你心目中最理想的家庭生活。
</c:when>
					<c:when test="${obj.stage  eq 'e4_1_6'}">
生命的意義
<br/>思考一下你未來的生活，想像所有的事情都進行得可以有多好就有多好。你十分努力並成功完成所有的人生目標，想著這是實現你人生的所有夢想。現在，請寫出你所想像到的事。
					</c:when>
					<c:otherwise>樂觀練習</c:otherwise>
				 </c:choose>
				 
						</p>
						
						
						</div>

					<div >
					<form action="/phoenix_test/land/trial_optimism_post"  method="post"  onsubmit="return check()">
						<input type="text" name="stage" id="stage" value="${obj.stage }" hidden="hidden">
<!-- 						<h4>你的第一件開心事</h4> -->
						<input type="text" name="videoTime" id="videoTime"  hidden="hidden">
						<input type="text" name="totalTime" id="totalTime"  hidden="hidden">

						<p>
							<textarea  id="optimism" name="optimism" rows="20"  style="width:100%" ></textarea>
						</p>
						

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
				<p class="footer-links"><a href="/phoenix_test/land/index.html"><img alt="logo" style="height: 50px;"  src="/phoenix_test/AdminLTE-2.4.2/media/logo_2.png"></a></p>
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
	if (!$.trim($("#optimism").val())
			
	) {
		alert("樂觀練習不能為空，請填寫後提交！");
		return false;
	}
	return true;
}
</script>
</html>
