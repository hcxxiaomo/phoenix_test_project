<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%--  <!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>menu</title>
</head>
<body> --%>
<!-- Dice Menu, we use font-awesome 4 here -->
		<ul class="jq-dice-menu" default-open="true" layout="column" reverse="false" snap-to="left" offset="10%" show-hints="true" hints-order="top">
	<div class="jq-items">
		<!-- first element as a switch button -->
		<li state="close"><span class="glyphicon glyphicon-th-large"  aria-label="调整"  aria-hidden="true"></span></li>
		
		<c:if test="${fn:length(obj['mapTestInfoPojo']['Optimism']) > 0 }">
		<li>樂觀練習</li>
		 <c:forEach items="${ obj['mapTestInfoPojo']['Optimism']}" var="row" varStatus="status">
		 <li>${row.day} (${row.dateShort }) &nbsp;&nbsp;&nbsp; 
		<c:choose>
 			<c:when test="${row.done == 1}"><span class="glyphicon  glyphicon-ok" aria-label="已完成" aria-hidden="false"></span></c:when>
 			<c:when test="${row.done == 2}"><span class="glyphicon  glyphicon-remove" aria-label="未完成"  aria-hidden="true"></span></c:when>
 			<c:otherwise><span class="glyphicon  glyphicon-unchecked" aria-label="待完成"  aria-hidden="true"></span></c:otherwise>
 		</c:choose>
		</li>
		 </c:forEach>
		</c:if>
		<c:if test="${fn:length(obj['mapTestInfoPojo']['Savoring']) > 0 }">
		<li>活在當下</li>
		 <c:forEach items="${ obj['mapTestInfoPojo']['Savoring']}" var="row" varStatus="status">
		 <li>${row.day} (${row.dateShort }) &nbsp;&nbsp;&nbsp;
		<c:choose>
 			<c:when test="${row.done == 1}"><span class="glyphicon  glyphicon-ok" aria-label="已完成" aria-hidden="false"></span></c:when>
 			<c:when test="${row.done == 2}"><span class="glyphicon  glyphicon-remove" aria-label="未完成"  aria-hidden="true"></span></c:when>
 			<c:otherwise><span class="glyphicon  glyphicon-unchecked" aria-label="待完成"  aria-hidden="true"></span></c:otherwise>
 		</c:choose>
		</li>
		 </c:forEach>
		</c:if>
		<c:if test="${fn:length(obj['mapTestInfoPojo']['Gratitude_Letter']) > 0 }">
		<li>感恩信</li>
		 <c:forEach items="${ obj['mapTestInfoPojo']['Gratitude_Letter']}" var="row" varStatus="status">
		 <li>${row.day} (${row.dateShort }) &nbsp;&nbsp;&nbsp;
		<c:choose>
 			<c:when test="${row.done == 1}"><span class="glyphicon  glyphicon-ok" aria-label="已完成" aria-hidden="false"></span></c:when>
 			<c:when test="${row.done == 2}"><span class="glyphicon  glyphicon-remove" aria-label="未完成"  aria-hidden="true"></span></c:when>
 			<c:otherwise><span class="glyphicon  glyphicon-unchecked" aria-label="待完成"  aria-hidden="true"></span></c:otherwise>
 		</c:choose>
		</li>
		 </c:forEach>
		</c:if>
		
		<c:if test="${fn:length(obj['mapTestInfoPojo']['Three_good_things']) > 0 }">
		<li>三件美好的事</li>
		 <c:forEach items="${ obj['mapTestInfoPojo']['Three_good_things']}" var="row" varStatus="statu s">
		 <li>${row.day} (${row.dateShort })  &nbsp;&nbsp;&nbsp;
		<c:choose>
 			<c:when test="${row.done == 1}"><span class="glyphicon  glyphicon-ok" aria-label="已完成" aria-hidden="false"></span></c:when>
 			<c:when test="${row.done == 2}"><span class="glyphicon  glyphicon-remove" aria-label="未完成"  aria-hidden="true"></span></c:when>
 			<c:otherwise><span class="glyphicon  glyphicon-unchecked" aria-label="待完成"  aria-hidden="true"></span></c:otherwise>
 		</c:choose>
		</li>
		 </c:forEach>
		</c:if>
		
		<!-- <li><span class="fa fa-github" href="https://github.com" hint="Github"></span></li>
		<li>第一日(11/20) &nbsp;&nbsp;&nbsp;<span class="glyphicon  glyphicon-remove" aria-label="未完成"  aria-hidden="true"></span></li>
		<li>第二日(11/21) &nbsp;&nbsp;&nbsp;<span class="glyphicon  glyphicon-ok" aria-label="已完成" aria-hidden="true"></span></li>
		<li>第三日(11/22) &nbsp;&nbsp;&nbsp;<span class="glyphicon  glyphicon-unchecked" aria-label="待完成"  aria-hidden="true"></span></li>
		<li><span class="fa fa-yahoo" href="https://hk.yahoo.com"></span></li>
		<li><span class="fa fa-phone" href="tel:+85299887766" hint="Call to hotline"></span></li>
		<li><span class="fa fa-envelope" href="mailto:donotreply@github.com" hint="Email for support"></span></li>
		<li><span class="fa fa-angle-double-up" href="https://github.com"></span></li> -->
	</div>
	<!-- hints of button -->
	<div class="jq-hints">
		<div class="hint">&nbsp;</div>
	</div>
</ul>
<!-- </body>
</html> -->