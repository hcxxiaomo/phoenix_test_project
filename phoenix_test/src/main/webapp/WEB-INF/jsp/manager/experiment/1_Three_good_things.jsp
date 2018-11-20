<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>HeHe Journals</title>
<link rel="stylesheet" href="/phoenix_test/AdminLTE-2.4.2/media/styles.css">
<link rel="stylesheet"
	href=" //cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/phoenix_test/AdminLTE-2.4.2/media/main.css">

<link rel="stylesheet" href="/phoenix_test/AdminLTE-2.4.2/media/jq.dice-menu.min.css">


</head>
<body>

		<jsp:include page="panel.jsp"></jsp:include>

	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
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
        
        <jsp:include page="menu.jsp"></jsp:include>
    </div>
  </div>
</nav> 

	<div class="container" style="padding: 40px;">
	
	

		<div class="row visible-on">
			<div class="col-md-1 col-lg-1 hidden-xs hidden-sm"></div>
			<div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">

				<div class="card">
					<h1 class="text-primary">本星期任務：每日記錄三件美好的事<br/>三件美好的事</h1>
					<!-- 			<h3>This page demonstrates how you can create a footer with flexbox which always sticks to the bottom of the page, regardless of how much conotent there is.</h3> -->
					<!-- 			<a href='#' id="add-content">註冊及了解更多</a> -->
					<!-- 			<a href='#' id="login-content">登入</a> -->
					<video src="/phoenix_test/AdminLTE-2.4.2/media/1_Three_good_things.mov" style="width: 100%;" controls="controls">
						</video>
						<div>
						試想想自己今天發生了什麼美好的事情。這件事情可以是任何為你帶來正面能量的事。不論事情大小，只要該事件令你感到良好、開心和充滿正面能量。例如：你今天吃了一個豐富的早餐 / 昨天晚上睡得很好。

<br/>寫三項美好的事情（例如：我對......感到感激）
<br/>思考每件美好事情發生的原因，為什麼它們對你來說是美好的。

<br/>*寫作形式不拘，不用擔心文法錯誤或錯字
<br/>請盡可能詳細地描述。
						</div>


					<div >
					<form action="/phoenix_test/land/trial_happy_post"  enctype="multipart/form-data" method="post">
						<input type="text" name="stage" id="stage" value="${obj.stage }" hidden="hidden">
						<h4>你的第一件美好的事</h4>

						<p>
							<textarea  id="happyOne" name="happyOne" rows="8"  style="width:100%" placeholder="這件開心事是怎樣發生的? 為什麼這件事是一件開心事?"></textarea>
						</p>
						<h4>這件美好的事是怎樣發生的? 為什麼這件事是美好的?</h4>

						<p>
							<textarea  id="happyOneHow" name="happyOneHow" rows="8"  style="width:100%" placeholder="這件開心事是怎樣發生的? 為什麼這件事是一件開心事?"></textarea>
						</p>
						<div class="input-group">
  <span class="input-group-addon" id="basic-addon1">上傳照片或者視頻：</span>
  <input type="file" name="file1" id="file1" class="form-control" >
</div>
						
						<h4>你的第二件美好的事</h4>

						<p>
							<textarea  id="happyTwo" name="happyTwo" rows="8" style="width:100%"  placeholder="這件開心事是怎樣發生的? 為什麼這件事是一件開心事?"></textarea>
						</p>
						<h4>這件美好的事是怎樣發生的? 為什麼這件事是美好的?</h4>

						<p>
							<textarea  id="happyTwoHow" name="happyTwoHow" rows="8"  style="width:100%" placeholder="這件開心事是怎樣發生的? 為什麼這件事是一件開心事?"></textarea>
						</p>
												<div class="input-group">
  <span class="input-group-addon" id="basic-addon1">上傳照片或者視頻：</span>
  <input type="file" name="file2" id="file2" class="form-control" >
</div>
						<h4>你的第三件美好的事</h4>

						<p>
							<textarea  id="happyThree" name="happyThree" rows="8" style="width:100%" placeholder="這件開心事是怎樣發生的? 為什麼這件事是一件開心事?"></textarea>
						</p>
						<h4>這件美好的事是怎樣發生的? 為什麼這件事是美好的?</h4>

						<p>
							<textarea  id="happyThreeHow" name="happyThreeHow" rows="8"  style="width:100%" placeholder="這件開心事是怎樣發生的? 為什麼這件事是一件開心事?"></textarea>
						</p>
						<div class="input-group">
  <span class="input-group-addon" id="basic-addon1">上傳照片或者視頻：</span>
  <input type="file" name="file3" id="file3" class="form-control" >
</div>

<p>
在一個星期後檢視，你會發現自己留意多了生活中正面的事情，更樂觀和正面！
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
				<a href="contact_us.html"><i class="fa "></i>聯絡我們</a> <a
					href="disclaimer.html"><i class="fa "></i>免責聲明</a> <a
					href="privacy_policy.html"><i class="fa "></i>隱私政策</a>
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

</html>
