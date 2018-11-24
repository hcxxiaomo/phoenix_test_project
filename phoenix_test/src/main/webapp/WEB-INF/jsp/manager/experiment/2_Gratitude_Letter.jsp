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

<style>
.textarea {width:100%;height:600px;background:url(/phoenix_test/AdminLTE-2.4.2/media/mail_b_01.jpg);border:1px dotted #999666; line-height: 25px; }
</style>
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
					<h1 class="text-primary">本星期任務：每日記錄三件美好的事<br/>傳達感恩的信</h1>
					</c:when>
					<c:when test="${obj.stageParid eq 1}">
					<h1 class="text-primary">本星期任務：對感恩對象寫一封信、訂立有關性健康的行動計劃、每日記錄三件美好的事<br/>傳達感恩的信</h1>
					</c:when>
					<c:when test="${obj.stageParid eq 2}">
					<h1 class="text-primary">本星期任務：每日練習活在當下並記錄感受、跟進有關性健康的行動計劃、每日記錄三件美好的事<br/>傳達感恩的信</h1>
					</c:when>
					<c:when test="${obj.stageParid eq 3}">
					<h1 class="text-primary">本星期任務：樂觀練習、跟進有關性健康的行動計劃、每日練習活在當下並記錄感受、每日記錄三件美好的事<br/>傳達感恩的信</h1>
					</c:when>
				</c:choose>
<!-- 					<h1 class="text-primary">本星期任務：對感恩對象寫一封信、訂立有關性健康的行動計劃、每日記錄三件美好的事<br/>傳達感恩的信</h1> -->
					
					<video src="/phoenix_test/AdminLTE-2.4.2/media/2_Gratitude_Letter.mov" style="width: 100%;"  controls="controls">
						</video>

					<div >
					<form action="/phoenix_test/land/trial_letter_post"  method="post"  onsubmit="return check()">
						<input type="text" name="stage" id="stage" value="${obj.stage }" hidden="hidden">
						<h4>信</h4>

						<p>
							<textarea  id="letter" name="letter" class="textarea" ></textarea>
						</p>
						<h4>在寫信的時候，你有什麼感受？</h4>

						<p>
							<textarea  id="letterFeeling" name="letterFeeling" style="width:100%;height:600px;" ></textarea>
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
function check(){
// 	alert("on...");
	if (!$.trim($("#letter").val())
			||!$.trim($("#letterFeeling").val())
	) {
		alert("傳達感恩的信不能為空，請填寫後提交！");
		return false;
	}
	return true;
}
</script>
</html>
