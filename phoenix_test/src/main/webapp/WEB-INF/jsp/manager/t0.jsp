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
	<link rel="stylesheet" href=" //cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
<style type="text/css">
table tr:nth-child(even){
background: #A2D79B;
}
table{
width:100%;
}
</style>
</head>
<body>

<div class="container"  style="padding: 40px;">
	
		<div class="row visible-on">
		<div class="col-md-1 col-lg-1 hidden-xs hidden-sm"></div>
			
		<div class="col-xs-12 col-sm-12 col-md-10 col-md-10">
			
			
			<div class="card">
				<span class="text_c text_bold">
				香港中文大學醫學院<br/>
				賽馬會公共衛生及基層醫療學院<br/>
				</span>
				<span class="text_c">
				問卷調查
				</span>
				<p>
				您好！我們是香港中文大學公共衛生及基層醫療學院的研究人員。是次研究之主要目的為深入地了解如何透過網上正向心理介入，改善情緒調節來減低男男性接觸者高風險不安全性行為。請花大概10分鐘的時間完成此問卷。以下問題是關於你的看法和情緒，並無對錯之分。資料絕對保密，多謝你的幫忙。<br/>
				
				<br/>
				<form action="/phoenix_test/land/t0_post" method="post">
				<div style="text-align: left;">
1.	基本資料<br/>
1_a.	請問你幾多歲？<input type="text" id="1_a" name="1_a" placeholder="岁"><br/><br/>
1_b.	請問你的最高學歷是？<br/>
<select id="1_b" name="1_b" >
	<option value=""></option>
	<option value="1小學以下">1小學以下</option>
	<option value="2小學">2小學</option>
	<option value="3初中">3初中</option>
	<option value="4高中(中四至中五)">4高中(中四至中五)</option>
	<option value="5預科">5預科</option>
	<option value="6大專（非學位）">6大專（非學位）</option>
	<option value="7 大學或以上">7 大學或以上</option>
	<option value="8不便透露">8不便透露</option>
	<option value="9其他">9其他</option>
</select><br/>

<input type="text" id="1_b_text" name="1_b_text"  style="display: none;" placeholder="最高學歷"><br/>

<!-- 	□1.小學以下	□2小學	□3初中	□4高中(中四至中五)	□5預科<br/> -->
<!-- 	□6大專（非學位）	□7 大學或以上	□8不便透露	□9其他 (註明__________________)<br/> -->
<br/>
1_c.	目前工作狀況 <br/>
<select id="1_c" name="1_c" >
<option value=""></option>
	<option value="1全職">1全職</option>
	<option value="2兼職">2兼職</option>
	<option value="3退休">3退休</option>
	<option value="4自僱">4自僱</option>
	<option value="5待業 ">5待業</option>
	<option value="6學生">6學生</option>
	<option value="7其他">7其他</option>
</select><br/>
<input type="text" id="1_c_text" name="1_c_text" style="display: none;" placeholder="目前工作狀況"><br/><br/>
<!-- □1全職                         □2兼職                         □3退休                         □4自僱        <br/> -->
<!-- □5待業                         □6學生                         □7其他(註明_________________)<br/> -->
1_d.	請問你的性傾向是？<br/>
<select id="1_d" name="1_d" >
<option value=""></option>
	<option value="1同性戀">1同性戀</option>
	<option value="2雙性戀">2雙性戀</option>
	<option value="3異性戀">3異性戀</option>
	<option value="4不便透露">4不便透露</option>
</select><br/><br/>
<!-- □1同性戀              □2雙性戀              □3異性戀              □4不便透露<br/> -->
1_e.	請問你目前的婚姻狀況是？<br/>
<select id="1_e" name="1_e" >
<option value=""></option>
	<option value="1未婚">1未婚</option>
	<option value="2與女性己婚">2與女性己婚</option>
	<option value="3與女性同居">3與女性同居</option>
	<option value="4離婚/喪偶">4離婚/喪偶</option>
	<option value="5與男性同居">5與男性同居</option>
</select><br/><br/>

<!-- □1未婚          □2與女性己婚          □3與女性同居          □4離婚/喪偶          □5與男性同居<br/> -->
1_f.	請問你的愛滋病病毒（HIV）的檢測結果是？ <br/>
<select id="1_f" name="1_f" >
<option value=""></option>
	<option value="1陽性">1陽性</option>
	<option value="2陰性">2陰性</option>
	<option value="3不確定">3不確定</option>
</select><br/><br/>
<!-- □1陽性          □2陰性          □3不確定<br/> -->
1_g.	在過去6個月內，你有否曾患過以下性病？（可多選）<br/>
<label><input name="1_g" type="checkbox" value="1沒有性病" />1沒有性病  </label> 
<label><input name="1_g" type="checkbox" value="2淋病" />2淋病  </label> 
<label><input name="1_g" type="checkbox" value="3梅毒   " />3梅毒</label> 
<label><input name="1_g" type="checkbox" value="4尖銳濕疣" />4尖銳濕疣 </label> 
<label><input name="1_g" type="checkbox" value="5生殖器疱疹" />5生殖器疱疹 </label> 
<label><input name="1_g" type="checkbox"   onclick="check_1_g(this)" value="6其他" />6其他 </label><br/>
							
<input type="text" id="1_g_text" name="1_g_text" style="display: none;"  placeholder="其他"><br/><br/>
<!-- □1沒有性病          □2淋病          □3梅毒          □4尖銳濕疣           □5生殖器疱疹<br/> -->
<!-- □6其他(註明_________________)<br/> -->
				
2.	固定性伴指有穩定性關係的同性性伴侶，包括建立了戀愛關係的男朋友及其他報紙穩定性關係的同性性伴。<br/>

2_a.	最近1個月，你有固定性伴嗎？ <br/>
<select id="2_a" name="2_a" >
<option value=""></option>
	<option value="1 有">1 有</option>
	<option value="2 沒有">2 沒有</option><!-- （跳至2f） -->
</select><br/><br/>
<!--       □1  有       □2 沒有（跳至2f）<br/> -->
<div id="2a_to_2f" style="display: none;">
2_b.	最近1個月，你的固定性伴有多少人？<br/>
      <input type="text"  name="2_b" id="2_b" placeholder="">位<br/><br/>
2_c.	最近1次你與固定性伴肛交時使用安全套了嗎？<br/>
<select id="2_c" name="2_c" >
<option value=""></option>
	<option value="1 有使用">1 有使用</option>
	<option value="2 沒有使用">2 沒有使用</option>
</select><br/><br/>
<!--        □1  有使用       □2 沒有使用<br/> -->
2_d.	在過去1個月內，你和固定性伴肛交時安全套的使用情況？<br/>
<select id="2_d" name="2_d" >
<option value=""></option>
	<option value="1 從不使用">1  從不使用</option>
	<option value="2 間中使用">2 間中使用</option>
	<option value="3 經常使用">3 經常使用</option>
	<option value="4 每次使用">4 每次使用</option>
</select><br/><br/>
<!-- □1  從不使用               □2   間中使用               □3  經常使用               □4  每次使用<br/> -->
2_e.	在未來的6個月，你與固定性伴肛交時，每次都使用安全套的可能性有多大？<br/>
<select id="2_e" name="2_e" >
<option value=""></option>
	<option value="1 不可能">1 不可能</option>
	<option value="2 可能性很小 ">2 可能性很小 </option>
	<option value="3 一半一半">3 一半一半</option>
	<option value="4 可能性很大">4 可能性很大</option>
	<option value="5 完全可能">5 完全可能</option>
</select><br/><br/>
</div>
<!-- □1  不可能                        □2  可能性很小               □3  一半一半          <br/> -->
<!-- □4  可能性很大                □5  完全可能<br/> -->
2_f.	最近1個月，你有非固定性伴嗎？<br/>
<!--        □1  有       □2 沒有（跳至 3a） -->
<select id="2_f" name="2_f" >
<option value=""></option>
	<option value="1 有">1 有</option>
	<option value="2 沒有">2 沒有</option><!-- （跳至3a） -->
</select><br/><br/>
<div id="2f_to_3a" style="display: none;">
2_g.	最近1個月，你的非固定性伴有多少人？<br/>
      <input type="text" name="2_g" id="2_g" placeholder="">位<br/><br/>
2_h.	最近1次你與非固定性伴肛交時使用安全套了嗎？ <br/>
<!--       □1  有使用       □2 沒有使用 -->
<select id="2_h" name="2_h" >
<option value=""></option>
	<option value="1 有使用">1有使用</option>
	<option value="2 沒有使用">2沒有使用</option>
</select><br/><br/>
2_i.	在過去1個月內，你和非固定性伴肛交時安全套的使用情況？<br/>
<select id="2_i" name="2_i" >
<option value=""></option>
	<option value="1 從不使用">1  從不使用</option>
	<option value="2 間中使用">2 間中使用</option>
	<option value="3 經常使用">3 經常使用</option>
	<option value="4 每次使用">4 每次使用</option>
</select><br/><br/>
<!-- 	□1  從不使用               □2   間中使用               □3  經常使用               □4  每次使用<br/> -->
2_j.	在未來的6個月，你與固定性伴肛交時，每次都使用安全套的可能性有多大？<br/>
<select id="2_j" name="2_j" >
<option value=""></option>
	<option value="1 不可能">1 不可能</option>
	<option value="2 可能性很小 ">2 可能性很小 </option>
	<option value="3 一半一半">3 一半一半</option>
	<option value="4 可能性很大">4 可能性很大</option>
	<option value="5 完全可能">5 完全可能</option>
