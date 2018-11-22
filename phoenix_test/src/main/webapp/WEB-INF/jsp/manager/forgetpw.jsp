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
<link rel="stylesheet"
	href=" //cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/phoenix_test/AdminLTE-2.4.2/media/styles.css">
<link rel="stylesheet" href="/phoenix_test/AdminLTE-2.4.2/media/main.css">
<script src=" //cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script
	src=" //cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container" style="padding: 40px;">

		<div class="row visible-on">
			<div class="col-md-1 col-lg-1 hidden-xs hidden-sm"></div>
			<div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">

				<div class="card">
			<h1 class="text-primary">忘記密碼</h1>
			<div class="container">
			<div class="row">
                        <div class="col-md-offset-2 col-md-6">
                            <form class="form-horizontal" style="text-align: left;">
                                <span class="heading text-primary" >電郵地址</span>
                                <div class="form-group">
                                    <input type="email" class="form-control" id="inputEmail" placeholder="電郵地址">
                                </div>
                                
                                <div id="input_code_div"  class=" hide">
	                                <span class="heading text-primary" >驗證碼</span>
	                                <div class="form-group">
	                                    <input type="text" class="form-control" id="inputCode" placeholder="驗證碼">
	                                </div>
<!--                                 </div> -->
<!--                                 <div id="input_pass_div"  class=" hide"> -->
                                <span class="heading text-primary" >新密碼</span>
                                <div class="form-group">
                                    <input type="password" class="form-control" id="inputPassword" placeholder="密碼">
                                </div>
                                </div>
                            </form>
                        </div>
                    </div>
			</div>
			<a href='javascript:void(0)' onclick="submit1()" id="code" class="add-content">获取驗證碼</a>
			<a href='javascript:void(0)' onclick="submit2()" id="pass" class="add-content hide">修改密码</a>
		</div>
				
			</div>
			<div class="col-md-1 col-lg-1   hidden-xs hidden-sm"> </div>
		</div>
	</div>
	
		<footer  class="footer    navbar-fixed-bottom">
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

<script>
	function submit1() {
		
		 if (!isMailAvailable($("#inputEmail").val())) {
			 alert("請輸入正確的電郵地址");
			 return;
		}

		$.post("/phoenix_test/land/forget_password_send_code", {
			inputEmail : $('#inputEmail').val()
		}, function(result) {
			if (result.success) {
				alert("驗證碼已經發送成功，請輸入郵箱中的驗證碼，並輸入新密碼");
				$('#inputEmail').attr("readonly","readonly")
				$("#code").hide();
				$("#pass").show();
				$("#input_code_div").show();
			} else {
				alert("驗證碼未發送成功，請檢查帳號是否正確");
			}
		}, "json");
	}
	function submit2() {
		
// 		 if (!isMailAvailable($("#inputEmail").val())) {
// 			 alert("請輸入正確的電郵地址");
// 			 return;
// 		}
		 
		 if (!$("#inputCode").val()) {
			 alert("請輸入正確的驗證碼");
			 return;
		}
		 
		 if (!$("#inputPassword").val() || $("#inputPassword").val().length < 8) {
			 alert("請輸入新密碼,至少為8位數");
			 return;
		}
		
		
		$.post("/phoenix_test/land/forget_password_new_password", {
			inputEmail : $('#inputEmail').val()
			,inputCode:$('#inputCode').val()
			,inputPassword:$('#inputPassword').val()
		}, function(result) {
			if (result.success) {
			 alert("密碼修改成功，即將進入登入頁面");
				window.location.href = result.page;
			} else {
				var c = confirm(result.msg);
			}
		}, "json");
	}
	
	   var mailReg = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
	   function isMailAvailable(mail){
	       if(mailReg.test(mail)){
	           return true;
	       }else{
	           return false;
	       }
	   }
</script>
</html>
