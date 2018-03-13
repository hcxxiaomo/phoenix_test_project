<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>PHOENIX</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="/phoenix_test/AdminLTE-2.4.2/bootstrap/css/bootstrap.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/phoenix_test/AdminLTE-2.4.2/plugins/font-awesome/css/font-awesome.css">
  <!-- Ionicons -->
<!--   <link rel="stylesheet" href="/phoenix_test/AdminLTE-2.4.2/bower_components/Ionicons/css/ionicons.min.css"> -->
  <link rel="stylesheet" href="https://cdn.bootcss.com/ionicons/4.0.0-18/collection/icon/icon.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/phoenix_test/AdminLTE-2.4.2/dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="/phoenix_test/AdminLTE-2.4.2/plugins/iCheck/square/blue.css">

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
    <p class="login-box-msg">Register a new membership</p>

    <form action="/phoenix_test/AdminLTE-2.4.2/index.html" method="post">
<!--       <div class="form-group has-feedback">
        <input type="text" class="form-control" placeholder="Full name">
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div> -->
      
      
    <!--   <div class="form-group has-feedback">
        <input type="email" class="form-control" placeholder="Email">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div> -->
      <div id="show_validate" class="form-group has-feedback">
       <input  id="email"  type="email" class="form-control" placeholder="Email">
        <span class="glyphicon glyphicon-paste form-control-feedback"></span>
      </div>
            <div class="row">
        <div class="col-xs-8">
           <div class="form-group has-feedback">
        <input id="validate_code" type="text" class="form-control" placeholder="Validate code">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
          <a href="javascript:validateEmail()" id="get_code" class="btn btn-info btn-block btn-flat">Get Code</a>
        </div>
        <!-- /.col -->
      </div>
      <div class="form-group has-feedback">
        <input id="password" type="password" class="form-control" placeholder="Password">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
    <!--   <div class="form-group has-feedback">
        <input type="password" class="form-control" placeholder="Retype password">
        <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
      </div> -->
      <div class="row">
        <div class="col-xs-8">
         <!--  <div class="checkbox icheck">
            <label>
              <input type="checkbox"> I agree to the <a href="#">terms</a>
            </label>
          </div> -->
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
<!--           <button type="submit" class="btn btn-primary btn-block btn-flat">Register</button> -->
        </div>
        <!-- /.col -->
      </div>

    </form>

    <div class="social-auth-links text-center">
<!--       <p>- OR -</p> -->
      <a href="javascript:register()" class="btn btn-block  btn-success  btn-flat">Register</a>
<!--       <a href="#" class="btn btn-block  btn-info btn-flat">Login</a> -->
    </div>

    <a href="login.html" class="text-center">I already have a membership</a>
  </div>
  <!-- /.form-box -->
</div>
<!-- /.register-box -->

<!-- jQuery 3 -->
<script src="/phoenix_test/AdminLTE-2.4.2/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- jQuery form -->
<script src="/phoenix_test/AdminLTE-2.4.2/plugins/jQuery/jquery.form.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="/phoenix_test/AdminLTE-2.4.2/bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="/phoenix_test/AdminLTE-2.4.2/plugins/iCheck/icheck.min.js"></script>
<!-- message -->
<script src="/phoenix_test/AdminLTE-2.4.2/plugins/jQuery/base-message.js"></script>
<!-- modal -->
<script src="/phoenix_test/AdminLTE-2.4.2/plugins/jQuery/base-modal.js"></script>
<script>
  $(function () {
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
	}
	
	function register(){
		//邮件
	var email = $("#email").val();
	if ($.trim(email) == '') {
		modals.warn({text:'邮箱地址不能为空'});
		return ;
	}
		//邮件
	var validate_code = $("#validate_code").val();
	if ($.trim(validate_code) == '') {
		modals.warn({text:'地址验证码不能为空'});
		return ;
	}
		//密码长度校验
	var password = $("#password").val();
	 var mediumRegex = new RegExp("^(?=.{8,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g"); 
	if (!mediumRegex.test(password)) {
		modals.warn({text:'密码必须为8位及以上，并且包含字母、数字、特殊字符三项中至少两项'});
		return;
	}

		
		$.post("/phoenix_test/userInfo/register",{
			email:$.trim(email)
			,validate_code:$.trim(validate_code)
			,password:password
			},function(result){
			if(result.ok){
				  modals.confirm("注册成功,确认后马上进入登录界面", function () {
// 					  console.info("modals.confirm.data="+data);
				window.location.href  = '/phoenix_test/login';
		            });
// 				modals.correct({title:'注册成功',text:"马上进入登录界面"});
			}else{
				modals.error({text:result.msg});
			}
		},"json");
	}
</script>
</body>
</html>
