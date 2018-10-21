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
  <!-- Bootstrap 3.3.5 -->
  <link rel="stylesheet" href="/phoenix_test/AdminLTE-2.4.2/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href=" //maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href=" //code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/phoenix_test/AdminLTE-2.4.2/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="/phoenix_test/AdminLTE-2.4.2/dist/css/skins/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src=" //oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src=" //oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">


  <!-- Content Wrapper. Contains page content -->
  <div>
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        歡迎參與PHOENIX測試
        <small>預選</small>
      </h1>
    </section>

    <!-- Main content -->
    <section class="content" style="width: 1000px;margin: 0 auto;">
          <div class="box  box-info">
            <div class="box-header with-border">
              <h3 class="box-title">請先完成以下題目</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <form role="form">

                <!-- checkbox -->
                <div class="form-group">
                 <label>1、多選題1</label>
                  <div class="checkbox">
                    <label>
                      <input name="test1"  type="checkbox" value="A">
                      多選 1
                    </label>
                  </div>

                  <div class="checkbox">
                    <label>
                      <input name="test1"  type="checkbox"  value="B">
                      多選 2
                    </label>
                  </div>

                  <div class="checkbox">
                    <label>
                      <input name="test1"  type="checkbox"   value="C">
                      多選 3
                    </label>
                  </div>
                </div>

                <!-- radio -->
                <div class="form-group">
                <label>2、單選題1</label>
                  <div class="radio">
                    <label>
                      <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" >
                      Option one is this and that&mdash;be sure to include why it's great
                    </label>
                  </div>
                  <div class="radio">
                    <label>
                      <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                      Option two can be something else and selecting it will deselect option one
                    </label>
                  </div>
                  <div class="radio">
                    <label>
                      <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
                      Option three is 
                    </label>
                  </div>
                </div>

              <!-- /.box-body -->
              <div class="box-footer">
                  <a href="javascript:reset()"  class="btn btn-default">重置</a>
                <a href="javascript:submit()" class="btn btn-info pull-right">提交</a>
              </div>
              <!-- /.box-footer -->
              </form>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer style="width: 1000px;margin: 0 auto;">
    <div class="pull-right hidden-xs">
      <b>Version</b> 1.0.1
    </div>
    <strong>Copyright &copy; 2017-2018 <a href="#">PHOENIX Studio</a>.</strong> All rights reserved.
  </footer>

</div>
<!-- ./wrapper -->

<script type="text/javascript">
function submit(){
	
	var test1Ids = getCheckAdIds();
	if ($.trim(test1Ids) == '') {
		modals.warn({text:'多選題至少需要一個答案！'});
		return ;
	}
	
	var radio = getRadio();
	if ($.trim(radio) == '') {
		modals.warn({text:'單選題至少需要一個答案！'});
		return ;
	}
	
	$.post("/phoenix_test/basic/answer",{
		test1Ids:test1Ids
		,radio:radio
		},function(result){
		if(result){
			  modals.confirm("答案通過，歡迎註冊帳戶", function () {
//				window.location.href  = '/phoenix_test/login';
			window.location.href  = '/phoenix_test/register/';
	            });
//				modals.correct({title:'登录成功',text:"马上进入管理界面"});
		}else{
			modals.error({text:'答案未通過，謝謝您的參與'});
		}
	},"json");
}

function getCheckAdIds() {
    var test1Ids = "";  
    $("input:checkbox[name=test1]:checked").each(function(i){  
        if(0==i){  
        	test1Ids = $(this).val();  
        }else{  
        	test1Ids += (","+$(this).val());  
        }  
    });  
    console.info(test1Ids);  
    return test1Ids;  
}  

function getRadio(){
	var val = $('input:radio[name="optionsRadios"]:checked').val();
	console.info(val);  
    return val;
}

function reset(){
	$('input:checkbox').attr("checked", false);
	$('input:radio').attr("checked", false);
}
</script>

<!-- jQuery 2.1.4 -->
<script src="/phoenix_test/AdminLTE-2.4.2/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- Bootstrap 3.3.5 -->
<script src="/phoenix_test/AdminLTE-2.4.2/bootstrap/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="/phoenix_test/AdminLTE-2.4.2/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="/phoenix_test/AdminLTE-2.4.2/dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/phoenix_test/AdminLTE-2.4.2/dist/js/demo.js"></script>
<!-- jQuery form -->
<script src="/phoenix_test/AdminLTE-2.4.2/plugins/jQuery/jquery.form.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="/phoenix_test/AdminLTE-2.4.2/plugins/iCheck/icheck.min.js"></script>
<!-- message -->
<script src="/phoenix_test/AdminLTE-2.4.2/plugins/jQuery/base-message.js"></script>
<!-- modal -->
<script src="/phoenix_test/AdminLTE-2.4.2/plugins/jQuery/base-modal.js"></script>
</body>
</html>