</select><br/><br/>
</div>
<!-- □1  不可能                        □2  可能性很小               □3  一半一半          <br/> -->
<!-- □4  可能性很大                □5  完全可能<br/> -->
</div>
<p>3.	請細心閱讀各句子，依據你的實際狀況選出你感覺自己有多常符合該描述狀況。</p>
				
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody>
 <tr>
  <td > &nbsp; </td>
  <td > &nbsp; </td>
  <td  >  幾乎<br/>  沒有<br/>  0-10%<br/> </td>
  <td  >  有時候<br/>  11-35%<br/>  </td>
  <td  >  大約<br/>  一半<br/>  36-65%  </td>
  <td  >  大部<br/>  分是<br/>  66-90%  </td>
  <td >  幾乎<br/>  總是<br/>  91-100%  </td>
 </tr>											
 
 <tr>
 	<td>3_a.</td>
 	<td>我會去注意我感受到什麼。</td>
 	<td><input  type="radio" name="3_a" id="3_a" value="幾乎沒有0-10%"></td>
 	<td><input  type="radio" name="3_a" id="3_a" value="有時候11-35%"></td>
 	<td><input  type="radio" name="3_a" id="3_a" value="大約一半36-65%"></td>
 	<td><input  type="radio" name="3_a" id="3_a" value="大部分是66-90%"></td>
 	<td><input  type="radio" name="3_a" id="3_a" value="幾乎總是 91-100%"></td>
 </tr>
 <tr >
 	<td>3_b.</td>
 	<td>我不知道我的感受是什麼。</td>
 	<td><input  type="radio" name="3_b" id="3_b" value="幾乎沒有0-10%"></td>
 	<td><input  type="radio" name="3_b" id="3_b" value="有時候11-35%"></td>
 	<td><input  type="radio" name="3_b" id="3_b" value="大約一半36-65%"></td>
 	<td><input  type="radio" name="3_b" id="3_b" value="大部分是66-90%"></td>
 	<td><input  type="radio" name="3_b" id="3_b" value="幾乎總是 91-100%"></td>
 </tr>
 <tr>
 	<td>3_c.</td>
 	<td>我很難理解我的感受代表什麼。</td>
 	<td><input  type="radio" name="3_c" id="3_c" value="幾乎沒有0-10%"></td>
 	<td><input  type="radio" name="3_c" id="3_c" value="有時候11-35%"></td>
 	<td><input  type="radio" name="3_c" id="3_c" value="大約一半36-65%"></td>
 	<td><input  type="radio" name="3_c" id="3_c" value="大部分是66-90%"></td>
 	<td><input  type="radio" name="3_c" id="3_c" value="幾乎總是 91-100%"></td>
 </tr>
 <tr >
 	<td>3_d.</td>
 	<td>我注意我的感受。</td>
 	<td><input  type="radio" name="3_d" id="3_d" value="幾乎沒有0-10%"></td>
 	<td><input  type="radio" name="3_d" id="3_d" value="有時候11-35%"></td>
 	<td><input  type="radio" name="3_d" id="3_d" value="大約一半36-65%"></td>
 	<td><input  type="radio" name="3_d" id="3_d" value="大部分是66-90%"></td>
 	<td><input  type="radio" name="3_d" id="3_d" value="幾乎總是 91-100%"></td>
 </tr>
 <tr>
 	<td>3_e.</td>
 	<td>我不肯定我的感受是什麽。</td>
 	<td><input  type="radio" name="3_e" id="3_e" value="幾乎沒有0-10%"></td>
 	<td><input  type="radio" name="3_e" id="3_e" value="有時候11-35%"></td>
 	<td><input  type="radio" name="3_e" id="3_e" value="大約一半36-65%"></td>
 	<td><input  type="radio" name="3_e" id="3_e" value="大部分是66-90%"></td>
 	<td><input  type="radio" name="3_e" id="3_e" value="幾乎總是 91-100%"></td>
 </tr>
 <tr >
 	<td>3_f.</td>
 	<td>當我苦惱時，我會承認我現在所經歷的情緒。</td>
 	<td><input  type="radio" name="3_f" id="3_f" value="幾乎沒有0-10%"></td>
 	<td><input  type="radio" name="3_f" id="3_f" value="有時候11-35%"></td>
 	<td><input  type="radio" name="3_f" id="3_f" value="大約一半36-65%"></td>
 	<td><input  type="radio" name="3_f" id="3_f" value="大部分是66-90%"></td>
 	<td><input  type="radio" name="3_f" id="3_f" value="幾乎總是 91-100%"></td>
 </tr>
 <tr>
 	<td>3_g.</td>
 	<td>當我苦惱時，我會對於自己有這樣的感受而感到尷尬。</td>
 	<td><input  type="radio" name="3_g" id="3_g" value="幾乎沒有0-10%"></td>
 	<td><input  type="radio" name="3_g" id="3_g" value="有時候11-35%"></td>
 	<td><input  type="radio" name="3_g" id="3_g" value="大約一半36-65%"></td>
 	<td><input  type="radio" name="3_g" id="3_g" value="大部分是66-90%"></td>
 	<td><input  type="radio" name="3_g" id="3_g" value="幾乎總是 91-100%"></td>
 </tr>
 <tr >
 	<td>3_h.</td>
 	<td>當我苦惱時，我會很難去完成一件事。</td>
 	<td><input  type="radio" name="3_h" id="3_h" value="幾乎沒有0-10%"></td>
 	<td><input  type="radio" name="3_h" id="3_h" value="有時候11-35%"></td>
 	<td><input  type="radio" name="3_h" id="3_h" value="大約一半36-65%"></td>
 	<td><input  type="radio" name="3_h" id="3_h" value="大部分是66-90%"></td>
 	<td><input  type="radio" name="3_h" id="3_h" value="幾乎總是 91-100%"></td>
 </tr>
 <tr>
 	<td>3_i.</td>
 	<td>當我苦惱時，我會開始失控。</td>
 	<td><input  type="radio" name="3_i" id="3_i" value="幾乎沒有0-10%"></td>
 	<td><input  type="radio" name="3_i" id="3_i" value="有時候11-35%"></td>
 	<td><input  type="radio" name="3_i" id="3_i" value="大約一半36-65%"></td>
 	<td><input  type="radio" name="3_i" id="3_i" value="大部分是66-90%"></td>
 	<td><input  type="radio" name="3_i" id="3_i" value="幾乎總是 91-100%"></td>
 </tr>
 <tr >
 	<td>3_j.</td>
 	<td>當我苦惱時，我相信我會這樣持續很久。</td>
 	<td><input  type="radio" name="3_j" id="3_j" value="幾乎沒有0-10%"></td>
 	<td><input  type="radio" name="3_j" id="3_j" value="有時候11-35%"></td>
 	<td><input  type="radio" name="3_j" id="3_j" value="大約一半36-65%"></td>
 	<td><input  type="radio" name="3_j" id="3_j" value="大部分是66-90%"></td>
 	<td><input  type="radio" name="3_j" id="3_j" value="幾乎總是 91-100%"></td>
 </tr>
 <tr>
 	<td>3_k.</td>
 	<td>當我苦惱時，我相信最後我會感到相當憂鬱。</td>
 	<td><input  type="radio" name="3_k" id="3_k" value="幾乎沒有0-10%"></td>
 	<td><input  type="radio" name="3_k" id="3_k" value="有時候11-35%"></td>
 	<td><input  type="radio" name="3_k" id="3_k" value="大約一半36-65%"></td>
 	<td><input  type="radio" name="3_k" id="3_k" value="大部分是66-90%"></td>
 	<td><input  type="radio" name="3_k" id="3_k" value="幾乎總是 91-100%"></td>
 </tr>
 <tr >
 	<td>3_l.</td>
 	<td>當我苦惱時，我很難專心在其他事上。</td>
 	<td><input  type="radio" name="3_l" id="3_l" value="幾乎沒有0-10%"></td>
 	<td><input  type="radio" name="3_l" id="3_l" value="有時候11-35%"></td>
 	<td><input  type="radio" name="3_l" id="3_l" value="大約一半36-65%"></td>
 	<td><input  type="radio" name="3_l" id="3_l" value="大部分是66-90%"></td>
 	<td><input  type="radio" name="3_l" id="3_l" value="幾乎總是 91-100%"></td>
 </tr>
 <tr>
 	<td>3_m.</td>
 	<td>當我苦惱時，我會對於我自己有這樣的感受而感到難爲情的。</td>
 	<td><input  type="radio" name="3_m" id="3_m" value="幾乎沒有0-10%"></td>
 	<td><input  type="radio" name="3_m" id="3_m" value="有時候11-35%"></td>
 	<td><input  type="radio" name="3_m" id="3_m" value="大約一半36-65%"></td>
 	<td><input  type="radio" name="3_m" id="3_m" value="大部分是66-90%"></td>
 	<td><input  type="radio" name="3_m" id="3_m" value="幾乎總是 91-100%"></td>
 </tr>
 <tr >
 	<td>3_n.</td>
 	<td>當我苦惱時，我對自己有這樣的感受而感到内疚。</td>
 	<td><input  type="radio" name="3_n" id="3_n" value="幾乎沒有0-10%"></td>
 	<td><input  type="radio" name="3_n" id="3_n" value="有時候11-35%"></td>
 	<td><input  type="radio" name="3_n" id="3_n" value="大約一半36-65%"></td>
 	<td><input  type="radio" name="3_n" id="3_n" value="大部分是66-90%"></td>
 	<td><input  type="radio" name="3_n" id="3_n" value="幾乎總是 91-100%"></td>
 </tr>
 <tr>
 	<td>3_o.</td>
 	<td>當我苦惱時，我很難集中注意力。</td>
 	<td><input  type="radio" name="3_o" id="3_o" value="幾乎沒有0-10%"></td>
 	<td><input  type="radio" name="3_o" id="3_o" value="有時候11-35%"></td>
 	<td><input  type="radio" name="3_o" id="3_o" value="大約一半36-65%"></td>
 	<td><input  type="radio" name="3_o" id="3_o" value="大部分是66-90%"></td>
 	<td><input  type="radio" name="3_o" id="3_o" value="幾乎總是 91-100%"></td>
 </tr>
 <tr >
 	<td>3_p.</td>
 	<td>當我苦惱時，我很難控制我的行為。</td>
 	<td><input  type="radio" name="3_p" id="3_p" value="幾乎沒有0-10%"></td>
 	<td><input  type="radio" name="3_p" id="3_p" value="有時候11-35%"></td>
 	<td><input  type="radio" name="3_p" id="3_p" value="大約一半36-65%"></td>
 	<td><input  type="radio" name="3_p" id="3_p" value="大部分是66-90%"></td>
 	<td><input  type="radio" name="3_p" id="3_p" value="幾乎總是 91-100%"></td>
 </tr>
 <tr>
 	<td>3_q.</td>
 	<td>當我苦惱時，我相信我所能做的就是沈溺其中。</td>
 	<td><input  type="radio" name="3_q" id="3_q" value="幾乎沒有0-10%"></td>
 	<td><input  type="radio" name="3_q" id="3_q" value="有時候11-35%"></td>
 	<td><input  type="radio" name="3_q" id="3_q" value="大約一半36-65%"></td>
 	<td><input  type="radio" name="3_q" id="3_q" value="大部分是66-90%"></td>
 	<td><input  type="radio" name="3_q" id="3_q" value="幾乎總是 91-100%"></td>
 </tr>
 <tr >
 	<td>3_r.</td>
 	<td>當我苦惱時，我會對我的行為失去控制。</td>
 	<td><input  type="radio" name="3_r" id="3_r" value="幾乎沒有0-10%"></td>
 	<td><input  type="radio" name="3_r" id="3_r" value="有時候11-35%"></td>
 	<td><input  type="radio" name="3_r" id="3_r" value="大約一半36-65%"></td>
 	<td><input  type="radio" name="3_r" id="3_r" value="大部分是66-90%"></td>
 	<td><input  type="radio" name="3_r" id="3_r" value="幾乎總是 91-100%"></td>
 </tr>
