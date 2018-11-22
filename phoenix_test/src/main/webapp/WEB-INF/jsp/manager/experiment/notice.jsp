<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>HeHe Journals</title>
<link rel="stylesheet"
	href="/phoenix_test/AdminLTE-2.4.2/media/main.css">
<link rel="stylesheet"
	href="/phoenix_test/AdminLTE-2.4.2/media/styles.css">
<link rel="stylesheet"
	href=" //cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
		<jsp:include page="panel.jsp"></jsp:include>
	       <jsp:include page="menu.jsp"></jsp:include>
	<div class="container" style="padding: 40px;">

				<div class="row visible-on">
			<div class="col-md-1 col-lg-1 hidden-xs hidden-sm"></div>
			<div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">

				<div class="card">
					<h1 class="text-primary">使用指南</h1>
			<!-- 			<h3>This page demonstrates how you can create a footer with flexbox which always sticks to the bottom of the page, regardless of how much conotent there is.</h3> -->
			<!-- 			<a href='#' id="add-content">註冊及了解更多</a> -->
			<!-- 			<a href='#' id="login-content">登入</a> -->

			<div class="text-center">
				<p class="text-primary text-center">
                   請在網頁上依次完成以下三步Mission，完成所有mission，除了提升你的精神健康和性健康，還可以獲得最多$250超市禮券！</p>

<p>
<strong >Mission 1「問卷」</strong><br/>

- 請先完成問卷，需在註冊後<strong>兩週內</strong>完成<br/>

<strong >Mission 2 「正向心理學練習 + 行動計劃」</strong><br/>

- 每週有不同的訓練，需在特定的時間内做，共四週<br/>

- 行動計劃在第二週開始<br/>

<strong >Mission 3 「問卷」</strong><br/>

- 四週任務後，請完成問卷A，<strong>三個月</strong>後會發佈問卷B，兩份問卷都需在<strong>兩週內</strong>完成<br/>
</p>


			<a href='/phoenix_test/land/experiment/notice_ok' id="add-content">我同意</a>

				
			</div>
				
				</div>
			</div>
			<div class="col-md-1 col-lg-1 hidden-xs hidden-sm"></div>
		</div>


	</div>


	<footer class="footer  navbar-fixed-bottom">
		<div class="footer-limiter">
			<!-- <div class="row" style="color: white;">
  <div class="col-6 col-md-4">.col-6 .col-md-4</div>
  <div class="col-6 col-md-4">.col-6 .col-md-4</div>
  <div class="col-6 col-md-4">.col-6 .col-md-4</div>
</div> -->
			<div class="footer-right">
				<a href="/phoenix_test/land/contact_us.html"><i class="fa "></i>聯絡我們</a> <a
					href="/phoenix_test/land/disclaimer.html"><i class="fa "></i>免責聲明</a> <a
					href="/phoenix_test/land/privacy_policy.html"><i class="fa "></i>隱私政策</a>
			</div>
			<div class="footer-left">
				<p class="footer-links">
					<img style="height: 50px;" alt=""
						src="/phoenix_test/AdminLTE-2.4.2/media/logo_2.png">
				</p>
			</div>
		</div>
	</footer>

</body>

<script src=" //cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script
	src=" //cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>
