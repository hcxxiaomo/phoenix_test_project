<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>HeHe Journals</title>
<link rel="stylesheet"
	href=" //cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/phoenix_test/AdminLTE-2.4.2/media/styles.css">
<link rel="stylesheet" href="/phoenix_test/AdminLTE-2.4.2/media/main.css">


<script src=" //cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script
	src=" //cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
        <li class="nav-item"><a href="/phoenix_test/land/experiment/today">練習一(日子-日子/月份)</a></li>
        <li class="nav-item"><a href="/phoenix_test/land/experiment/today">練習二(日子-日子/月份)</a></li>
        <li class="nav-item"><a href="/phoenix_test/land/experiment/today">練習三(日子-日子/月份)</a></li>
        <li class="nav-item"><a href="/phoenix_test/land/experiment/today">練習四(日子-日子/月份)</a></li>
        <li class="nav-item"><a class="nav-link " href="#">行动计划</a></li>
        <li class="nav-item"><a class="nav-link " href="#">檢視訓練記錄</a></li>
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
					<table  class="table table-striped"> <!--   border="1"  style="text-align:left; border-collapse:collapse;" -->
  <tbody>
 <tr>
  <td > 时间 </td>
  <td  > 需要完成的問卷 </td>
  <td  > 是否完成  </td>
 </tr>
 
 <c:forEach items="${ obj.list}" var="row" varStatus="status">
  <tr>
 	<td>${row.date}</td> 
 	<td>${row.info}</td>
 	<td>
 		<c:choose>
 			<c:when test="${row.done == 1}"><span class="glyphicon  glyphicon-ok" aria-label="已完成" aria-hidden="false"></span></c:when>
 			<c:when test="${row.done == 2}"><span class="glyphicon  glyphicon-remove" aria-label="未完成"  aria-hidden="true"></span></c:when>
 			<c:otherwise><span class="glyphicon  glyphicon-unchecked" aria-label="待完成"  aria-hidden="true"></span></c:otherwise>
 		</c:choose>
 	</td>
 </tr>
 </c:forEach>
 
 
</tbody></table>

<div class="alert alert-info text_l" role="alert" >
  <span class="glyphicon glyphicon-ok" aria-hidden="true"></span> 已经完成的项目<br/>
  <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> 过时而未完成的项目<br/>
  <span class="glyphicon glyphicon-unchecked" aria-hidden="true"></span> 待完成的项目<br/>
</div>

				</div>


			</div>
			<div class="col-md-1 col-lg-1   hidden-xs hidden-sm"></div>
		</div>
	</div>

	<footer class="footer   navbar-fixed-bottom">
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
<script src="/phoenix_test/AdminLTE-2.4.2/media/common.js"></script>
</html>