</tbody></table>


<p>4.	以下各項是形容<span class="text_red">感受或情緒的形容詞</span>，請仔細閱讀以下詞語，並根據你<span class="text_red">一般的情況</span>，選出最適合你的描述。</p>
				
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody>
 <tr>
  <td > &nbsp; </td>
  <td > &nbsp; </td>
  <td  >  並無此 <br/>  感覺  </td>
  <td  >  有些許<br/>  感覺  </td>
  <td  >  <br/>  一般  </td>
  <td  >  有相當<br/>  感覺  </td>
  <td >  有強烈<br/>  感覺  </td>
 </tr>
 
    <tr>
 	<td>4_a.</td>
 	<td>感興趣</td>
 	<td><input  type="radio" name="4_a" id="4_a" value="並無此感覺 "></td>
 	<td><input  type="radio" name="4_a" id="4_a" value="有些許 感覺 "></td>
 	<td><input  type="radio" name="4_a" id="4_a" value="一般 "></td>
 	<td><input  type="radio" name="4_a" id="4_a" value="有相當感覺 "></td>
 	<td><input  type="radio" name="4_a" id="4_a" value="有強烈感覺 "></td>
 </tr>
 <tr >
 	<td>4_b.</td>
 	<td>心煩意亂的</td>
 	<td><input  type="radio" name="4_b" id="4_b" value="並無此感覺 "></td>
 	<td><input  type="radio" name="4_b" id="4_b" value="有些許 感覺 "></td>
 	<td><input  type="radio" name="4_b" id="4_b" value="一般 "></td>
 	<td><input  type="radio" name="4_b" id="4_b" value="有相當感覺 "></td>
 	<td><input  type="radio" name="4_b" id="4_b" value="有強烈感覺 "></td>
 </tr>
 <tr>
 	<td>4_c.</td>
 	<td>興奮</td>
 	<td><input  type="radio" name="4_c" id="4_c" value="並無此感覺 "></td>
 	<td><input  type="radio" name="4_c" id="4_c" value="有些許 感覺 "></td>
 	<td><input  type="radio" name="4_c" id="4_c" value="一般 "></td>
 	<td><input  type="radio" name="4_c" id="4_c" value="有相當感覺 "></td>
 	<td><input  type="radio" name="4_c" id="4_c" value="有強烈感覺 "></td>
 </tr>
 <tr >
 	<td>4_d.</td>
 	<td>悲痛的</td>
 	<td><input  type="radio" name="4_d" id="4_d" value="並無此感覺 "></td>
 	<td><input  type="radio" name="4_d" id="4_d" value="有些許 感覺 "></td>
 	<td><input  type="radio" name="4_d" id="4_d" value="一般 "></td>
 	<td><input  type="radio" name="4_d" id="4_d" value="有相當感覺 "></td>
 	<td><input  type="radio" name="4_d" id="4_d" value="有強烈感覺 "></td>
 </tr>
 <tr>
 	<td>4_e.</td>
 	<td>堅強</td>
 	<td><input  type="radio" name="4_e" id="4_e" value="並無此感覺 "></td>
 	<td><input  type="radio" name="4_e" id="4_e" value="有些許 感覺 "></td>
 	<td><input  type="radio" name="4_e" id="4_e" value="一般 "></td>
 	<td><input  type="radio" name="4_e" id="4_e" value="有相當感覺 "></td>
 	<td><input  type="radio" name="4_e" id="4_e" value="有強烈感覺 "></td>
 </tr>
 <tr >
 	<td>4_f.</td>
 	<td>內疚的</td>
 	<td><input  type="radio" name="4_f" id="4_f" value="並無此感覺 "></td>
 	<td><input  type="radio" name="4_f" id="4_f" value="有些許 感覺 "></td>
 	<td><input  type="radio" name="4_f" id="4_f" value="一般 "></td>
 	<td><input  type="radio" name="4_f" id="4_f" value="有相當感覺 "></td>
 	<td><input  type="radio" name="4_f" id="4_f" value="有強烈感覺 "></td>
 </tr>
 <tr>
 	<td>4_g.</td>
 	<td>恐懼的</td>
 	<td><input  type="radio" name="4_g" id="4_g" value="並無此感覺 "></td>
 	<td><input  type="radio" name="4_g" id="4_g" value="有些許 感覺 "></td>
 	<td><input  type="radio" name="4_g" id="4_g" value="一般 "></td>
 	<td><input  type="radio" name="4_g" id="4_g" value="有相當感覺 "></td>
 	<td><input  type="radio" name="4_g" id="4_g" value="有強烈感覺 "></td>
 </tr>
 <tr >
 	<td>4_h.</td>
 	<td>有敵意的</td>
 	<td><input  type="radio" name="4_h" id="4_h" value="並無此感覺 "></td>
 	<td><input  type="radio" name="4_h" id="4_h" value="有些許 感覺 "></td>
 	<td><input  type="radio" name="4_h" id="4_h" value="一般 "></td>
 	<td><input  type="radio" name="4_h" id="4_h" value="有相當感覺 "></td>
 	<td><input  type="radio" name="4_h" id="4_h" value="有強烈感覺 "></td>
 </tr>
 <tr>
 	<td>4_i.</td>
 	<td>充滿熱誠</td>
 	<td><input  type="radio" name="4_i" id="4_i" value="並無此感覺 "></td>
 	<td><input  type="radio" name="4_i" id="4_i" value="有些許 感覺 "></td>
 	<td><input  type="radio" name="4_i" id="4_i" value="一般 "></td>
 	<td><input  type="radio" name="4_i" id="4_i" value="有相當感覺 "></td>
 	<td><input  type="radio" name="4_i" id="4_i" value="有強烈感覺 "></td>
 </tr>
 <tr >
 	<td>4_j.</td>
 	<td>自豪</td>
 	<td><input  type="radio" name="4_j" id="4_j" value="並無此感覺 "></td>
 	<td><input  type="radio" name="4_j" id="4_j" value="有些許 感覺 "></td>
 	<td><input  type="radio" name="4_j" id="4_j" value="一般 "></td>
 	<td><input  type="radio" name="4_j" id="4_j" value="有相當感覺 "></td>
 	<td><input  type="radio" name="4_j" id="4_j" value="有強烈感覺 "></td>
 </tr>
 <tr>
 	<td>4_k.</td>
 	<td>易惱的</td>
 	<td><input  type="radio" name="4_k" id="4_k" value="並無此感覺 "></td>
 	<td><input  type="radio" name="4_k" id="4_k" value="有些許 感覺 "></td>
 	<td><input  type="radio" name="4_k" id="4_k" value="一般 "></td>
 	<td><input  type="radio" name="4_k" id="4_k" value="有相當感覺 "></td>
 	<td><input  type="radio" name="4_k" id="4_k" value="有強烈感覺 "></td>
 </tr>
 <tr >
 	<td>4_l.</td>
 	<td>機警</td>
 	<td><input  type="radio" name="4_l" id="4_l" value="並無此感覺 "></td>
 	<td><input  type="radio" name="4_l" id="4_l" value="有些許 感覺 "></td>
 	<td><input  type="radio" name="4_l" id="4_l" value="一般 "></td>
 	<td><input  type="radio" name="4_l" id="4_l" value="有相當感覺 "></td>
 	<td><input  type="radio" name="4_l" id="4_l" value="有強烈感覺 "></td>
 </tr>
 <tr>
 	<td>4_m.</td>
 	<td>羞愧的</td>
 	<td><input  type="radio" name="4_m" id="4_m" value="並無此感覺 "></td>
 	<td><input  type="radio" name="4_m" id="4_m" value="有些許 感覺 "></td>
 	<td><input  type="radio" name="4_m" id="4_m" value="一般 "></td>
 	<td><input  type="radio" name="4_m" id="4_m" value="有相當感覺 "></td>
 	<td><input  type="radio" name="4_m" id="4_m" value="有強烈感覺 "></td>
 </tr>
 <tr >
 	<td>4_n.</td>
 	<td>充滿靈感</td>
 	<td><input  type="radio" name="4_n" id="4_n" value="並無此感覺 "></td>
 	<td><input  type="radio" name="4_n" id="4_n" value="有些許 感覺 "></td>
 	<td><input  type="radio" name="4_n" id="4_n" value="一般 "></td>
 	<td><input  type="radio" name="4_n" id="4_n" value="有相當感覺 "></td>
 	<td><input  type="radio" name="4_n" id="4_n" value="有強烈感覺 "></td>
 </tr>
 <tr>
 	<td>4_o.</td>
 	<td>緊張的</td>
 	<td><input  type="radio" name="4_o" id="4_o" value="並無此感覺 "></td>
 	<td><input  type="radio" name="4_o" id="4_o" value="有些許 感覺 "></td>
 	<td><input  type="radio" name="4_o" id="4_o" value="一般 "></td>
 	<td><input  type="radio" name="4_o" id="4_o" value="有相當感覺 "></td>
 	<td><input  type="radio" name="4_o" id="4_o" value="有強烈感覺 "></td>
 </tr>
 <tr >
 	<td>4_p.</td>
 	<td>堅決</td>
 	<td><input  type="radio" name="4_p" id="4_p" value="並無此感覺 "></td>
 	<td><input  type="radio" name="4_p" id="4_p" value="有些許 感覺 "></td>
 	<td><input  type="radio" name="4_p" id="4_p" value="一般 "></td>
 	<td><input  type="radio" name="4_p" id="4_p" value="有相當感覺 "></td>
 	<td><input  type="radio" name="4_p" id="4_p" value="有強烈感覺 "></td>
 </tr>
 <tr>
 	<td>4_q.</td>
 	<td>專心</td>
 	<td><input  type="radio" name="4_q" id="4_q" value="並無此感覺 "></td>
 	<td><input  type="radio" name="4_q" id="4_q" value="有些許 感覺 "></td>
 	<td><input  type="radio" name="4_q" id="4_q" value="一般 "></td>
 	<td><input  type="radio" name="4_q" id="4_q" value="有相當感覺 "></td>
 	<td><input  type="radio" name="4_q" id="4_q" value="有強烈感覺 "></td>
 </tr>
 <tr >
 	<td>4_r.</td>
 	<td>戰戰兢兢的</td>
 	<td><input  type="radio" name="4_r" id="4_r" value="並無此感覺 "></td>
 	<td><input  type="radio" name="4_r" id="4_r" value="有些許 感覺 "></td>
 	<td><input  type="radio" name="4_r" id="4_r" value="一般 "></td>
 	<td><input  type="radio" name="4_r" id="4_r" value="有相當感覺 "></td>
 	<td><input  type="radio" name="4_r" id="4_r" value="有強烈感覺 "></td>
 </tr>
 <tr>
 	<td>4_s.</td>
 	<td>積極</td>
 	<td><input  type="radio" name="4_s" id="4_s" value="並無此感覺 "></td>
 	<td><input  type="radio" name="4_s" id="4_s" value="有些許 感覺 "></td>
 	<td><input  type="radio" name="4_s" id="4_s" value="一般 "></td>
 	<td><input  type="radio" name="4_s" id="4_s" value="有相當感覺 "></td>
 	<td><input  type="radio" name="4_s" id="4_s" value="有強烈感覺 "></td>
 </tr>
 <tr >
 	<td>4_t.</td>
 	<td>害怕的</td>
 	<td><input  type="radio" name="4_t" id="4_t" value="並無此感覺 "></td>
 	<td><input  type="radio" name="4_t" id="4_t" value="有些許 感覺 "></td>
 	<td><input  type="radio" name="4_t" id="4_t" value="一般 "></td>
 	<td><input  type="radio" name="4_t" id="4_t" value="有相當感覺 "></td>
 	<td><input  type="radio" name="4_t" id="4_t" value="有強烈感覺 "></td>
 </tr>
 
