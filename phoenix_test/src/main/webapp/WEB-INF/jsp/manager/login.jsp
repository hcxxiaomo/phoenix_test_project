<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>PHOENIX</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="/phoenix_test/AdminLTE-2.4.2/bootstrap/css/bootstrap.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="/phoenix_test/AdminLTE-2.4.2/plugins/font-awesome/css/font-awesome.css">
<!-- Ionicons -->
<!--   <link rel="stylesheet" href="/phoenix_test/AdminLTE-2.4.2/bower_components/Ionicons/css/ionicons.min.css"> -->
<link rel="stylesheet"
	href="https://cdn.bootcss.com/ionicons/4.0.0-18/collection/icon/icon.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="/phoenix_test/AdminLTE-2.4.2/dist/css/AdminLTE.min.css">
<!-- iCheck -->
<link rel="stylesheet"
	href="/phoenix_test/AdminLTE-2.4.2/plugins/iCheck/square/blue.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<!--   <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic"> -->
</head>
<body class="hold-transition register-page">
	<div class="register-box">
		<div class="register-logo">
			<b>PHOENIX</b>TEST
		</div>

		<div class="register-box-body">
			<p class="login-box-msg">登錄</p>

			<form action="../../index2.html" method="post">
				<div class="form-group has-feedback">
					<input type="email" id="email" class="form-control"
						placeholder="Email"> <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" id="password" class="form-control"
						placeholder="Password"> <span
						class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="row">
					<div class="col-xs-8">
						<!-- <div class="checkbox icheck">
            <label>
              <input type="checkbox"> Remember Me
            </label>
          </div> -->
					</div>
					<!-- /.col -->
					<div class="col-xs-4">
						<a href="javascript:login()"
							class="btn btn-primary btn-block btn-flat">登錄</a>
					</div>
					<!-- /.col -->
				</div>
			</form>
			<a href="#">忘記密碼</a><br /> <a
				href="/phoenix_test/register" class="text-center">註冊</a>
		</div>
		<!-- /.form-box -->
	</div>
	<!-- /.register-box -->

	<!-- jQuery 3 -->
	<script
		src="/phoenix_test/AdminLTE-2.4.2/plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<!-- jQuery form -->
	<script
		src="/phoenix_test/AdminLTE-2.4.2/plugins/jQuery/jquery.form.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script
		src="/phoenix_test/AdminLTE-2.4.2/bootstrap/js/bootstrap.min.js"></script>
	<!-- iCheck -->
	<script src="/phoenix_test/AdminLTE-2.4.2/plugins/iCheck/icheck.min.js"></script>
	<!-- message -->
	<script
		src="/phoenix_test/AdminLTE-2.4.2/plugins/jQuery/base-message.js"></script>
	<!-- modal -->
	<script src="/phoenix_test/AdminLTE-2.4.2/plugins/jQuery/base-modal.js"></script>
	<script>
		/*   $(function () {
		 $('input').iCheck({
		 checkboxClass: 'icheckbox_square-blue',
		 radioClass: 'iradio_square-blue',
		 increaseArea: '20%' // optional
		 });
		 });
		
		 function validateEmail(){
		
		 if ($("#get_code").hasClass("disabled")){
		 return;
		 }
		
		 var email = $("#email").val();
		 if ($.trim(email) == '') {
		 modals.warn({text:'请输入邮箱地址'});
		 return ;
		 }
		 if (!emailCheck(email)) {
		 modals.warn({text:'请输入正确的邮箱地址，必须包括 ( @ 和 . )'});
		 return ;
		 }
		 $.post("/phoenix_test/userInfo/sendEmail",{email:email},function(result){
		 if(result.ok){
		 modals.correct({title:'验证码发送成功',text:"请进入"+email+"邮箱中查看验证码！"});
		 settime();
		 }else{
		 modals.error({text:result.msg});
		 }
		 },"json");
		 }

		 var countdown=60; 

		 function settime() {
		 var obj = $("#get_code");
		 // 		console.info(countdown);
		 if (countdown == 0) {
		 obj.removeClass('disabled');
		 obj.html("Get Code");
		 countdown = 60;
		 return;
		 } else {
		 obj.addClass("disabled");
		 obj.html("Wait (" + countdown + ")");
		 countdown--;
		 }
		 setTimeout(function() {
		 settime()
		 }, 1000)
		 }

		 function emailCheck(emailStr) {
		 // 	var emailStr=document.all.form1.tel.value;
		 // 	alert(emailStr);
		 var emailPat = /^(.+)@(.+)$/;
		 var matchArray = emailStr.match(emailPat);
		 if (matchArray == null) {
		 // 		alert("电子邮件地址必须包括 ( @ 和 . )")
		 return false;
		 }
		 return true;
		 } */

		function login() {
			//邮件
			var email = $("#email").val();
			if ($.trim(email) == '') {
				modals.warn({
					text : '郵箱地址不能為空'
				});
				return;
			}
			//密码长度校验
			var password = $("#password").val();
			if ($.trim(password) == '') {
				modals.warn({
					text : '密碼不能為空'
				});
				return;
			}

			$.post("/phoenix_test/userInfo/login", {
				username : $.trim(email),
				password : password
			}, function(result) {
				if (result) {
					modals.confirm("登錄成功，確認後馬上進入管理介面", function() {
						// 				window.location.href  = '/phoenix_test/login';
						window.location.href = '/phoenix_test/manager/';
					});
					// 				modals.correct({title:'登录成功',text:"马上进入管理界面"});
				} else {
					modals.error({
						text : '用戶名或密碼錯誤'
					});
				}
			}, "json");
		}
	</script>
</body>
</html>
