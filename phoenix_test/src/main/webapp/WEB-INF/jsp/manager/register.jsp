<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>HeHe Journals</title>
	<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
	    <link rel="stylesheet" href="/phoenix_test/AdminLTE-2.4.2/media/styles.css">
	    <link rel="stylesheet" href="/phoenix_test/AdminLTE-2.4.2/media/main.css">

</head>
<body>

<div class="container"  style="padding: 40px;">
	
		<div class="row visible-on">
		<div class="col-md-3 col-lg-3 hidden-xs hidden-sm">
			
			
		</div>
		<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6" >
			
			<div class="card">
					<h1 class="text-primary">註冊</h1>
					<p class="text-center">您已通過測試，現在可註冊此活動</p>
					<!-- 			<h3>This page demonstrates how you can create a footer with flexbox which always sticks to the bottom of the page, regardless of how much conotent there is.</h3> -->

					<!-- <div  class="text-center">
				<p>Lorem ipsunis dis parturient montes, nascetur ridiculus mus.</p>
			</div> -->
					<div class="container">
						<div class="row">
							<div class="offset-md-3 col-md-6">
								<form class="form-horizontal" id="ajaxForm"  style="text-align: left;">
									<span class="heading text-primary">電郵地址</span>
									<div class="form-group">
										<input type="email" class="form-control" id="inputEmail" name="inputEmail"
											placeholder="電郵地址">
											<span style="color:red">*</span>
									</div>

									<span class="heading text-primary">密碼</span>
									<div class="form-group">
										<input type="password" class="form-control" id="inputPassword" name="inputPassword"
											placeholder="密碼">
											<span style="color:red">*</span>
									</div>

									<span class="heading text-primary">用戶名稱</span>
									<div class="form-group">
										<input type="text" class="form-control" id="inputName" name="inputName"
											placeholder="用戶名稱">
											<span style="color:red">*</span>
									</div>

									<span class="heading text-primary">電話號碼</span>
									<div class="form-group">
										<input type="text" class="form-control" id="inputTelephone" name="inputTelephone"
											placeholder="電話號碼">
											<span style="color:red">*</span>
									</div>

									<span class="heading text-primary">地址（供郵寄禮券）</span>
									<div class="form-group">
										<input type="text" class="form-control" id="inputAddress" name="inputAddress"
											placeholder="地址（供郵寄禮券）"
											<span style="color:red">*</span>>
									</div>

									<div class="form-group">
										<div class="main-checkbox">
											<input type="checkbox" value="None" id="checkbox1"
												name="check">我明白及同意遵守有關 <a href="disclaimer.html">
												條款及細則</a><span style="color:red">*</span>>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<a  href='javascript:void(0)' onclick="submit()"  id="add-content">注册</a>
				</div>
		</div>
		<div class="col-md-3 col-lg-3   hidden-xs hidden-sm" >
		
			
		</div>
	</div>
	
	
</div>


	<footer  class="footer ">
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
				<p class="footer-links"><img style="height: 50px;" alt="" src="/phoenix_test/AdminLTE-2.4.2/media/logo_2.png"></p>
			</div>
		</div>
	</footer>

</body>

	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.min.js" integrity="sha384-FzT3vTVGXqf7wRfy8k4BiyzvbNfeYjK+frTVqZeNDFl8woCbF0CYG6g2fMEFFo/i" crossorigin="anonymous"></script>
	
	
		<script type="text/javascript">
		
		var options = {
			    url: "/phoenix_test/land/register_check", //提交地址：默认是form的action,如果申明,则会覆盖
			    type: "post",   //默认是form的method（get or post），如果申明，则会覆盖
			    beforeSubmit: beforeCheck, //提交前的回调函数
			    success: successfun,  //提交成功后的回调函数
			    //target: "#output",  //把服务器返回的内容放入id为output的元素中
			    dataType: "json", //html(默认), xml, script, json...接受服务端返回的类型
			    clearForm: true,  //成功提交后，是否清除所有表单元素的值
			    resetForm: true,  //成功提交后，是否重置所有表单元素的值
			    timeout: 3000     //限制请求的时间，当请求大于3秒后，跳出请求
			};
		
		function submit(){
			 $("#ajaxForm").ajaxSubmit(function () {
                 console.info("提交成功2");
             });
			
	}
		//表单提交前，数据校验
		/*
		 * formData：表单元素数组对象，数组里面每一个元素都是一个<input>元素，可以通过.name、.value的方式访问元素
		 * 提交表单时，Form插件会以Ajax方式自动提交这些数据，格式如：[{name:user,value:val },{name:pwd,value:pwd}]
		 * form: jQuery对象，封装了表单的元素
		 * options: options对象
		 * */
		function beforeCheck(formData, form, options){
			 for (var i = 0; i < formData.length; i++) {
			        //打印每一个元素的name属性和value值
			        console.info(formData[i].name + "  " + formData[i].value);
			        if (!$.trim(formData[i].value)) {
			        	 alert("必填项不能为空");
						return false;
					}
			    }
			 
			 if(!$('#checkbox1').is(':checked')) {
				 alert("请先同意遵守有關條款及細則");
				 return false;
			 }
			 if (!isMailAvailable($("#inputEmail").val())) {
				 alert("请输入正确的邮箱地址");
				 return false;
			}
		}
		 function successfun(data, status) {
			    //data是提交成功后的返回数据，status是提交结果 比如success
			    //返回数据的类型是通过options对象里面的dataType定义的，比如json、xml，默认是html

			    //这里data.success是因为我后天返回的json数据的一个属性 String jsonText = "{'success':'提交成功'}";
			    console.info(data.success + "  " + status);
			    if(result.success){
					window.location.href = 'check_code.html';
				}else{
					var c = confirm("抱歉，验证码发送错误，请确认邮箱地址正确后再次提交数据!")
// 					if (c == true || c == false) {
// 					window.location.href = 'landing.html';
// 					}
				}
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