</tbody></table>


<p>5.	以下句子是關於你對<span class="text_red">感恩</span>的看法，請選擇最適合你意見的描述。</p>
				
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody>
 <tr>
  <td > &nbsp; </td>
  <td > &nbsp; </td>
  <td  >  非常 <br/>  不同意 </td>
  <td  >  <br/>不同意  </td>
  <td  >  有一點<br/>  不同意  </td>
  <td  >  <br/>  中立  </td>
  <td >  有一點<br/>  同意   </td>
  <td  >   <br/>同意  </td>
  <td >  非常 <br/>  同意  </td>
 </tr>
 
   <tr>
 	<td>5_a.</td>
 	<td>在我生命中有如此多值得感恩的事情。</td>
 	<td><input  type="radio" name="5_a" id="5_a" value="非常不同意 "></td>
 	<td><input  type="radio" name="5_a" id="5_a" value="不同意 "></td>
 	<td><input  type="radio" name="5_a" id="5_a" value="有一點不同意 "></td>
 	<td><input  type="radio" name="5_a" id="5_a" value="中立"></td>
 	<td><input  type="radio" name="5_a" id="5_a" value="有一點同意 "></td>
 	<td><input  type="radio" name="5_a" id="5_a" value="同意 "></td>
 	<td><input  type="radio" name="5_a" id="5_a" value="非常同意 "></td>
 </tr>
 <tr >
 	<td>5_b.</td>
 	<td>如果我必須列出我覺得感恩的每一件事，這個列表一定會很長。</td>
 	<td><input  type="radio" name="5_b" id="5_b" value="非常不同意 "></td>
 	<td><input  type="radio" name="5_b" id="5_b" value="不同意 "></td>
 	<td><input  type="radio" name="5_b" id="5_b" value="有一點不同意 "></td>
 	<td><input  type="radio" name="5_b" id="5_b" value="中立"></td>
 	<td><input  type="radio" name="5_b" id="5_b" value="有一點同意 "></td>
 	<td><input  type="radio" name="5_b" id="5_b" value="同意 "></td>
 	<td><input  type="radio" name="5_b" id="5_b" value="非常同意 "></td>
 </tr>
 <tr>
 	<td>5_c.</td>
 	<td>當我看這個世界時，我看不到多少值得感恩的事。</td>
 	<td><input  type="radio" name="5_c" id="5_c" value="非常不同意 "></td>
 	<td><input  type="radio" name="5_c" id="5_c" value="不同意 "></td>
 	<td><input  type="radio" name="5_c" id="5_c" value="有一點不同意 "></td>
 	<td><input  type="radio" name="5_c" id="5_c" value="中立"></td>
 	<td><input  type="radio" name="5_c" id="5_c" value="有一點同意 "></td>
 	<td><input  type="radio" name="5_c" id="5_c" value="同意 "></td>
 	<td><input  type="radio" name="5_c" id="5_c" value="非常同意 "></td>
 </tr>
 <tr >
 	<td>5_d.</td>
 	<td>我對形形色色的人都心存感激。</td>
 	<td><input  type="radio" name="5_d" id="5_d" value="非常不同意 "></td>
 	<td><input  type="radio" name="5_d" id="5_d" value="不同意 "></td>
 	<td><input  type="radio" name="5_d" id="5_d" value="有一點不同意 "></td>
 	<td><input  type="radio" name="5_d" id="5_d" value="中立"></td>
 	<td><input  type="radio" name="5_d" id="5_d" value="有一點同意 "></td>
 	<td><input  type="radio" name="5_d" id="5_d" value="同意 "></td>
 	<td><input  type="radio" name="5_d" id="5_d" value="非常同意 "></td>
 </tr>
 <tr>
 	<td>5_e.</td>
 	<td>隨著年齡的增長，我發現自己更懂得去感激我生命中的人物和事件。</td>
 	<td><input  type="radio" name="5_e" id="5_e" value="非常不同意 "></td>
 	<td><input  type="radio" name="5_e" id="5_e" value="不同意 "></td>
 	<td><input  type="radio" name="5_e" id="5_e" value="有一點不同意 "></td>
 	<td><input  type="radio" name="5_e" id="5_e" value="中立"></td>
 	<td><input  type="radio" name="5_e" id="5_e" value="有一點同意 "></td>
 	<td><input  type="radio" name="5_e" id="5_e" value="同意 "></td>
 	<td><input  type="radio" name="5_e" id="5_e" value="非常同意 "></td>
 </tr>
 <tr >
 	<td>5_f.</td>
 	<td>要經過很久的時間以後，我才懂得感謝一些人或事情。</td>
 	<td><input  type="radio" name="5_f" id="5_f" value="非常不同意 "></td>
 	<td><input  type="radio" name="5_f" id="5_f" value="不同意 "></td>
 	<td><input  type="radio" name="5_f" id="5_f" value="有一點不同意 "></td>
 	<td><input  type="radio" name="5_f" id="5_f" value="中立"></td>
 	<td><input  type="radio" name="5_f" id="5_f" value="有一點同意 "></td>
 	<td><input  type="radio" name="5_f" id="5_f" value="同意 "></td>
 	<td><input  type="radio" name="5_f" id="5_f" value="非常同意 "></td>
 </tr>
 
 
</tbody></table>

