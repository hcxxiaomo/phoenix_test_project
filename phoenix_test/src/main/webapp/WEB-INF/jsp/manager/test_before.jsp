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
<link rel="stylesheet"
	href=" //cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>

	<div class="	" style="padding: 40px;">

		<div class="row visible-on">
			<div class="col-md-1 col-lg-1 hidden-xs hidden-sm"></div>
			<div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">

						<div class="card">
			<h1 class="text-primary">條件測試</h1>
			<!-- 			<h3>This page demonstrates how you can create a footer with flexbox which always sticks to the bottom of the page, regardless of how much conotent there is.</h3> -->
			<!-- 			<a href='#' id="add-content">註冊及了解更多</a> -->
			<!-- 			<a href='#' id="login-content">登入</a> -->

			<div >
				<h5>
					請回答下列問題，讓我們了解閣下是否適合參與本活動。感謝您的時間。
				</h5>
				<p>
	1. 請問你的性別是？<br/>
				
				<label for="r1"><input id="r1" type="radio" value="0" name="sex">男</label><br/>
				<label for="r2"><input id="r2" type="radio" value="1" name="sex">女</label>
				<br/>
				</p>
				
				<p>
	2. 你的年齡是？<br/>
				
				<label for="r3"><input id="r3" type="radio" value="0" name="age">小於18歲</label><br/>
				<label for="r4"><input id="r4" type="radio" value="1" name="age">18﹣25歲</label><br/>
				<label for="r5"><input id="r5" type="radio" value="2" name="age">26﹣35歲</label><br/>
				<label for="r6"><input id="r6" type="radio" value="3" name="age">36﹣45歲</label><br/>
				<label for="r7"><input id="r7" type="radio" value="4" name="age">46歲或以上</label>
				<br/>
				</p>
				
				<p>
	3. 你平日一個星期內會否至少使用一次網絡（手機、電腦等任何設備均可）?<br/>
				
				<label for="r8"><input id="r8" type="radio" value="0" name="net">可以</label><br/>
				<label for="r9"><input id="r9" type="radio" value="1" name="net">不可以</label>
				
				<br/>
				</p>
				<p>
	4. 在過去的半年內，你是否至少和另一位男性發生過一次肛交？<br/>
				
				<label for="r10"><input id="r10" type="radio" value="0" name="fuck">是</label><br/>
				<label for="r11"><input id="r11" type="radio" value="1" name="fuck">否</label>
				
				<br/>
				</p>
				<!-- <p>

					本網站的所有資料屬香港中文大學公共衛生及基層醫療學院健康行為研究中心（屬第三者的資料除外），均受知識產權法例及權利（包括但不限於保護版權的法例）所保障。本網站所包含的資訊、文本、圖片、數據或影像檔僅供【HeHe
					Journals】合格參與者在活動期間的個人使用。未經本方事前以書面同意，任何人士不可將本網站之全部或部分複印、修改、傳送、儲存、出版、銷售或作其他任何用途。
				</p> -->


			<a href='javascript:void(0)' onclick="submit()" id="add-content">提交</a>

				
			</div>
		</div>
			</div>
			<div class="col-md-1 col-lg-1   hidden-xs hidden-sm"> </div>
		</div>


	</div>
	
	
<footer  class="footer  ">
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
<script
	src=" //cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<script>
		function submit(){
				var age = '';
				if ( $('input[name="age"]:checked').val() != 0) {
					age = -1 ;
				}
				var str = $('input[name="sex"]:checked').val()+","
				+age
				+","
				+$('input[name="net"]:checked').val()+","
				+$('input[name="fuck"]:checked').val()
				$.post("/phoenix_test/land/answer",{str:str},function(result){
					if(result.success){
						window.location.href = 'register.html';
					}else{
						var c = confirm("抱歉，未能通過測試，謝謝你對本計劃的興趣!")
						if (c == true || c == false) {
						window.location.href = 'landing.html';
						}
					}
				},"json");
		}
	</script>
</html>
