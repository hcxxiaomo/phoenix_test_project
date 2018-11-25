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
<link rel="stylesheet" href="/phoenix_test/AdminLTE-2.4.2/media/styles.css">
<link rel="stylesheet"
	href=" //cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/phoenix_test/AdminLTE-2.4.2/media/main.css">
<link rel="stylesheet" href="/phoenix_test/AdminLTE-2.4.2/media/jq.dice-menu.min.css">


</head>
<body>
	
		<jsp:include page="panel.jsp"></jsp:include>
	       <jsp:include page="menu.jsp"></jsp:include>

	<div class="container" style="padding: 40px;">
	
	

		<div class="row visible-on">
			<div class="col-md-1 col-lg-1 hidden-xs hidden-sm"></div>
			<div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">

				<div class="card">
					<h1 class="text-primary">目標及行動計劃制定</h1>
					<!-- 			<h3>This page demonstrates how you can create a footer with flexbox which always sticks to the bottom of the page, regardless of how much conotent there is.</h3> -->
					<!-- 			<a href='#' id="add-content">註冊及了解更多</a> -->
					<!-- 			<a href='#' id="login-content">登入</a> -->

					<h4 class="text-primary">上一期你的目標及行動制定如下:</h4>
					<div >
					
<!-- 						<h4>你的第一件開心事</h4> -->
	<p>
	
	1.	關於安全性行為(堅持正確使用安全套)和愛滋病(性傳播疾病)測試, 請制定一個你最希望並能夠在4星期內能完成的目標 (注: 進度和成果能夠便於準確評價, 例如成功預約一次HIV測試, 和伴侶認真進行一次關於堅持戴套的對話等):
	
							<textarea readonly="readonly"  id="target" name="target" rows="3"  style="width:100%" placeholder="">${obj.ti_a_2_map['a_2_target'] }</textarea>
						</p>
						
						<p>2.	請寫出你認為如若此目標能夠達成你能夠最受益的方面是:<br/>
						长期：
							<textarea  readonly="readonly"  id="longGet" name="longGet" rows="3" style="width:100%"  placeholder="">${obj.ti_a_2_map['a_2_longGet'] }</textarea>
						短期：
							<textarea  readonly="readonly"  id="shortGet" name="shortGet" rows="3" style="width:100%"  placeholder="">${obj.ti_a_2_map['a_2_shortGet'] }</textarea>
						</p>
						
						<p>3.	請寫出2-3個你認為實現此目標需要的具體行動計劃:<br/>
						Step 1：
							<textarea  readonly="readonly"  id="step1" name="step1" rows="3" style="width:100%"  placeholder="">${obj.ti_a_2_map['a_2_step1'] }</textarea>
						Step 2：
							<textarea  readonly="readonly"  id="step2" name="step2" rows="3" style="width:100%"  placeholder="">${obj.ti_a_2_map['a_2_step2'] }</textarea>
						Step 3：
							<textarea  readonly="readonly"  id="step3" name="step3"  rows="3" style="width:100%"  placeholder="">${obj.ti_a_2_map['a_2_step3'] }</textarea>
						</p>
						
						<p>4.	請寫出你認為目前會影響此目標實現的2項最主要的困難/問題以及相應的解決方法:<br/>
						A.困難：
							<textarea  readonly="readonly"  id="hard1" name="hard1" rows="2" style="width:35%"  placeholder="">${obj.ti_a_2_map['a_2_hard1'] }</textarea>
							解決方法:
							<textarea  readonly="readonly"  id="hard1sove" name="hard1sove" rows="2" style="width:35%"  placeholder="">${obj.ti_a_2_map['a_2_hard1sove'] }</textarea><br/>
						B.困難：
							<textarea readonly="readonly"  id="hard2" name="hard2" rows="2" style="width:35%"  placeholder="">${obj.ti_a_2_map['a_2_hard2'] }</textarea>
							解決方法:
							<textarea readonly="readonly"  id="hard2sove" name="hard2sove" rows="2" style="width:35%"  placeholder="">${obj.ti_a_2_map['a_2_hard2sove'] }</textarea>
						</p>