<p>6.	以下是一些你可能曾有的感受或行為。請按照過去一星期內你的實際情況或感覺，選擇最適合你的描述。</p>
				
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody>
 <tr>
  <td > &nbsp; </td>
  <td > &nbsp; </td>
  <td  > 沒有或少於一天 <br/>   (&lt; 1 天) </td>
  <td  >  甚少<br/>(1-2天)  </td>
  <td  >  偶爾<br/>  (3-4天)  </td>
  <td  > 經常 <br/>  (5-7天)  </td>
 </tr>
 
  <tr>
 	<td>6_a.</td>
 	<td>我因一些小事而煩惱。</td>
 	<td><input  type="radio" name="6_a" id="6_a" value="沒有或少於一天(1 天) "></td>
 	<td><input  type="radio" name="6_a" id="6_a" value="甚少(1-2天)"></td>
 	<td><input  type="radio" name="6_a" id="6_a" value="偶爾 (3-4天)"></td>
 	<td><input  type="radio" name="6_a" id="6_a" value="經常 (5-7天)"></td>
 </tr>
 <tr >
 	<td>6_b.</td>
 	<td>我不想吃東西，我的胃口不好。</td>
 	<td><input  type="radio" name="6_b" id="6_b" value="沒有或少於一天(1 天) "></td>
 	<td><input  type="radio" name="6_b" id="6_b" value="甚少(1-2天)"></td>
 	<td><input  type="radio" name="6_b" id="6_b" value="偶爾 (3-4天)"></td>
 	<td><input  type="radio" name="6_b" id="6_b" value="經常 (5-7天)"></td>
 </tr>
 <tr>
 	<td>6_c.</td>
 	<td>即使家人和朋友幫助，仍然無法擺脫苦悶。</td>
 	<td><input  type="radio" name="6_c" id="6_c" value="沒有或少於一天(1 天) "></td>
 	<td><input  type="radio" name="6_c" id="6_c" value="甚少(1-2天)"></td>
 	<td><input  type="radio" name="6_c" id="6_c" value="偶爾 (3-4天)"></td>
 	<td><input  type="radio" name="6_c" id="6_c" value="經常 (5-7天)"></td>
 </tr>
 <tr >
 	<td>6_d.</td>
 	<td>我覺得你和一般人一樣好。</td>
 	<td><input  type="radio" name="6_d" id="6_d" value="沒有或少於一天(1 天) "></td>
 	<td><input  type="radio" name="6_d" id="6_d" value="甚少(1-2天)"></td>
 	<td><input  type="radio" name="6_d" id="6_d" value="偶爾 (3-4天)"></td>
 	<td><input  type="radio" name="6_d" id="6_d" value="經常 (5-7天)"></td>
 </tr>
 <tr>
 	<td>6_e.</td>
 	<td>我在做事時，無法集中自己的注意力。</td>
 	<td><input  type="radio" name="6_e" id="6_e" value="沒有或少於一天(1 天) "></td>
 	<td><input  type="radio" name="6_e" id="6_e" value="甚少(1-2天)"></td>
 	<td><input  type="radio" name="6_e" id="6_e" value="偶爾 (3-4天)"></td>
 	<td><input  type="radio" name="6_e" id="6_e" value="經常 (5-7天)"></td>
 </tr>
 <tr >
 	<td>6_f.</td>
 	<td>我感到情緒低沉。</td>
 	<td><input  type="radio" name="6_f" id="6_f" value="沒有或少於一天(1 天) "></td>
 	<td><input  type="radio" name="6_f" id="6_f" value="甚少(1-2天)"></td>
 	<td><input  type="radio" name="6_f" id="6_f" value="偶爾 (3-4天)"></td>
 	<td><input  type="radio" name="6_f" id="6_f" value="經常 (5-7天)"></td>
 </tr>
  <tr>
 	<td>6_g.</td>
 	<td>我感到所做的一切都很費心力。</td>
 	<td><input  type="radio" name="6_g" id="6_g" value="沒有或少於一天(1 天) "></td>
 	<td><input  type="radio" name="6_g" id="6_g" value="甚少(1-2天)"></td>
 	<td><input  type="radio" name="6_g" id="6_g" value="偶爾 (3-4天)"></td>
 	<td><input  type="radio" name="6_g" id="6_g" value="經常 (5-7天)"></td>
 </tr>
 <tr >
 	<td>6_h.</td>
 	<td>我覺得前途是有希望的。</td>
 	<td><input  type="radio" name="6_h" id="6_h" value="沒有或少於一天(1 天) "></td>
 	<td><input  type="radio" name="6_h" id="6_h" value="甚少(1-2天)"></td>
 	<td><input  type="radio" name="6_h" id="6_h" value="偶爾 (3-4天)"></td>
 	<td><input  type="radio" name="6_h" id="6_h" value="經常 (5-7天)"></td>
 </tr>
 <tr>
 	<td>6_i.</td>
 	<td>我覺得我的生活是失敗的。</td>
 	<td><input  type="radio" name="6_i" id="6_i" value="沒有或少於一天(1 天) "></td>
 	<td><input  type="radio" name="6_i" id="6_i" value="甚少(1-2天)"></td>
 	<td><input  type="radio" name="6_i" id="6_i" value="偶爾 (3-4天)"></td>
 	<td><input  type="radio" name="6_i" id="6_i" value="經常 (5-7天)"></td>
 </tr>
 <tr >
 	<td>6_j.</td>
 	<td>我感到害怕。</td>
 	<td><input  type="radio" name="6_j" id="6_j" value="沒有或少於一天(1 天) "></td>
 	<td><input  type="radio" name="6_j" id="6_j" value="甚少(1-2天)"></td>
 	<td><input  type="radio" name="6_j" id="6_j" value="偶爾 (3-4天)"></td>
 	<td><input  type="radio" name="6_j" id="6_j" value="經常 (5-7天)"></td>
 </tr>
 <tr>
 	<td>6_k.</td>
 	<td>我的睡眠情況不好。</td>
 	<td><input  type="radio" name="6_k" id="6_k" value="沒有或少於一天(1 天) "></td>
 	<td><input  type="radio" name="6_k" id="6_k" value="甚少(1-2天)"></td>
 	<td><input  type="radio" name="6_k" id="6_k" value="偶爾 (3-4天)"></td>
 	<td><input  type="radio" name="6_k" id="6_k" value="經常 (5-7天)"></td>
 </tr>
 <tr >
 	<td>6_l.</td>
 	<td>我感到高興。</td>
 	<td><input  type="radio" name="6_l" id="6_l" value="沒有或少於一天(1 天) "></td>
 	<td><input  type="radio" name="6_l" id="6_l" value="甚少(1-2天)"></td>
 	<td><input  type="radio" name="6_l" id="6_l" value="偶爾 (3-4天)"></td>
 	<td><input  type="radio" name="6_l" id="6_l" value="經常 (5-7天)"></td>
 </tr>
 <tr>
 	<td>6_m.</td>
 	<td>我比平時少說話。</td>
 	<td><input  type="radio" name="6_m" id="6_m" value="沒有或少於一天(1 天) "></td>
 	<td><input  type="radio" name="6_m" id="6_m" value="甚少(1-2天)"></td>
 	<td><input  type="radio" name="6_m" id="6_m" value="偶爾 (3-4天)"></td>
 	<td><input  type="radio" name="6_m" id="6_m" value="經常 (5-7天)"></td>
 </tr>
 <tr >
 	<td>6_n.</td>
 	<td>我感到孤單。</td>
 	<td><input  type="radio" name="6_n" id="6_n" value="沒有或少於一天(1 天) "></td>
 	<td><input  type="radio" name="6_n" id="6_n" value="甚少(1-2天)"></td>
 	<td><input  type="radio" name="6_n" id="6_n" value="偶爾 (3-4天)"></td>
 	<td><input  type="radio" name="6_n" id="6_n" value="經常 (5-7天)"></td>
 </tr>
 <tr>
 	<td>6_o.</td>
 	<td>我覺得人們對我不太友好。</td>
 	<td><input  type="radio" name="6_o" id="6_o" value="沒有或少於一天(1 天) "></td>
 	<td><input  type="radio" name="6_o" id="6_o" value="甚少(1-2天)"></td>
 	<td><input  type="radio" name="6_o" id="6_o" value="偶爾 (3-4天)"></td>
 	<td><input  type="radio" name="6_o" id="6_o" value="經常 (5-7天)"></td>
 </tr>
 <tr >
 	<td>6_p.</td>
 	<td>我享受生活。</td>
 	<td><input  type="radio" name="6_p" id="6_p" value="沒有或少於一天(1 天) "></td>
 	<td><input  type="radio" name="6_p" id="6_p" value="甚少(1-2天)"></td>
 	<td><input  type="radio" name="6_p" id="6_p" value="偶爾 (3-4天)"></td>
 	<td><input  type="radio" name="6_p" id="6_p" value="經常 (5-7天)"></td>
 </tr>
 <tr>
 	<td>6_q.</td>
 	<td>我曾哭泣。</td>
 	<td><input  type="radio" name="6_q" id="6_q" value="沒有或少於一天(1 天) "></td>
 	<td><input  type="radio" name="6_q" id="6_q" value="甚少(1-2天)"></td>
 	<td><input  type="radio" name="6_q" id="6_q" value="偶爾 (3-4天)"></td>
 	<td><input  type="radio" name="6_q" id="6_q" value="經常 (5-7天)"></td>
 </tr>
 <tr >
 	<td>6_r.</td>
 	<td>我感到憂愁。</td>
 	<td><input  type="radio" name="6_r" id="6_r" value="沒有或少於一天(1 天) "></td>
 	<td><input  type="radio" name="6_r" id="6_r" value="甚少(1-2天)"></td>
 	<td><input  type="radio" name="6_r" id="6_r" value="偶爾 (3-4天)"></td>
 	<td><input  type="radio" name="6_r" id="6_r" value="經常 (5-7天)"></td>
 </tr>
 <tr>
 	<td>6_s.</td>
 	<td>我感到人們不喜歡我。</td>
 	<td><input  type="radio" name="6_s" id="6_s" value="沒有或少於一天(1 天) "></td>
 	<td><input  type="radio" name="6_s" id="6_s" value="甚少(1-2天)"></td>
 	<td><input  type="radio" name="6_s" id="6_s" value="偶爾 (3-4天)"></td>
 	<td><input  type="radio" name="6_s" id="6_s" value="經常 (5-7天)"></td>
 </tr>
 <tr >
 	<td>6_t.</td>
 	<td>我覺得無法繼續你的日常工作。</td>
 	<td><input  type="radio" name="6_t" id="6_t" value="沒有或少於一天(1 天) "></td>
 	<td><input  type="radio" name="6_t" id="6_t" value="甚少(1-2天)"></td>
 	<td><input  type="radio" name="6_t" id="6_t" value="偶爾 (3-4天)"></td>
 	<td><input  type="radio" name="6_t" id="6_t" value="經常 (5-7天)"></td>
 </tr>
 
</tbody></table>
				
				

