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

</head>
<body>

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
      <a href="#" class="navbar-brand nav-title">HeHe Journals</a>
    </div>
    <div class="collapse navbar-collapse" id="navbar-menu">
      <ul class="nav navbar-nav navbar-right">
        <li class="nav-item"><a href="#">主頁</a></li>
        <li class="nav-item"><a href="/phoenix_test/land/ppi">什麼是正向心理學?</a></li>
        <li class="nav-item"><a href="${obj.url }">問卷</a></li>
        <li class="nav-item"><a class="nav-link " href="#">行动计划</a></li>
        <li class="nav-item"><a class="nav-link " href="/phoenix_test/land/experiment/notice">使用指南</a></li>
        <li class="nav-item"><a class="nav-link " href="#">你好， ${sessionScope.user.name} </a></li>
        <li class="nav-item"><a class="nav-link " href="#">登出</a></li>
      </ul>
    </div>
  </div>
</nav> 

	<div class="container" style="padding: 40px;">
	
	

		<div class="row visible-on">
			<div class="col-md-1 col-lg-1 hidden-xs hidden-sm"></div>
			<div class="col-xs-12 col-sm-12 col-md-10 col-md-10">

				<div class="card">
					<h1 class="text-primary">三件開心的事</h1>
					<!-- 			<h3>This page demonstrates how you can create a footer with flexbox which always sticks to the bottom of the page, regardless of how much conotent there is.</h3> -->
					<!-- 			<a href='#' id="add-content">註冊及了解更多</a> -->
					<!-- 			<a href='#' id="login-content">登入</a> -->

					<div >
					<form action="/phoenix_test/land/trial_happy_post"  enctype="multipart/form-data" method="post">
						<h4>你的第一件開心事</h4>
						<input type="text" name="stage" id="stage" value="${obj.url }" hidden="hidden">

						<p>
							<textarea  id="happyOne" name="happyOne" rows="8"  style="width:100%" placeholder="這件開心事是怎樣發生的? 為什麼這件事是一件開心事?"></textarea>
						</p>
						<div class="input-group">
  <span class="input-group-addon" id="basic-addon1">上传照片或者视频：</span>
  <input type="file" name="file1" id="file1" class="form-control" >
</div>
						
						<h4>你的第二件開心事</h4>

						<p>
							<textarea  id="happyTwo" name="happyTwo" rows="8" style="width:100%"  placeholder="這件開心事是怎樣發生的? 為什麼這件事是一件開心事?"></textarea>
						</p>
												<div class="input-group">
  <span class="input-group-addon" id="basic-addon1">上传照片或者视频：</span>
  <input type="file" name="file2" id="file2" class="form-control" >
</div>
						<h4>你的第三件開心事</h4>

						<p>
							<textarea  id="happyThree" name="happyThree" rows="8" style="width:100%" placeholder="這件開心事是怎樣發生的? 為什麼這件事是一件開心事?"></textarea>
						</p>
						<div class="input-group">
  <span class="input-group-addon" id="basic-addon1">上传照片或者视频：</span>
  <input type="file" name="file3" id="file3" class="form-control" >
</div>


	<button type="submit" id="add-content">提交</button>
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
				<p class="footer-links"><img alt="logo" src="/phoenix_test/AdminLTE-2.4.2/media/logo_2.png"></p>
			</div>
		</div>
	</footer>

</body>

<script src=" //cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script
	src=" //cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>