<form action="/phoenix_test/land/experiment_action_post"  method="post"   onsubmit="return check()">
	<input type="text" name="stage" id="stage" value="${obj.stage }" hidden="hidden">
		<p>請評價目前該目標完成情況:
		<select id="is_finish" name="is_finish" >
			<option value=""></option>
			<option value="完成">完成</option>
			<option value="未完成">未完成</option>
		</select><p/>
		<div id="not_finish_div"  style="display: none;">
			<p>未完成:
			<select id="not_finish" name="not_finish" >
				<option value=""></option>
				<option value="修改目標並制定新的行動計劃">修改目標並制定新的行動計劃</option>
				<option value="希望堅持完成此目標, 但制定新的行動計劃">希望堅持完成此目標, 但制定新的行動計劃</option>
				<option value="繼續堅持此行動計劃至成功實現目標">繼續堅持此行動計劃至成功實現目標</option>
			</select><p/>
		</div>
		
		<textarea  id="finish_text" name="finish_text"  disabled="disabled" style="display: none;width:100%" rows="3"  placeholder="請輸入感想/反思"></textarea><br/>
		
		
		<div id="new_action_target" style="display: none;" >
		<h4>修改目標並制定新的行動計劃</h4>
		<p>
	
	1.	關於安全性行為(堅持正確使用安全套)和愛滋病(性傳播疾病)測試, 請制定一個你最希望並能夠在4星期內能完成的目標 (注: 進度和成果能夠便於準確評價, 例如成功預約一次HIV測試, 和伴侶認真進行一次關於堅持戴套的對話等):
	
							<textarea  id="a_3_target" name="a_3_target" rows="3"  style="width:100%" placeholder=""></textarea>
						</p>
						
						<p>2.	請寫出你認為如若此目標能夠達成你能夠最受益的方面是:<br/>
						长期：
							<textarea  id="a_3_longGet" name="a_3_longGet" rows="3" style="width:100%"  placeholder=""></textarea>
						短期：
							<textarea  id="a_3_shortGet" name="a_3_shortGet" rows="3" style="width:100%"  placeholder=""></textarea>
						</p>
						
						<p>3.	請寫出2-3個你認為實現此目標需要的具體行動計劃:<br/>
						Step 1：
							<textarea  id="a_3_step1" name="a_3_step1" rows="3" style="width:100%"  placeholder=""></textarea>
						Step 2：
							<textarea  id="a_3_step2" name="a_3_step2" rows="3" style="width:100%"  placeholder=""></textarea>
						Step 3：
							<textarea  id="a_3_step3" name="a_3_step3"  rows="3" style="width:100%"  placeholder=""></textarea>
						</p>
						
						<p>4.	請寫出你認為目前會影響此目標實現的2項最主要的困難/問題以及相應的解決方法:<br/>
						A.困難：
							<textarea  id="a_3_hard1" name="a_3_hard1" rows="2" style="width:35%"  placeholder=""></textarea>
							解決方法:
							<textarea  id="a_3_hard1sove" name="a_3_hard1sove" rows="2" style="width:35%"  placeholder=""></textarea><br/>
						B.困難：
							<textarea  id="a_3_hard2" name="a_3_hard2" rows="2" style="width:35%"  placeholder=""></textarea>
							解決方法:
							<textarea  id="a_3_hard2sove" name="a_3_hard2sove" rows="2" style="width:35%"  placeholder=""></textarea>
						</p>
		</div>
		
		<div id="persist_action_target" style="display: none;" >
		<h4>希望堅持完成此目標, 但制定新的行動計劃</h4>
		<p>
	
						
						<p>1.	請寫出2-3個你認為實現此目標需要的具體行動計劃:<br/>
						Step 1：
							<textarea  id="a_3_persist_step1" name="a_3_persist_step1" rows="3" style="width:100%"  placeholder=""></textarea>
						Step 2：
							<textarea  id="a_3_persist_step2" name="a_3_persist_step2" rows="3" style="width:100%"  placeholder=""></textarea>
						Step 3：
							<textarea  id="a_3_persist_step3" name="a_3_persist_step3"  rows="3" style="width:100%"  placeholder=""></textarea>
						</p>
						
						<p>2.	請寫出你認為目前會影響此目標實現的2項最主要的困難/問題以及相應的解決方法:<br/>
						A.困難：
							<textarea  id="a_3_persist_hard1" name="a_3_persist_hard1" rows="2" style="width:35%"  placeholder=""></textarea>
							解決方法:
							<textarea  id="a_3_persist_hard1sove" name="a_3_persist_hard1sove" rows="2" style="width:35%"  placeholder=""></textarea><br/>
						B.困難：
							<textarea  id="a_3_persist_hard2" name="a_3_persist_hard2" rows="2" style="width:35%"  placeholder=""></textarea>
							解決方法:
							<textarea  id="a_3_persist_hard2sove" name="a_3_persist_hard2sove" rows="2" style="width:35%"  placeholder=""></textarea>
						</p>
		</div>
		
		
	<button type="submit" id="add-content">儲存及繼續</button>
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
				<p class="footer-links"><a href="/phoenix_test/land/index.html"><img alt="logo" style="height: 50px;"  src="/phoenix_test/AdminLTE-2.4.2/media/logo_2.png"></a></p>
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
					
	$("select#is_finish").change(function(){
	    if ($(this).val() == '完成') {
			$("#finish_text").show();
			$("#finish_text").removeAttr("disabled");
			$("#not_finish_div").hide();
		}else{
			$("#finish_text").hide();
			$("#finish_text").attr("disabled","disabled");
			$("#not_finish_div").show();
		}
	 });
	
	$("select#not_finish").change(function(){
	    if ($(this).val() == '修改目標並制定新的行動計劃') {
			$("#new_action_target").show();
			$("#persist_action_target").hide();
			/* $("#finish_text").removeAttr("disabled"); */
	    }else if ($(this).val() == '希望堅持完成此目標, 但制定新的行動計劃') {
			$("#persist_action_target").show();
			$("#new_action_target").hide();
	    }else if ($(this).val() == '繼續堅持此行動計劃至成功實現目標') {
			$("#persist_action_target").hide();
			$("#new_action_target").hide();
			/* $("#finish_text").removeAttr("disabled"); */
			/* $("#finish_text").hide();
			$("#finish_text").attr("disabled","disabled"); */
		}
	 });
					
