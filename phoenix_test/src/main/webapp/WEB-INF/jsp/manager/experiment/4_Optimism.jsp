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
</nav> 

	<div class="container" style="padding: 40px;">
	
	

		<div class="row visible-on">
			<div class="col-md-1 col-lg-1 hidden-xs hidden-sm"></div>
			<div class="col-xs-12 col-sm-12 col-md-10 col-md-10">

				<div class="card">
<%-- 				${obj.stage  eq 'e4_1_1'} --%>
<%-- 				${obj.stage} --%>
<%-- 				<c:if test="${obj.stage  eq 'e4_1_1'}">整體生活</c:if> --%>
				
				 <c:choose>
					<c:when test="${obj.stage  eq 'e4_1_1'}"><h1 class="text-primary">${obj.date }-整體生活</h1></c:when>
					<c:when test="${obj.stage  eq 'e4_1_2'}"><h1 class="text-primary">${obj.date }-家庭關系</h1></c:when>
					<c:when test="${obj.stage  eq 'e4_1_3'}"><h1 class="text-primary">${obj.date }-事業</h1></c:when>
					<c:when test="${obj.stage  eq 'e4_1_4'}"><h1 class="text-primary">${obj.date }-健康</h1></c:when>
					<c:when test="${obj.stage  eq 'e4_1_5'}"><h1 class="text-primary">${obj.date }-感情生活</h1></c:when>
					<c:when test="${obj.stage  eq 'e4_1_6'}"><h1 class="text-primary">${obj.date }-社交生活</h1></c:when>
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
					
					<video src="/phoenix_test/AdminLTE-2.4.2/media/4_Optimism.mov" style="width: 100%;"  controls="controls">
						</video>

					<div >
					<form action="/phoenix_test/land/trial_letter_post"  method="post">
						<input type="text" name="stage" id="stage" value="${obj.stage }" hidden="hidden">
<!-- 						<h4>你的第一件開心事</h4> -->

						<p>
							<textarea  id="optimism" name="optimism" rows="20"  style="width:100%" ></textarea>
						</p>
						

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
				<p class="footer-links"><img alt="logo" style="height: 50px;"  src="/phoenix_test/AdminLTE-2.4.2/media/logo_2.png"></p>
			</div>
		</div>
	</footer>

</body>

<script src=" //cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script
	src=" //cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<script src="/phoenix_test/AdminLTE-2.4.2/media/common.js"></script>
</html>