<p>7.	請按照在過去一個月內你的實際情況或感覺，選擇最適合你的描述。</p>
				
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody>
 <tr>
  <td > &nbsp; </td>
  <td > &nbsp; </td>
  <td  >  非常 <br/>  不同意 </td>
  <td  >  <br/>不同意  </td>
  <td  >  <br/>  中立  </td>
  <td  >   <br/>同意  </td>
  <td >  非常 <br/>  同意  </td>
 </tr>
 
  <tr>
 	<td>7_a.</td>
 	<td>許多時候，我都會預期最好的狀況。</td>
 	<td><input  type="radio" name="7_a" id="7_a" value="非常不同意 "></td>
 	<td><input  type="radio" name="7_a" id="7_a" value="不同意 "></td>
 	<td><input  type="radio" name="7_a" id="7_a" value="中立"></td>
 	<td><input  type="radio" name="7_a" id="7_a" value="同意 "></td>
 	<td><input  type="radio" name="7_a" id="7_a" value="非常同意 "></td>
 </tr>
 <tr >
 	<td>7_b.</td>
 	<td>對我來說，隨時放輕鬆很容易。</td>
 	<td><input  type="radio" name="7_b" id="7_b" value="非常不同意 "></td>
 	<td><input  type="radio" name="7_b" id="7_b" value="不同意 "></td>
 	<td><input  type="radio" name="7_b" id="7_b" value="中立"></td>
 	<td><input  type="radio" name="7_b" id="7_b" value="同意 "></td>
 	<td><input  type="radio" name="7_b" id="7_b" value="非常同意 "></td>
 </tr>
 <tr>
 	<td>7_c.</td>
 	<td>如果我認為我會把事情搞砸，就真的會發生。</td>
 	<td><input  type="radio" name="7_c" id="7_c" value="非常不同意 "></td>
 	<td><input  type="radio" name="7_c" id="7_c" value="不同意 "></td>
 	<td><input  type="radio" name="7_c" id="7_c" value="中立"></td>
 	<td><input  type="radio" name="7_c" id="7_c" value="同意 "></td>
 	<td><input  type="radio" name="7_c" id="7_c" value="非常同意 "></td>
 </tr>
 <tr >
 	<td>7_d.</td>
 	<td>對於我的未來，我總是相當樂觀。</td>
 	<td><input  type="radio" name="7_d" id="7_d" value="非常不同意 "></td>
 	<td><input  type="radio" name="7_d" id="7_d" value="不同意 "></td>
 	<td><input  type="radio" name="7_d" id="7_d" value="中立"></td>
 	<td><input  type="radio" name="7_d" id="7_d" value="同意 "></td>
 	<td><input  type="radio" name="7_d" id="7_d" value="非常同意 "></td>
 </tr>
 <tr>
 	<td>7_e.</td>
 	<td>我很喜歡與朋友相處。</td>
 	<td><input  type="radio" name="7_e" id="7_e" value="非常不同意 "></td>
 	<td><input  type="radio" name="7_e" id="7_e" value="不同意 "></td>
 	<td><input  type="radio" name="7_e" id="7_e" value="中立"></td>
 	<td><input  type="radio" name="7_e" id="7_e" value="同意 "></td>
 	<td><input  type="radio" name="7_e" id="7_e" value="非常同意 "></td>
 </tr>
 <tr >
 	<td>7_f.</td>
 	<td>保持工作忙碌，對我非常重要。</td>
 	<td><input  type="radio" name="7_f" id="7_f" value="非常不同意 "></td>
 	<td><input  type="radio" name="7_f" id="7_f" value="不同意 "></td>
 	<td><input  type="radio" name="7_f" id="7_f" value="中立"></td>
 	<td><input  type="radio" name="7_f" id="7_f" value="同意 "></td>
 	<td><input  type="radio" name="7_f" id="7_f" value="非常同意 "></td>
 </tr>
 <tr>
 	<td>7_g.</td>
 	<td>很少有事情是照著我期待的方向走。</td>
 	<td><input  type="radio" name="7_g" id="7_g" value="非常不同意 "></td>
 	<td><input  type="radio" name="7_g" id="7_g" value="不同意 "></td>
 	<td><input  type="radio" name="7_g" id="7_g" value="中立"></td>
 	<td><input  type="radio" name="7_g" id="7_g" value="同意 "></td>
 	<td><input  type="radio" name="7_g" id="7_g" value="非常同意 "></td>
 </tr>
 <tr >
 	<td>7_h.</td>
 	<td>我不太容易感到不安。</td>
 	<td><input  type="radio" name="7_h" id="7_h" value="非常不同意 "></td>
 	<td><input  type="radio" name="7_h" id="7_h" value="不同意 "></td>
 	<td><input  type="radio" name="7_h" id="7_h" value="中立"></td>
 	<td><input  type="radio" name="7_h" id="7_h" value="同意 "></td>
 	<td><input  type="radio" name="7_h" id="7_h" value="非常同意 "></td>
 </tr>
 <tr>
 	<td>7_i.</td>
 	<td>我幾乎不期待好事會發生在我頭上。</td>
 	<td><input  type="radio" name="7_i" id="7_i" value="非常不同意 "></td>
 	<td><input  type="radio" name="7_i" id="7_i" value="不同意 "></td>
 	<td><input  type="radio" name="7_i" id="7_i" value="中立"></td>
 	<td><input  type="radio" name="7_i" id="7_i" value="同意 "></td>
 	<td><input  type="radio" name="7_i" id="7_i" value="非常同意 "></td>
 </tr>
 <tr >
 	<td>7_j.</td>
 	<td>生活中，我感覺自己好事情總是比壞事情發生多。</td>
 	<td><input  type="radio" name="7_j" id="7_j" value="非常不同意 "></td>
 	<td><input  type="radio" name="7_j" id="7_j" value="不同意 "></td>
 	<td><input  type="radio" name="7_j" id="7_j" value="中立"></td>
 	<td><input  type="radio" name="7_j" id="7_j" value="同意 "></td>
 	<td><input  type="radio" name="7_j" id="7_j" value="非常同意 "></td>
 </tr>
 
</tbody></table>				
				
				

<p>8.	請按照在過去一個月內你的實際情況或感覺，選擇最適合你的描述。 </p>
				
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody>
 <tr>
  <td > &nbsp; </td>
  <td > &nbsp; </td>
  <td  > 常常如此 </td>
  <td  >  大部分<br/>時間 </td>
  <td  >  相當多<br/>時間 </td>
  <td  > 有時  </td>
  <td > 偶爾  </td>
  <td  >  從來沒有  </td>
 </tr>
 
   <tr>
 	<td>8_a.</td>
 	<td>有多少時間你是個快樂的人？</td>
 	<td><input  type="radio" name="8_a" id="8_a" value="常常如此 "></td>
 	<td><input  type="radio" name="8_a" id="8_a" value="大部分時間"></td>
 	<td><input  type="radio" name="8_a" id="8_a" value="相當多時間"></td>
 	<td><input  type="radio" name="8_a" id="8_a" value="有時"></td>
 	<td><input  type="radio" name="8_a" id="8_a" value="偶爾"></td>
 	<td><input  type="radio" name="8_a" id="8_a" value="從來沒有"></td>
 </tr>
 <tr >
 	<td>8_b.</td>
 	<td>你有多少時間感到鎮定和心境平靜？</td>
 	<td><input  type="radio" name="8_b" id="8_b" value="常常如此 "></td>
 	<td><input  type="radio" name="8_b" id="8_b" value="大部分時間"></td>
 	<td><input  type="radio" name="8_b" id="8_b" value="相當多時間"></td>
 	<td><input  type="radio" name="8_b" id="8_b" value="有時"></td>
 	<td><input  type="radio" name="8_b" id="8_b" value="偶爾"></td>
 	<td><input  type="radio" name="8_b" id="8_b" value="從來沒有"></td>
 </tr>
 <tr>
 	<td>8_c.</td>
 	<td>你有多少時間認為自己是一個非常緊張的人？</td>
 	<td><input  type="radio" name="8_c" id="8_c" value="常常如此 "></td>
 	<td><input  type="radio" name="8_c" id="8_c" value="大部分時間"></td>
 	<td><input  type="radio" name="8_c" id="8_c" value="相當多時間"></td>
 	<td><input  type="radio" name="8_c" id="8_c" value="有時"></td>
 	<td><input  type="radio" name="8_c" id="8_c" value="偶爾"></td>
 	<td><input  type="radio" name="8_c" id="8_c" value="從來沒有"></td>
 </tr>
 <tr >
 	<td>8_d.</td>
 	<td>你有多少時間覺得沮喪及憂鬱？</td>
 	<td><input  type="radio" name="8_d" id="8_d" value="常常如此 "></td>
 	<td><input  type="radio" name="8_d" id="8_d" value="大部分時間"></td>
 	<td><input  type="radio" name="8_d" id="8_d" value="相當多時間"></td>
 	<td><input  type="radio" name="8_d" id="8_d" value="有時"></td>
 	<td><input  type="radio" name="8_d" id="8_d" value="偶爾"></td>
 	<td><input  type="radio" name="8_d" id="8_d" value="從來沒有"></td>
 </tr>
 <tr>
 	<td>8_e.</td>
 	<td>你有幾經常感覺悶悶不樂，沒有東西可以逗你開心？</td>
 	<td><input  type="radio" name="8_e" id="8_e" value="常常如此 "></td>
 	<td><input  type="radio" name="8_e" id="8_e" value="大部分時間"></td>
 	<td><input  type="radio" name="8_e" id="8_e" value="相當多時間"></td>
 	<td><input  type="radio" name="8_e" id="8_e" value="有時"></td>
 	<td><input  type="radio" name="8_e" id="8_e" value="偶爾"></td>
 	<td><input  type="radio" name="8_e" id="8_e" value="從來沒有"></td>
 </tr>
 
</tbody></table>				
				