function open_editor(){
	$("#target").removeAttr("readonly");
	$("#longGet").removeAttr("readonly");
	$("#shortGet").removeAttr("readonly");
	$("#step1").removeAttr("readonly");
	$("#step2").removeAttr("readonly");
	$("#step3").removeAttr("readonly");
	$("#hard1").removeAttr("readonly");
	$("#hard1sove").removeAttr("readonly");
	$("#hard2").removeAttr("readonly");
	$("#hard2sove").removeAttr("readonly");
	
}


function check(){
	if (!$.trim($("#is_finish").val()
			)
	) {
		alert("請評價目前該目標完成情況不能為空，請填寫後提交！");
		return false;
	}
	
	if($("#is_finish").val() == '完成'
		&& 	!$.trim($("#finish_text").val())
	){
		alert("請輸入感想/反思不能為空，請填寫後提交！");
		return false;
	}
	if($("#is_finish").val() == '未完成'
		&& 	!$.trim($("#not_finish").val())
	){
		alert("行動計劃未完成不能為空，請填寫後提交！");
		return false;
	}
	if($("#is_finish").val() == '未完成'
		&& 	$("#not_finish").val() == '修改目標並制定新的行動計劃'
	){
		if (!$.trim($("#a_2_target").val())
			|| 	!$.trim($("#a_2_longGet").val())
			|| 	!$.trim($("#a_2_shortGet").val())
			|| 	!$.trim($("#a_2_step1").val())
			|| 	!$.trim($("#a_2_step2").val())
			|| 	!$.trim($("#a_2_step3").val())
			|| 	!$.trim($("#a_2_hard1").val())
			|| 	!$.trim($("#a_2_hard1sove").val())
			|| 	!$.trim($("#a_2_hard2").val())
			|| 	!$.trim($("#a_2_hard2sove").val())
		) {
			alert("新的行動計劃不能為空，請填寫後提交！");
			return false;
		}
		
	}
	if($("#is_finish").val() == '未完成'
		&& 	$("#not_finish").val() == '希望堅持完成此目標, 但制定新的行動計劃'
	){
		if (!$.trim($("#a_2_persist_step1").val())
			|| 	!$.trim($("#a_2_persist_step2").val())
			|| 	!$.trim($("#a_2_persist_step3").val())
			|| 	!$.trim($("#a_2_persist_hard1").val())
			|| 	!$.trim($("#a_2_persist_hard1sove").val())
			|| 	!$.trim($("#a_2_persist_hard2").val())
			|| 	!$.trim($("#a_2_persist_hard2sove").val())
		) {
			alert("新的行動計劃不能為空，請填寫後提交！");
			return false;
		}
		
	}
	
	return true;
}
</script>

</html>
