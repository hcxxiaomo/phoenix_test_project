<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>menu</title>
</head>
<body>
<ul class="nav navbar-nav navbar-right">
        <li class="nav-item"><a href="/phoenix_test/land/experiment/index">主頁</a></li>
        <li class="nav-item"><a href="/phoenix_test/land/experiment/ppi">什麼是正向心理學?</a></li>
        <li class="nav-item"><a href="/phoenix_test/land/experiment/today">問卷</a></li>
        <li class="nav-item"><a href="javascript:void(0)" onclick="goTest(1)">練習一(日子-日子/月份)</a></li>
        <li class="nav-item"><a href="javascript:void(0)" onclick="goTest(2)">練習二(日子-日子/月份)</a></li>
        <li class="nav-item"><a href="javascript:void(0)" onclick="goTest(3)">練習三(日子-日子/月份)</a></li>
        <li class="nav-item"><a href="javascript:void(0)" onclick="goTest(4)">練習四(日子-日子/月份)</a></li>
        <li class="nav-item"><a class="nav-link " href="#">行动计划</a></li>
        <li class="nav-item"><a class="nav-link " href="#">檢視訓練記錄</a></li>
        <li class="nav-item"><a class="nav-link " href="/phoenix_test/land/experiment/notice">使用指南</a></li>
        <li class="nav-item"><a class="nav-link " href="#">你好， ${sessionScope.user.name} </a></li>
        <li class="nav-item"><a class="nav-link "  href="javascript:void(0)" onclick="logout()">登出</a></li>
        </ul>
</body>
</html>