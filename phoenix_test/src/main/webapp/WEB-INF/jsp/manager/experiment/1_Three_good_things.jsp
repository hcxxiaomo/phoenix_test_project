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
					<h1 class="text-primary">本星期任務：每日記錄三件美好的事<br/>三件美好的事</h1>
					</c:when>
					<c:when test="${obj.stageParid eq 1}">
					<h1 class="text-primary">本星期任務：對感恩對象寫一封信、訂立有關性健康的行動計劃、每日記錄三件美好的事<br/>三件美好的事</h1>
					</c:when>
					<c:when test="${obj.stageParid eq 2}">
					<h1 class="text-primary">本星期任務：每日練習活在當下並記錄感受、跟進有關性健康的行動計劃、每日記錄三件美好的事<br/>三件美好的事</h1>
					</c:when>
					<c:when test="${obj.stageParid eq 3}">
					<h1 class="text-primary">本星期任務：樂觀練習、跟進有關性健康的行動計劃、每日練習活在當下並記錄感受、每日記錄三件美好的事<br/>三件美好的事</h1>
					</c:when>
				</c:choose>
					<!-- 			<h3>This page demonstrates how you can create a footer with flexbox which always sticks to the bottom of the page, regardless of how much conotent there is.</h3> -->
					<!-- 			<a href='#' id="add-content">註冊及了解更多</a> -->
					<!-- 			<a href='#' id="login-content">登入</a> -->
					<video src="/phoenix_test/AdminLTE-2.4.2/media/1_Three_good_things.mov" style="width: 100%;" controls="controls"  id="my-video">
						</video>
						<div style="display: none;">
				       现在<span id="zzbf">0</span> 前一秒<span id="zzbf2">0</span>
				            视频当前播放:<span id="v1">0</span>&nbsp;&nbsp;&nbsp; 视频前一秒:<span id="v2">0</span>&nbsp;&nbsp;&nbsp; 相差:<span id="v3">0</span>
				</div>
						<div class="text_l" style="padding-top: 20px;">
						試想想自己今天發生了什麼美好的事情。這件事情可以是任何為你帶來正面能量的事。不論事情大小，只要該事件令你感到良好、開心和充滿正面能量。例如：你今天吃了一個豐富的早餐 / 昨天晚上睡得很好。

<br/>寫三項美好的事情（例如：我對......感到感激）
<br/>思考每件美好事情發生的原因，為什麼它們對你來說是美好的。

<br/>*寫作形式不拘，不用擔心文法錯誤或錯字
<br/>請盡可能詳細地描述。
						</div>


					<div >
					<form action="/phoenix_test/land/trial_happy_post"  enctype="multipart/form-data" method="post"   onsubmit="return check()">
						<input type="text" name="stage" id="stage" value="${obj.stage }" hidden="hidden">
						<input type="text" name="videoTime" id="videoTime"  hidden="hidden">
						<input type="text" name="totalTime" id="totalTime"  hidden="hidden">
						<h4>你的第一件美好的事</h4>

						<p>
							<textarea  id="happyOne" name="happyOne" rows="8"  style="width:100%" placeholder=""></textarea>
						</p>
						<h4>這件美好的事是怎樣發生的? 為什麼這件事是美好的?</h4>

						<p>
							<textarea  id="happyOneHow" name="happyOneHow" rows="8"  style="width:100%" placeholder=""></textarea>
						</p>
						<div class="input-group">
  <span class="input-group-addon" id="basic-addon1">上傳照片或者視頻：</span>
  <input type="file" name="file1" id="file1" class="form-control" >
</div>
						
						<h4>你的第二件美好的事</h4>

						<p>
							<textarea  id="happyTwo" name="happyTwo" rows="8" style="width:100%"  placeholder=""></textarea>
						</p>
						<h4>這件美好的事是怎樣發生的? 為什麼這件事是美好的?</h4>

						<p>
							<textarea  id="happyTwoHow" name="happyTwoHow" rows="8"  style="width:100%" placeholder=""></textarea>
						</p>
												<div class="input-group">
  <span class="input-group-addon" id="basic-addon1">上傳照片或者視頻：</span>
  <input type="file" name="file2" id="file2" class="form-control" >
</div>
						<h4>你的第三件美好的事</h4>

						<p>
							<textarea  id="happyThree" name="happyThree" rows="8" style="width:100%" placeholder=""></textarea>
						</p>
						<h4>這件美好的事是怎樣發生的? 為什麼這件事是美好的?</h4>

						<p>
							<textarea  id="happyThreeHow" name="happyThreeHow" rows="8"  style="width:100%" placeholder=""></textarea>
						</p>
						<div class="input-group">
  <span class="input-group-addon" id="basic-addon1">上傳照片或者視頻：</span>
  <input type="file" name="file3" id="file3" class="form-control" >
</div>

<!-- <p>
在一個星期後檢視，你會發現自己留意多了生活中正面的事情，更樂觀和正面！
</p> -->



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
	if (!$.trim($("#happyOne").val())
			|| !$.trim($("#happyOneHow").val())
	) {
		alert("第一件美好的事不能為空，請填寫後提交！");
		return false;
	}
	if (!$.trim($("#happyTwo").val())
			|| !$.trim($("#happyTwoHow").val())
	) {
		alert("第二件美好的事不能為空，請填寫後提交！");
		return false;
	}
	if (!$.trim($("#happyThree").val())
			|| !$.trim($("#happyThreeHow").val())
	) {
		alert("第三件美好的事不能為空，請填寫後提交！");
		return false;
	}
	return true;
}
</script>
</html>
