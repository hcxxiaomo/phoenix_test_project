<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>HeHe Journals</title>
	    <link rel="stylesheet" href="/phoenix_test/AdminLTE-2.4.2/media/main.css">
	    <link rel="stylesheet" href="/phoenix_test/AdminLTE-2.4.2/media/styles.css">
	<link rel="stylesheet" href=" //cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  

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
      <a href="/phoenix_test/land/experiment/index" class=" nav-title"><img alt="logo" style="height: 50px;" src="/phoenix_test/AdminLTE-2.4.2/media/logo_1.png"></a>
    </div>
    <div class="collapse navbar-collapse" id="navbar-menu">
      <ul class="nav navbar-nav navbar-right">
        <li class="nav-item"><a href="/phoenix_test/land/experiment/index">主頁</a></li>
        <li class="nav-item"><a href="/phoenix_test/land/experiment/ppi">什麼是正向心理學?</a></li>
        <li class="nav-item"><a href="/phoenix_test/land/experiment/today">問卷</a></li>
        <li class="nav-item"><a class="nav-link " href="#">行动计划</a></li>
        <li class="nav-item"><a class="nav-link " href="/phoenix_test/land/experiment/notice">使用指南</a></li>
        <li class="nav-item"><a class="nav-link " href="#">你好， ${sessionScope.user.name} </a></li>
        <li class="nav-item"><a class="nav-link "  href="javascript:void(0)" onclick="logout()">登出</a></li>
      </ul>
    </div>
  </div>
</nav> 

<div class="container"  style="padding: 40px;">
	
		<div class="row visible-on">
					<div class="col-md-1 col-lg-1 hidden-xs hidden-sm"></div>
			<div class="col-xs-12 col-sm-12 col-md-10 col-md-10">
			
			<div class="card">
			<h1 class="text-primary">這個研究會做什麽？</h1>
			<!-- 			<h3>This page demonstrates how you can create a footer with flexbox which always sticks to the bottom of the page, regardless of how much conotent there is.</h3> -->
			<!-- 			<a href='#' id="add-content">註冊及了解更多</a> -->
			<!-- 			<a href='#' id="login-content">登入</a> -->

			<div class="text-center">
				<p>

                 本練習讓你在四個星期内，做不同的正向心理學練習，包括：三件美好的事、傳達感恩的信、細味生活練習和樂觀練習。希望你能培養習慣，並在研究計劃完成後繼續做這些練習。

<br/>在這個計劃中，你也有機會寫下行動計劃，幫助你減低高風險的不安全性行為
</p>





				
			</div>
		</div>
			
		</div>
							<div class="col-md-1 col-lg-1 hidden-xs hidden-sm"></div>

	</div>
	
	
</div>


	<footer  class="footer  navbar-fixed-bottom">
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
				<p class="footer-links"><a href="/phoenix_test/land/experiment/index"><img style="height: 50px;" alt="" src="/phoenix_test/AdminLTE-2.4.2/media/logo_2.png"></a></p>
			</div>
		</div>
	</footer>

</body>

	<script src=" //cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src=" //cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<script src="/phoenix_test/AdminLTE-2.4.2/media/common.js"></script>
</html>
