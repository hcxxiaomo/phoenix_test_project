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

	<div class="container" style="padding: 40px;">

		<div class="row visible-on">
			<div class="col-md-1 col-lg-1 hidden-xs hidden-sm"></div>
			<div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">

				<div class="card">
					<!-- 			<h3>This page demonstrates how you can create a footer with flexbox which always sticks to the bottom of the page, regardless of how much conotent there is.</h3> -->
					<!-- 			<a href='#' id="add-content">註冊及了解更多</a> -->
					<!-- 			<a href='#' id="login-content">登入</a> -->

					<div>
						<form class="form-horizontal" style="text-align: left;">
							<span class="heading text-primary">電郵地址</span>
							<div class="form-group">
								<input  type="email" class="form-control" id="email" readonly="readonly" value="${sessionScope.email }"
									placeholder="電郵地址">
							</div>
							<span class="heading text-primary">驗證碼[區分大小寫]</span>
							<div class="form-group">
								<input type="text" class="form-control" id="inputCode"
									placeholder="驗證碼(請檢查被攔截的郵箱)">
							</div>

						</form>

						<a href='javascript:void(0)' onclick="submit()" id="add-content">提交</a>


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

<script>
	function submit() {
		
		$.post("/phoenix_test/land/check_code_post", {
			inputCode : $('#inputCode').val()
		}, function(result) {
			if (result.success) {
				window.location.href =  result.page;
			} else {
				var c = confirm("抱歉，验证码错误，请仔细检查邮箱!")
			}
		}, "json");
	}
</script>
</html>