<p>9.	過往四個星期裡，你有沒有對自己有以下感受: </p>
				
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody>
 <tr>
  <td > &nbsp; </td>
  <td > &nbsp; </td>
  <td  >  從不  </td>
  <td  >  甚少  </td>
  <td  >  有時 </td>
  <td  >  經常  </td>
  <td >  幾乎總是  </td>
 </tr>
 
  <tr>
 	<td>9_a.</td>
 	<td>當改變發生時，我能適應</td>
 	<td><input  type="radio" name="9_a" id="9_a" value="從不"></td>
 	<td><input  type="radio" name="9_a" id="9_a" value="甚少"></td>
 	<td><input  type="radio" name="9_a" id="9_a" value="有時"></td>
 	<td><input  type="radio" name="9_a" id="9_a" value="經常"></td>
 	<td><input  type="radio" name="9_a" id="9_a" value="幾乎總是"></td>
 </tr>
 <tr >
 	<td>9_b.</td>
 	<td>不管發生什麼事情，我都能處理</td>
 	<td><input  type="radio" name="9_b" id="9_b" value="從不"></td>
 	<td><input  type="radio" name="9_b" id="9_b" value="甚少"></td>
 	<td><input  type="radio" name="9_b" id="9_b" value="有時"></td>
 	<td><input  type="radio" name="9_b" id="9_b" value="經常"></td>
 	<td><input  type="radio" name="9_b" id="9_b" value="幾乎總是"></td>
 </tr>
 <tr>
 	<td>9_c.</td>
 	<td>當我面對問題時，我試著去看事情幽默的一面</td>
 	<td><input  type="radio" name="9_c" id="9_c" value="從不"></td>
 	<td><input  type="radio" name="9_c" id="9_c" value="甚少"></td>
 	<td><input  type="radio" name="9_c" id="9_c" value="有時"></td>
 	<td><input  type="radio" name="9_c" id="9_c" value="經常"></td>
 	<td><input  type="radio" name="9_c" id="9_c" value="幾乎總是"></td>
 </tr>
 <tr >
 	<td>9_d.</td>
 	<td>克服壓力使我更堅強</td>
 	<td><input  type="radio" name="9_d" id="9_d" value="從不"></td>
 	<td><input  type="radio" name="9_d" id="9_d" value="甚少"></td>
 	<td><input  type="radio" name="9_d" id="9_d" value="有時"></td>
 	<td><input  type="radio" name="9_d" id="9_d" value="經常"></td>
 	<td><input  type="radio" name="9_d" id="9_d" value="幾乎總是"></td>
 </tr>
 <tr>
 	<td>9_e.</td>
 	<td>生病、受傷或苦難之後，我很容易就能恢復過來</td>
 	<td><input  type="radio" name="9_e" id="9_e" value="從不"></td>
 	<td><input  type="radio" name="9_e" id="9_e" value="甚少"></td>
 	<td><input  type="radio" name="9_e" id="9_e" value="有時"></td>
 	<td><input  type="radio" name="9_e" id="9_e" value="經常"></td>
 	<td><input  type="radio" name="9_e" id="9_e" value="幾乎總是"></td>
 </tr>
 <tr >
 	<td>9_f.</td>
 	<td>即使有阻礙，我相信我能達成我的目標</td>
 	<td><input  type="radio" name="9_f" id="9_f" value="從不"></td>
 	<td><input  type="radio" name="9_f" id="9_f" value="甚少"></td>
 	<td><input  type="radio" name="9_f" id="9_f" value="有時"></td>
 	<td><input  type="radio" name="9_f" id="9_f" value="經常"></td>
 	<td><input  type="radio" name="9_f" id="9_f" value="幾乎總是"></td>
 </tr>
 <tr>
 	<td>9_g.</td>
 	<td>在壓力之下，我可以專注並且能清楚地思考</td>
 	<td><input  type="radio" name="9_g" id="9_g" value="從不"></td>
 	<td><input  type="radio" name="9_g" id="9_g" value="甚少"></td>
 	<td><input  type="radio" name="9_g" id="9_g" value="有時"></td>
 	<td><input  type="radio" name="9_g" id="9_g" value="經常"></td>
 	<td><input  type="radio" name="9_g" id="9_g" value="幾乎總是"></td>
 </tr>
 <tr >
 	<td>9_h.</td>
 	<td>我不會因失敗而很容易氣餒</td>
 	<td><input  type="radio" name="9_h" id="9_h" value="從不"></td>
 	<td><input  type="radio" name="9_h" id="9_h" value="甚少"></td>
 	<td><input  type="radio" name="9_h" id="9_h" value="有時"></td>
 	<td><input  type="radio" name="9_h" id="9_h" value="經常"></td>
 	<td><input  type="radio" name="9_h" id="9_h" value="幾乎總是"></td>
 </tr>
 <tr>
 	<td>9_i.</td>
 	<td>處理生命中的挑戰和困難時，我認為我是一個堅強的人</td>
 	<td><input  type="radio" name="9_i" id="9_i" value="從不"></td>
 	<td><input  type="radio" name="9_i" id="9_i" value="甚少"></td>
 	<td><input  type="radio" name="9_i" id="9_i" value="有時"></td>
 	<td><input  type="radio" name="9_i" id="9_i" value="經常"></td>
 	<td><input  type="radio" name="9_i" id="9_i" value="幾乎總是"></td>
 </tr>
 <tr >
 	<td>9_j.</td>
 	<td>我能處理一些不愉快或痛苦的感覺，例如：悲傷、害怕和生氣</td>
 	<td><input  type="radio" name="9_j" id="9_j" value="從不"></td>
 	<td><input  type="radio" name="9_j" id="9_j" value="甚少"></td>
 	<td><input  type="radio" name="9_j" id="9_j" value="有時"></td>
 	<td><input  type="radio" name="9_j" id="9_j" value="經常"></td>
 	<td><input  type="radio" name="9_j" id="9_j" value="幾乎總是"></td>
 </tr>
 
</tbody></table>				

<p>10.	你有多同意以下的看法 </p>
				
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody>
 <tr>
  <td > &nbsp; </td>
  <td > &nbsp; </td>
  <td  >  非常 <br/>  不同意 </td>
  <td  >  有點<br/>不同意  </td>
  <td  >  <br/>  中立  </td>
  <td  >   有點<br/>同意  </td>
  <td >  非常 <br/>  同意  </td>
 </tr>
 
  <tr>
 	<td>10_a.</td>
 	<td>你害怕別人知道你是member</td>
 	<td><input  type="radio" name="10_a" id="10_a" value="非常不同意"></td>
 	<td><input  type="radio" name="10_a" id="10_a" value="有點不同意"></td>
 	<td><input  type="radio" name="10_a" id="10_a" value="中立"></td>
 	<td><input  type="radio" name="10_a" id="10_a" value="有點同意"></td>
 	<td><input  type="radio" name="10_a" id="10_a" value="非常同意"></td>
 </tr>
 <tr >
 	<td>10_b.</td>
 	<td>member這身份會給你的日常生活帶來不便</td>
 	<td><input  type="radio" name="10_b" id="10_b" value="非常不同意"></td>
 	<td><input  type="radio" name="10_b" id="10_b" value="有點不同意"></td>
 	<td><input  type="radio" name="10_b" id="10_b" value="中立"></td>
 	<td><input  type="radio" name="10_b" id="10_b" value="有點同意"></td>
 	<td><input  type="radio" name="10_b" id="10_b" value="非常同意"></td>
 </tr>
 <tr>
 	<td>10_c.</td>
 	<td>你不敢主動認識朋友，以防他/她會知道你是member</td>
 	<td><input  type="radio" name="10_c" id="10_c" value="非常不同意"></td>
 	<td><input  type="radio" name="10_c" id="10_c" value="有點不同意"></td>
 	<td><input  type="radio" name="10_c" id="10_c" value="中立"></td>
 	<td><input  type="radio" name="10_c" id="10_c" value="有點同意"></td>
 	<td><input  type="radio" name="10_c" id="10_c" value="非常同意"></td>
 </tr>
 <tr >
 	<td>10_d.</td>
 	<td>你會因為你是member而感到不安</td>
 	<td><input  type="radio" name="10_d" id="10_d" value="非常不同意"></td>
 	<td><input  type="radio" name="10_d" id="10_d" value="有點不同意"></td>
 	<td><input  type="radio" name="10_d" id="10_d" value="中立"></td>
 	<td><input  type="radio" name="10_d" id="10_d" value="有點同意"></td>
 	<td><input  type="radio" name="10_d" id="10_d" value="非常同意"></td>
 </tr>
 <tr>
 	<td>10_e.</td>
 	<td>member的身份對於你來說是一種負擔</td>
 	<td><input  type="radio" name="10_e" id="10_e" value="非常不同意"></td>
 	<td><input  type="radio" name="10_e" id="10_e" value="有點不同意"></td>
 	<td><input  type="radio" name="10_e" id="10_e" value="中立"></td>
 	<td><input  type="radio" name="10_e" id="10_e" value="有點同意"></td>
 	<td><input  type="radio" name="10_e" id="10_e" value="非常同意"></td>
 </tr>
 <tr >
 	<td>10_f.</td>
 	<td>你會因為你是member而疏遠別人</td>
 	<td><input  type="radio" name="10_f" id="10_f" value="非常不同意"></td>
 	<td><input  type="radio" name="10_f" id="10_f" value="有點不同意"></td>
 	<td><input  type="radio" name="10_f" id="10_f" value="中立"></td>
 	<td><input  type="radio" name="10_f" id="10_f" value="有點同意"></td>
 	<td><input  type="radio" name="10_f" id="10_f" value="非常同意"></td>
 </tr>
 <tr>
 	<td>10_g.</td>
 	<td>身為member，你感到無奈</td>
 	<td><input  type="radio" name="10_g" id="10_g" value="非常不同意"></td>
 	<td><input  type="radio" name="10_g" id="10_g" value="有點不同意"></td>
 	<td><input  type="radio" name="10_g" id="10_g" value="中立"></td>
 	<td><input  type="radio" name="10_g" id="10_g" value="有點同意"></td>
 	<td><input  type="radio" name="10_g" id="10_g" value="非常同意"></td>
 </tr>
 <tr >
 	<td>10_h.</td>
 	<td>member的身份讓你生命蒙上汙點</td>
 	<td><input  type="radio" name="10_h" id="10_h" value="非常不同意"></td>
 	<td><input  type="radio" name="10_h" id="10_h" value="有點不同意"></td>
 	<td><input  type="radio" name="10_h" id="10_h" value="中立"></td>
 	<td><input  type="radio" name="10_h" id="10_h" value="有點同意"></td>
 	<td><input  type="radio" name="10_h" id="10_h" value="非常同意"></td>
 </tr>
 <tr>
 	<td>10_i.</td>
 	<td>因為你是member，你會避免與他人接觸</td>
 	<td><input  type="radio" name="10_i" id="10_i" value="非常不同意"></td>
 	<td><input  type="radio" name="10_i" id="10_i" value="有點不同意"></td>
 	<td><input  type="radio" name="10_i" id="10_i" value="中立"></td>
 	<td><input  type="radio" name="10_i" id="10_i" value="有點同意"></td>
 	<td><input  type="radio" name="10_i" id="10_i" value="非常同意"></td>
 </tr>
 
</tbody></table>

<p></p>
				
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody>
 <tr>
  <td > &nbsp; </td>
  <td > &nbsp; </td>
  <td  > 從不 </td>
  <td  >  每月一次或以下  </td>
  <td  >  每月二至四次  </td>
  <td  >  每星期兩至三次  </td>
  <td >  每星期四次或更多  </td>
 </tr>
 
  <tr>
 	<td>11_a.</td>
 	<td>過去一年內，你有幾經常飲酒？</td>
 	<td><input  type="radio" name="11_a" id="11_a" value="從不"></td>
 	<td><input  type="radio" name="11_a" id="11_a" value="每月一次或以下"></td>
 	<td><input  type="radio" name="11_a" id="11_a" value="每月二至四次"></td>
 	<td><input  type="radio" name="11_a" id="11_a" value="每星期兩至三次"></td>
 	<td><input  type="radio" name="11_a" id="11_a" value="每星期四次或更多"></td>
 </tr>
 
</tbody></table>

