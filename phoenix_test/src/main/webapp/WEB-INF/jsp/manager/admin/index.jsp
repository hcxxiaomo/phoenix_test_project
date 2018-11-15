<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

	<div class="container" style="padding: 40px;">

		<div class="row visible-on">
			<div class="col-md-1 col-lg-1 hidden-xs hidden-sm"></div>
			<div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">

				<div class="card">
			<div class="box-body">
              <table class="table table-bordered table-hover" id="dataTable">
                <tr>
                  <th style="width: 8%;">序号</th>
                                <th style="width: 12%;">姓名</th>
                                <th>邮箱</th>
                                <th>电话</th>
                                <th style="width: 8%;">阶段</th>
                                <th style="width: 8%;">类型</th>
                                <th style="width: 8%;">注册时间</th>
                                <th >操作</th>
                </tr>
                <tbody id="table-sub">
                <c:forEach items="${ obj.rows}" var="user" varStatus="status">
                            <tr  role="button" class="hidInfo hide_info" >
                                <td>${user.id}</td>
                                <td>${user.name}</td>
                                <td>${user.email }</td>
                                <td>${user.telephone }</td>
                                <td>${user.stage }</td>
                                <td>
							<c:choose>
							<c:when test="${user.type == 'experiment' }"><span class="label label-success">實驗組</span></c:when>
							<c:when test="${user.type == 'control' }"><span class="label label-warning">控制組</span></c:when>
							<c:otherwise><span class="label label-danger">未分配</span></c:otherwise>
						</c:choose>
	</td>
                                <td><fmt:formatDate value="${user.createTime}" pattern="yyyy-MM-dd HH:mm:SS" /></td>
                                <td><a  style="width: 100%;" title="查看T0试卷" href="/phoenix_test/manager/t0_result/${user.id}/t0"><span class="glyphicon glyphicon-filter" aria-hidden="true"></span></a></td>
                            </tr>
                   </c:forEach>
                </tbody>
                <!-- <tr>
                  <td>1.</td>
                  <td>Update software</td>
                  <td>
                    <div class="progress progress-xs">
                      <div class="progress-bar progress-bar-danger" style="width: 55%"></div>
                    </div>
                  </td>
                  <td><span class="badge bg-red">55%</span></td>
                </tr>
                 -->
              </table>
            </div>
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
	/* function submit() {
		
		$.post("/phoenix_test/land/login_check", {
			inputEmail : $('#inputEmail').val()
			,inputPassword:$('#inputPassword').val()
		}, function(result) {
			if (result.success) {
				window.location.href = '/phoenix_test/manager/index';
			} else {
				var c = confirm(result.msg);
			}
		}, "json");
	} */
</script>
</html>