<p></p>
				
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody>
 <tr>
  <td > &nbsp; </td>
  <td > &nbsp; </td>
  <td  > 0 - 2 </td>
  <td  > 3 - 4  </td>
  <td  > 5 - 6  </td>
  <td  > 7 - 9  </td>
  <td > 10+  </td>
 </tr>
 
  <tr>
 	<td>11_b.</td>
 	<td>過去一年內，在你飲酒的日子裡，通常一日會飲幾多酒精單位？
（1單位=一罐啤酒、一杯酒、一Shot烈酒）</td>
 	<td><input  type="radio" name="11_b" id="11_b" value="0 - 2"></td>
 	<td><input  type="radio" name="11_b" id="11_b" value="3 - 4"></td>
 	<td><input  type="radio" name="11_b" id="11_b" value="5 - 6"></td>
 	<td><input  type="radio" name="11_b" id="11_b" value="7 - 9"></td>
 	<td><input  type="radio" name="11_b" id="11_b" value="10+ "></td>
 </tr>
 
</tbody></table>

<p></p>
				
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody>
 <tr>
  <td > &nbsp; </td>
  <td > &nbsp; </td>
  <td  > 從不</td>
  <td  > 每月<br/>少於一次  </td>
  <td  > 每月<br/>一次  </td>
  <td  > 每星期<br/>一 次  </td>
  <td > 幾乎每日<br/> 或每日  </td>
 </tr>
 
  <tr>
 	<td>11_c.</td>
 	<td>你有幾經常一次過飲至少 5個酒精單位？ </td>
 	<td><input  type="radio" name="11_c" id="11_c" value="從不"></td>
 	<td><input  type="radio" name="11_c" id="11_c" value="每月少於一次"></td>
 	<td><input  type="radio" name="11_c" id="11_c" value="每月一次"></td>
 	<td><input  type="radio" name="11_c" id="11_c" value="每星期一 次 "></td>
 	<td><input  type="radio" name="11_c" id="11_c" value="幾乎每日或每日"></td>
 </tr>
 
</tbody></table>

<p></p>
				
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody>
 <tr>
  <td > &nbsp; </td>
  <td > &nbsp; </td>
  <td  > 從來冇用過 </td>
  <td  > 6個月以內  </td>
  <td  > 6-12個月前  </td>
  <td  > 超過1年前  </td>
 </tr>
 
  <tr>
 	<td>12.</td>
 	<td>請問你有冇使用過非醫生處方的藥物？（例如：K/K仔（氯胺酮）、冰、可卡因）如果有，對上一次用是幾時？</td>
 	<td><input  type="radio" name="12" id="12" value="從來冇用過"></td>
 	<td><input  type="radio" name="12" id="12" value="6個月以內"></td>
 	<td><input  type="radio" name="12" id="12" value="6-12個月前"></td>
 	<td><input  type="radio" name="12" id="12" value="超過1年前"></td>
 </tr>
 
</tbody></table>
				
<p>13.	整體來說，你覺得生活令你滿意嗎? (請以0-10分表示，10分為非常滿意） <br/>
<input type="text" id="13" name="13" placeholder=""><br/>
</p>
				
				
<p>14.	以下的描述為一些在開始前，對本網上介入的想法，請按你的情況回答你有多同意。<br/></p>
<!-- (T0時才會出現，只有控制組會看到#14的四題問題) -->
				
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody><!-- (T0時才會出現，只有控制組會看到#14的四題問題) -->
 <tr>
  <td > &nbsp; </td>
  <td > &nbsp; </td>
  <td  >  非常 <br/>  不同意 </td>
  <td  >  有點<br/>不同意  </td>
  <td  >  <br/>  中立  </td>
  <td  >   有點<br/>同意  </td>
  <td >  非常 <br/>  同意  </td>
 </tr>
 
  <tr>
 	<td>14_a.</td> <!-- (T0時才會出現，只有控制組會看到#14的四題問題) -->
 	<td>我認爲本網上的正向心理學介入沒有長期的效用。</td>
 	<td><input  type="radio" name="14_a" id="14_a" value="非常不同意"></td>
 	<td><input  type="radio" name="14_a" id="14_a" value="有點不同意"></td>
 	<td><input  type="radio" name="14_a" id="14_a" value="中立"></td>
 	<td><input  type="radio" name="14_a" id="14_a" value="有點同意"></td>
 	<td><input  type="radio" name="14_a" id="14_a" value="非常同意"></td>
 </tr>
 
  <tr>
 	<td>14_b.</td> <!-- (T0時才會出現，只有控制組會看到#14的四題問題) -->
 	<td>我覺得我每星期會起碼登入一次完成本正向心理學的練習。	`	</td>
 	<td><input  type="radio" name="14_b" id="14_b" value="非常不同意"></td>
 	<td><input  type="radio" name="14_b" id="14_b" value="有點不同意"></td>
 	<td><input  type="radio" name="14_b" id="14_b" value="中立"></td>
 	<td><input  type="radio" name="14_b" id="14_b" value="有點同意"></td>
 	<td><input  type="radio" name="14_b" id="14_b" value="非常同意"></td>
 </tr>
 
  <tr>
 	<td>14_c</td> <!-- (T0時才會出現，只有控制組會看到#14的四題問題) -->
 	<td>我覺得自己在介入完結後也會繼續自行進行本正向心理學的練習。</td>
 	<td><input  type="radio" name="14_c" id="14_c" value="非常不同意"></td>
 	<td><input  type="radio" name="14_c" id="14_c" value="有點不同意"></td>
 	<td><input  type="radio" name="14_c" id="14_c" value="中立"></td>
 	<td><input  type="radio" name="14_c" id="14_c" value="有點同意"></td>
 	<td><input  type="radio" name="14_c" id="14_c" value="非常同意"></td>
 </tr>
 
  <tr>
 	<td>14_d</td> <!-- (T0時才會出現，只有控制組會看到#14的四題問題) -->
 	<td>我認爲在日常生活上實行本正向心理學介入的建議是困難的。</td>
 	<td><input  type="radio" name="14_d" id="14_d" value="非常不同意"></td>
 	<td><input  type="radio" name="14_d" id="14_d" value="有點不同意"></td>
 	<td><input  type="radio" name="14_d" id="14_d" value="中立"></td>
 	<td><input  type="radio" name="14_d" id="14_d" value="有點同意"></td>
 	<td><input  type="radio" name="14_d" id="14_d" value="非常同意"></td>
 </tr>
 
</tbody></table>

<!-- <p>15.	以下的描述為一些完結後，對本網上介入的想法，請按你的情況回答你有多同意。</p>
(T1時才會出現，只有控制組會看到#15的四題問題)
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody>
 <tr>
  <td > &nbsp; </td>
  <td > &nbsp; </td>
  <td  >  非常 <br/>  不同意 </td>
  <td  >  有點<br/>不同意  </td>
  <td  >  <br/>  中立  </td>
  <td  >   有點<br/>同意  </td>
  <td >  非常 <br/>  同意  </td>
 </tr>
 
  <tr>
 	<td>15_a.</td>
 	<td>我認爲本網上的正向心理學介入沒有長期的效用。 </td>
 	<td><input  type="radio" name="15_a" id="15_a" value="非常不同意"></td>
 	<td><input  type="radio" name="15_a" id="15_a" value="有點不同意"></td>
 	<td><input  type="radio" name="15_a" id="15_a" value="中立"></td>
 	<td><input  type="radio" name="15_a" id="15_a" value="有點同意"></td>
 	<td><input  type="radio" name="15_a" id="15_a" value="非常同意"></td>
 </tr>
  <tr>
 	<td>15_b.</td>
 	<td>我覺得自己會繼續自行進行本正向心理學的練習。 </td>
 	<td><input  type="radio" name="15_b" id="15_b" value="非常不同意"></td>
 	<td><input  type="radio" name="15_b" id="15_b" value="有點不同意"></td>
 	<td><input  type="radio" name="15_b" id="15_b" value="中立"></td>
 	<td><input  type="radio" name="15_b" id="15_b" value="有點同意"></td>
 	<td><input  type="radio" name="15_b" id="15_b" value="非常同意"></td>
 </tr>
  <tr>
 	<td>15_c.</td>
 	<td>我認爲在日常生活上實行本正向心理學介入的建議是困難的。 </td>
 	<td><input  type="radio" name="15_c" id="15_c" value="非常不同意"></td>
 	<td><input  type="radio" name="15_c" id="15_c" value="有點不同意"></td>
 	<td><input  type="radio" name="15_c" id="15_c" value="中立"></td>
 	<td><input  type="radio" name="15_c" id="15_c" value="有點同意"></td>
 	<td><input  type="radio" name="15_c" id="15_c" value="非常同意"></td>
 </tr>
 
</tbody></table>

<p></p> -->

<button type="submit" id="add-content">提交</button>
				</form>
				</div>
			
		</div>
		<div class="col-md-1 col-lg-1 hidden-xs hidden-sm"></div>
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
	<script src=" //cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	
	<script type="text/javascript">
	$("select#1_b").change(function(){
// 		    console.log($(this).val());
		    if ($(this).val() == '9其他') {
				$("#1_b_text").show();
			}else{
				$("#1_b_text").hide();
			}
		 });
	$("select#1_c").change(function(){
// 		    console.log($(this).val());
		    if ($(this).val() == '7其他') {
				$("#1_c_text").show();
			}else{
				$("#1_c_text").hide();
			}
		 });
	$("select#2_a").change(function(){
		    if ($(this).val() == '2 沒有') {
				$("#2a_to_2f").hide();
			}else{
				$("#2a_to_2f").show();
			}
		 });
	$("select#2_f").change(function(){
		    if ($(this).val() == '2 沒有') {
				$("#2f_to_3a").hide();
			}else{
				$("#2f_to_3a").show();
			}
		 });
	/* $("select#1_g").change(function(){
		    if ($(this).val() == '6其他') {
				$("#1_g_text").show();
			}else{
				$("#1_g_text").hide();
			}
		 }); */
	
	
// 	$("input[type=radio][name=infType][value=1]").prop("checked",'checked');
	
	function check_1_g(obj){
		if ( obj.checked == true){
// 			console.log("checked");
			$("#1_g_text").show();
			}else{
// 				console.log("no");
				$("#1_g_text").hide();
			}

	}
	</script>
</html>
