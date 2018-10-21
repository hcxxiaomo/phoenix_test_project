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
				<span class="text_c">
				問卷調查
				</span>
				<p>
				<div style="text-align: left;">
1.	基本資料<br/>
1_a.	請問你幾多歲？
<br/>答案：${obj.result['1_a'] }岁<br/><br/>
<!-- <input type="text" id="1_a" name="1_a"  placeholder="岁"> -->
1_b.	請問你的最高學歷是？<br/>
答案：${obj.result['1_b']} &nbsp; ${obj.result['1_b_text']}<br/><br/>

1_c.	目前工作狀況 <br/>
答案：${obj.result['1_c']} &nbsp; ${obj.result['1_c_text']}<br/><br/>

1_d.	請問你的性傾向是？<br/>
<br/>答案：${obj.result['1_d']}<br/><br/>
<!-- □1同性戀              □2雙性戀              □3異性戀              □4不便透露<br/> -->
1_e.	請問你目前的婚姻狀況是？<br/>
<br/>答案：${obj.result['1_e']}<br/><br/>

<!-- □1未婚          □2與女性己婚          □3與女性同居          □4離婚/喪偶          □5與男性同居<br/> -->
1_f.	請問你的愛滋病病毒（HIV）的檢測結果是？ <br/>
<br/>答案：${obj.result['1_f']}<br/><br/>
<!-- □1陽性          □2陰性          □3不確定<br/> -->
1_g.	在過去6個月內，你有否曾患過以下性病？（可多選）<br/>
<br/>答案：${obj.result['1_g']}<br/><br/>
							
<input type="text" id="1_g_text" name="1_g_text" style="display: none;"  placeholder="其他"><br/><br/>
<!-- □1沒有性病          □2淋病          □3梅毒          □4尖銳濕疣           □5生殖器疱疹<br/> -->
<!-- □6其他(註明_________________)<br/> -->
				
2.	固定性伴指有穩定性關係的同性性伴侶，包括建立了戀愛關係的男朋友及其他報紙穩定性關係的同性性伴。<br/>

2_a.	最近1個月，你有固定性伴嗎？ <br/>
<br/>答案：${obj.result['2_a']}<br/><br/>
<!--       □1  有       □2 沒有（跳至2f）<br/> -->
2_b.	最近1個月，你的固定性伴有多少人？<br/>
<br/>答案：${obj.result['2_b']}位<br/><br/>
2_c.	最近1次你與固定性伴肛交時使用安全套了嗎？<br/>
<br/>答案：${obj.result['2_c']}<br/><br/>
<!--        □1  有使用       □2 沒有使用<br/> -->
2_d.	在過去1個月內，你和固定性伴肛交時安全套的使用情況？<br/>
<br/>答案：${obj.result['2_d']}<br/><br/>
<!-- □1  從不使用               □2   間中使用               □3  經常使用               □4  每次使用<br/> -->
2_e.	在未來的6個月，你與固定性伴肛交時，每次都使用安全套的可能性有多大？<br/>
<br/>答案：${obj.result['2_e']}<br/><br/>

<!-- □1  不可能                        □2  可能性很小               □3  一半一半          <br/> -->
<!-- □4  可能性很大                □5  完全可能<br/> -->
2_f.	最近1個月，你有非固定性伴嗎？<br/>
<!--        □1  有       □2 沒有（跳至 3a） -->
<br/>答案：${obj.result['2_f']}<br/><br/>
2_g.	最近1個月，你的非固定性伴有多少人？<br/>
<br/>答案：${obj.result['2_g']}位<br/><br/>
2_h.	最近1次你與非固定性伴肛交時使用安全套了嗎？ <br/>
<br/>答案：${obj.result['2_h']}<br/><br/>
2_i.	在過去1個月內，你和非固定性伴肛交時安全套的使用情況？<br/>
<br/>答案：${obj.result['2_i']}<br/><br/>
<!-- 	□1  從不使用               □2   間中使用               □3  經常使用               □4  每次使用<br/> -->
2_j.	在未來的6個月，你與固定性伴肛交時，每次都使用安全套的可能性有多大？<br/>
<br/>答案：${obj.result['2_j']}<br/><br/>
<!-- □1  不可能                        □2  可能性很小               □3  一半一半          <br/> -->
<!-- □4  可能性很大                □5  完全可能<br/> -->
</div>
<p>3.	請細心閱讀各句子，依據你的實際狀況選出你感覺自己有多常符合該描述狀況。</p>
				
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody>
<!--  <tr> -->
<!--   <td > &nbsp; </td> -->
<!--   <td > &nbsp; </td> -->
<!--   <td  >  幾乎<br/>  沒有<br/>  0-10%<br/> </td> -->
<!--   <td  >  有時候<br/>  11-35%<br/>  </td> -->
<!--   <td  >  大約<br/>  一半<br/>  36-65%  </td> -->
<!--   <td  >  大部<br/>  分是<br/>  66-90%  </td> -->
<!--   <td >  幾乎<br/>  總是<br/>  91-100%  </td> -->
<!--  </tr>											 -->
 
 <tr>
 	<td>3_a.</td>
 	<td>我會去注意我感受到什麼。</td>
 	<td>答案：${obj.result['3_a']}</td>
 </tr>
 <tr >
 	<td>3_b.</td>
 	<td>我不知道我的感受是什麼。</td>
 	<td>答案：${obj.result['3_b']}</td>
 </tr>
 <tr>
 	<td>3_c.</td>
 	<td>我很難理解我的感受代表什麼。</td>
 	<td>答案：${obj.result['3_c']}</td>
 </tr>
 <tr >
 	<td>3_d.</td>
 	<td>我注意我的感受。</td>
 	<td>答案：${obj.result['3_d']}</td>
 </tr>
 <tr>
 	<td>3_e.</td>
 	<td>我不肯定我的感受是什麽。</td>
 	<td>答案：${obj.result['3_e']}</td>
 </tr>
 <tr >
 	<td>3_f.</td>
 	<td>當我苦惱時，我會承認我現在所經歷的情緒。</td>
 	<td>答案：${obj.result['3_f']}</td>
 </tr>
 <tr>
 	<td>3_g.</td>
 	<td>當我苦惱時，我會對於自己有這樣的感受而感到尷尬。</td>
 	<td>答案：${obj.result['3_g']}</td>
 </tr>
 <tr >
 	<td>3_h.</td>
 	<td>當我苦惱時，我會很難去完成一件事。</td>
 	<td>答案：${obj.result['3_h']}</td>
 </tr>
 <tr>
 	<td>3_i.</td>
 	<td>當我苦惱時，我會開始失控。</td>
 	<td>答案：${obj.result['3_i']}</td>
 </tr>
 <tr >
 	<td>3_j.</td>
 	<td>當我苦惱時，我相信我會這樣持續很久。</td>
 	<td>答案：${obj.result['3_j']}</td>
 </tr>
 <tr>
 	<td>3_k.</td>
 	<td>當我苦惱時，我相信最後我會感到相當憂鬱。</td>
 	<td>答案：${obj.result['3_k']}</td>
 </tr>
 <tr >
 	<td>3_l.</td>
 	<td>當我苦惱時，我很難專心在其他事上。</td>
 	<td>答案：${obj.result['3_l']}</td>
 </tr>
 <tr>
 	<td>3_m.</td>
 	<td>當我苦惱時，我會對於我自己有這樣的感受而感到難爲情的。</td>
 	<td>答案：${obj.result['3_m']}</td>
 </tr>
 <tr >
 	<td>3_n.</td>
 	<td>當我苦惱時，我對自己有這樣的感受而感到内疚。</td>
 	<td>答案：${obj.result['3_n']}</td>
 </tr>
 <tr>
 	<td>3_o.</td>
 	<td>當我苦惱時，我很難集中注意力。</td>
 	<td>答案：${obj.result['3_o']}</td>
 </tr>
 <tr >
 	<td>3_p.</td>
 	<td>當我苦惱時，我很難控制我的行為。</td>
 	<td>答案：${obj.result['3_p']}</td>
 </tr>
 <tr>
 	<td>3_q.</td>
 	<td>當我苦惱時，我相信我所能做的就是沈溺其中。</td>
 	<td>答案：${obj.result['3_q']}</td>
 </tr>
 <tr >
 	<td>3_r.</td>
 	<td>當我苦惱時，我會對我的行為失去控制。</td>
 	<td>答案：${obj.result['3_r']}</td>
 </tr>
</tbody></table>


<p>4.	以下各項是形容<span class="text_red">感受或情緒的形容詞</span>，請仔細閱讀以下詞語，並根據你<span class="text_red">一般的情況</span>，選出最適合你的描述。</p>
				
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody>
<!--  <tr> -->
<!--   <td > &nbsp; </td> -->
<!--   <td > &nbsp; </td> -->
<!--   <td  >  並無此 <br/>  感覺  </td> -->
<!--   <td  >  有些許<br/>  感覺  </td> -->
<!--   <td  >  <br/>  一般  </td> -->
<!--   <td  >  有相當<br/>  感覺  </td> -->
<!--   <td >  有強烈<br/>  感覺  </td> -->
<!--  </tr> -->
 
    <tr>
 	<td>4_a.</td>
 	<td>感興趣</td>
 	<td>答案：${obj.result['4_a']}</td>
 </tr>
 <tr >
 	<td>4_b.</td>
 	<td>心煩意亂的</td>
 	<td>答案：${obj.result['4_b']}</td>
 </tr>
 <tr>
 	<td>4_c.</td>
 	<td>興奮</td>
 	<td>答案：${obj.result['4_c']}</td>
 </tr>
 <tr >
 	<td>4_d.</td>
 	<td>悲痛的</td>
 	<td>答案：${obj.result['4_d']}</td>
 </tr>
 <tr>
 	<td>4_e.</td>
 	<td>堅強</td>
 	<td>答案：${obj.result['4_e']}</td>
 </tr>
 <tr >
 	<td>4_f.</td>
 	<td>內疚的</td>
 	<td>答案：${obj.result['4_f']}</td>
 </tr>
 <tr>
 	<td>4_g.</td>
 	<td>恐懼的</td>
 	<td>答案：${obj.result['4_g']}</td>
 </tr>
 <tr >
 	<td>4_h.</td>
 	<td>有敵意的</td>
 	<td>答案：${obj.result['4_h']}</td>
 </tr>
 <tr>
 	<td>4_i.</td>
 	<td>充滿熱誠</td>
 	<td>答案：${obj.result['4_i']}</td>
 </tr>
 <tr >
 	<td>4_j.</td>
 	<td>自豪</td>
 	<td>答案：${obj.result['4_j']}</td>
 </tr>
 <tr>
 	<td>4_k.</td>
 	<td>易惱的</td>
 	<td>答案：${obj.result['4_k']}</td>
 </tr>
 <tr >
 	<td>4_l.</td>
 	<td>機警</td>
 	<td>答案：${obj.result['4_l']}</td>
 </tr>
 <tr>
 	<td>4_m.</td>
 	<td>羞愧的</td>
 	<td>答案：${obj.result['4_m']}</td>
 </tr>
 <tr >
 	<td>4_n.</td>
 	<td>充滿靈感</td>
 	<td>答案：${obj.result['4_n']}</td>
 </tr>
 <tr>
 	<td>4_o.</td>
 	<td>緊張的</td>
 	<td>答案：${obj.result['4_o']}</td>
 </tr>
 <tr >
 	<td>4_p.</td>
 	<td>堅決</td>
 	<td>答案：${obj.result['4_p']}</td>
 </tr>
 <tr>
 	<td>4_q.</td>
 	<td>專心</td>
 	<td>答案：${obj.result['4_q']}</td>
 </tr>
 <tr >
 	<td>4_r.</td>
 	<td>戰戰兢兢的</td>
 	<td>答案：${obj.result['4_r']}</td>
 </tr>
 <tr>
 	<td>4_s.</td>
 	<td>積極</td>
 	<td>答案：${obj.result['4_s']}</td>
 </tr>
 <tr >
 	<td>4_t.</td>
 	<td>害怕的</td>
 	<td>答案：${obj.result['4_t']}</td>
 </tr>
 
</tbody></table>


<p>5.	以下句子是關於你對<span class="text_red">感恩</span>的看法，請選擇最適合你意見的描述。</p>
				
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody>
<!--  <tr> -->
<!--   <td > &nbsp; </td> -->
<!--   <td > &nbsp; </td> -->
<!--   <td  >  非常 <br/>  不同意 </td> -->
<!--   <td  >  <br/>不同意  </td> -->
<!--   <td  >  有一點<br/>  不同意  </td> -->
<!--   <td  >  <br/>  中立  </td> -->
<!--   <td >  有一點<br/>  同意   </td> -->
<!--   <td  >   <br/>同意  </td> -->
<!--   <td >  非常 <br/>  同意  </td> -->
<!--  </tr> -->
 
   <tr>
 	<td>5_a.</td>
 	<td>在我生命中有如此多值得感恩的事情。</td>
 	<td>答案：${obj.result['5_a']}</td>
 </tr>
 <tr >
 	<td>5_b.</td>
 	<td>如果我必須列出我覺得感恩的每一件事，這個列表一定會很長。</td>
 	<td>答案：${obj.result['5_b']}</td>
 </tr>
 <tr>
 	<td>5_c.</td>
 	<td>當我看這個世界時，我看不到多少值得感恩的事。</td>
 	<td>答案：${obj.result['5_c']}</td>
 </tr>
 <tr >
 	<td>5_d.</td>
 	<td>我對形形色色的人都心存感激。</td>
 	<td>答案：${obj.result['5_d']}</td>
 </tr>
 <tr>
 	<td>5_e.</td>
 	<td>隨著年齡的增長，我發現自己更懂得去感激我生命中的人物和事件。</td>
 	<td>答案：${obj.result['5_e']}</td>
 </tr>
 <tr >
 	<td>5_f.</td>
 	<td>要經過很久的時間以後，我才懂得感謝一些人或事情。</td>
 	<td>答案：${obj.result['5_f']}</td>
 </tr>
 
 
</tbody></table>

<p>6.	以下是一些你可能曾有的感受或行為。請按照過去一星期內你的實際情況或感覺，選擇最適合你的描述。</p>
				
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody>
<!--  <tr> -->
<!--   <td > &nbsp; </td> -->
<!--   <td > &nbsp; </td> -->
<!--   <td  > 沒有或少於一天 <br/>   (&lt; 1 天) </td> -->
<!--   <td  >  甚少<br/>(1-2天)  </td> -->
<!--   <td  >  偶爾<br/>  (3-4天)  </td> -->
<!--   <td  > 經常 <br/>  (5-7天)  </td> -->
<!--  </tr> -->
 
  <tr>
 	<td>6_a.</td>
 	<td>我因一些小事而煩惱。</td>
 	<td>答案：${obj.result['6_a']}</td>
 </tr>
 <tr >
 	<td>6_b.</td>
 	<td>我不想吃東西，我的胃口不好。</td>
 	<td>答案：${obj.result['6_b']}</td>
 </tr>
 <tr>
 	<td>6_c.</td>
 	<td>即使家人和朋友幫助，仍然無法擺脫苦悶。</td>
 	<td>答案：${obj.result['6_c']}</td>
 </tr>
 <tr >
 	<td>6_d.</td>
 	<td>我覺得你和一般人一樣好。</td>
 	<td>答案：${obj.result['6_d']}</td>
 </tr>
 <tr>
 	<td>6_e.</td>
 	<td>我在做事時，無法集中自己的注意力。</td>
 	<td>答案：${obj.result['6_e']}</td>
 </tr>
 <tr >
 	<td>6_f.</td>
 	<td>我感到情緒低沉。</td>
 	<td>答案：${obj.result['6_f']}</td>
 </tr>
  <tr>
 	<td>6_g.</td>
 	<td>我感到所做的一切都很費心力。</td>
 	<td>答案：${obj.result['6_g']}</td>
 </tr>
 <tr >
 	<td>6_h.</td>
 	<td>我覺得前途是有希望的。</td>
 	<td>答案：${obj.result['6_h']}</td>
 </tr>
 <tr>
 	<td>6_i.</td>
 	<td>我覺得我的生活是失敗的。</td>
 	<td>答案：${obj.result['6_i']}</td>
 </tr>
 <tr >
 	<td>6_j.</td>
 	<td>我感到害怕。</td>
 	<td>答案：${obj.result['6_j']}</td>
 </tr>
 <tr>
 	<td>6_k.</td>
 	<td>我的睡眠情況不好。</td>
 	<td>答案：${obj.result['6_k']}</td>
 </tr>
 <tr >
 	<td>6_l.</td>
 	<td>我感到高興。</td>
 	<td>答案：${obj.result['6_l']}</td>
 </tr>
 <tr>
 	<td>6_m.</td>
 	<td>我比平時少說話。</td>
 	<td>答案：${obj.result['6_m']}</td>
 </tr>
 <tr >
 	<td>6_n.</td>
 	<td>我感到孤單。</td>
 	<td>答案：${obj.result['6_n']}</td>
 </tr>
 <tr>
 	<td>6_o.</td>
 	<td>我覺得人們對我不太友好。</td>
 	<td>答案：${obj.result['6_o']}</td>
 </tr>
 <tr >
 	<td>6_p.</td>
 	<td>我享受生活。</td>
 	<td>答案：${obj.result['6_p']}</td>
 </tr>
 <tr>
 	<td>6_q.</td>
 	<td>我曾哭泣。</td>
 	<td>答案：${obj.result['6_q']}</td>
 </tr>
 <tr >
 	<td>6_r.</td>
 	<td>我感到憂愁。</td>
 	<td>答案：${obj.result['6_r']}</td>
 </tr>
 <tr>
 	<td>6_s.</td>
 	<td>我感到人們不喜歡我。</td>
 	<td>答案：${obj.result['6_s']}</td>
 </tr>
 <tr >
 	<td>6_t.</td>
 	<td>我覺得無法繼續你的日常工作。</td>
 	<td>答案：${obj.result['6_t']}</td>
 </tr>
 
</tbody></table>
				
				

<p>7.	請按照在過去一個月內你的實際情況或感覺，選擇最適合你的描述。</p>
				
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody>
<!--  <tr> -->
<!--   <td > &nbsp; </td> -->
<!--   <td > &nbsp; </td> -->
<!--   <td  >  非常 <br/>  不同意 </td> -->
<!--   <td  >  <br/>不同意  </td> -->
<!--   <td  >  <br/>  中立  </td> -->
<!--   <td  >   <br/>同意  </td> -->
<!--   <td >  非常 <br/>  同意  </td> -->
<!--  </tr> -->
 
  <tr>
 	<td>7_a.</td>
 	<td>許多時候，我都會預期最好的狀況。</td>
 	<td>答案：${obj.result['7_a']}</td>
 </tr>
 <tr >
 	<td>7_b.</td>
 	<td>對我來說，隨時放輕鬆很容易。</td>
 	<td>答案：${obj.result['7_b']}</td>
 </tr>
 <tr>
 	<td>7_c.</td>
 	<td>如果我認為我會把事情搞砸，就真的會發生。</td>
 	<td>答案：${obj.result['7_c']}</td>
 </tr>
 <tr >
 	<td>7_d.</td>
 	<td>對於我的未來，我總是相當樂觀。</td>
 	<td>答案：${obj.result['7_d']}</td>
 </tr>
 <tr>
 	<td>7_e.</td>
 	<td>我很喜歡與朋友相處。</td>
 	<td>答案：${obj.result['7_e']}</td>
 </tr>
 <tr >
 	<td>7_f.</td>
 	<td>保持工作忙碌，對我非常重要。</td>
 	<td>答案：${obj.result['7_f']}</td>
 </tr>
 <tr>
 	<td>7_g.</td>
 	<td>很少有事情是照著我期待的方向走。</td>
 	<td>答案：${obj.result['7_g']}</td>
 </tr>
 <tr >
 	<td>7_h.</td>
 	<td>我不太容易感到不安。</td>
 	<td>答案：${obj.result['7_h']}</td>
 </tr>
 <tr>
 	<td>7_i.</td>
 	<td>我幾乎不期待好事會發生在我頭上。</td>
 	<td>答案：${obj.result['7_i']}</td>
 </tr>
 <tr >
 	<td>7_j.</td>
 	<td>生活中，我感覺自己好事情總是比壞事情發生多。</td>
 	<td>答案：${obj.result['7_j']}</td>
 </tr>
 
</tbody></table>				
				
				

<p>8.	請按照在過去一個月內你的實際情況或感覺，選擇最適合你的描述。 </p>
				
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody>
<!--  <tr> -->
<!--   <td > &nbsp; </td> -->
<!--   <td > &nbsp; </td> -->
<!--   <td  > 常常如此 </td> -->
<!--   <td  >  大部分<br/>時間 </td> -->
<!--   <td  >  相當多<br/>時間 </td> -->
<!--   <td  > 有時  </td> -->
<!--   <td > 偶爾  </td> -->
<!--   <td  >  從來沒有  </td> -->
<!--  </tr> -->
 
   <tr>
 	<td>8_a.</td>
 	<td>有多少時間你是個快樂的人？</td>
 	<td>答案：${obj.result['8_a']}</td>
 </tr>
 <tr >
 	<td>8_b.</td>
 	<td>你有多少時間感到鎮定和心境平靜？</td>
 	<td>答案：${obj.result['8_b']}</td>
 </tr>
 <tr>
 	<td>8_c.</td>
 	<td>你有多少時間認為自己是一個非常緊張的人？</td>
 	<td>答案：${obj.result['8_c']}</td>
 </tr>
 <tr >
 	<td>8_d.</td>
 	<td>你有多少時間覺得沮喪及憂鬱？</td>
 	<td>答案：${obj.result['8_d']}</td>
 </tr>
 <tr>
 	<td>8_e.</td>
 	<td>你有幾經常感覺悶悶不樂，沒有東西可以逗你開心？</td>
 	<td>答案：${obj.result['8_e']}</td>
 </tr>
 
</tbody></table>				
				

<p>9.	過往四個星期裡，你有沒有對自己有以下感受: </p>
				
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody>
<!--  <tr> -->
<!--   <td > &nbsp; </td> -->
<!--   <td > &nbsp; </td> -->
<!--   <td  >  從不  </td> -->
<!--   <td  >  甚少  </td> -->
<!--   <td  >  有時 </td> -->
<!--   <td  >  經常  </td> -->
<!--   <td >  幾乎總是  </td> -->
<!--  </tr> -->
 
  <tr>
 	<td>9_a.</td>
 	<td>當改變發生時，我能適應</td>
 	<td>答案：${obj.result['9_a']}</td>
 </tr>
 <tr >
 	<td>9_b.</td>
 	<td>不管發生什麼事情，我都能處理</td>
 	<td>答案：${obj.result['9_b']}</td>
 </tr>
 <tr>
 	<td>9_c.</td>
 	<td>當我面對問題時，我試著去看事情幽默的一面</td>
 	<td>答案：${obj.result['9_c']}</td>
 </tr>
 <tr >
 	<td>9_d.</td>
 	<td>克服壓力使我更堅強</td>
 	<td>答案：${obj.result['9_d']}</td>
 </tr>
 <tr>
 	<td>9_e.</td>
 	<td>生病、受傷或苦難之後，我很容易就能恢復過來</td>
 	<td>答案：${obj.result['9_e']}</td>
 </tr>
 <tr >
 	<td>9_f.</td>
 	<td>即使有阻礙，我相信我能達成我的目標</td>
 	<td>答案：${obj.result['9_f']}</td>
 </tr>
 <tr>
 	<td>9_g.</td>
 	<td>在壓力之下，我可以專注並且能清楚地思考</td>
 	<td>答案：${obj.result['9_g']}</td>
 </tr>
 <tr >
 	<td>9_h.</td>
 	<td>我不會因失敗而很容易氣餒</td>
 	<td>答案：${obj.result['9_h']}</td>
 </tr>
 <tr>
 	<td>9_i.</td>
 	<td>處理生命中的挑戰和困難時，我認為我是一個堅強的人</td>
 	<td>答案：${obj.result['9_i']}</td>
 </tr>
 <tr >
 	<td>9_j.</td>
 	<td>我能處理一些不愉快或痛苦的感覺，例如：悲傷、害怕和生氣</td>
 	<td>答案：${obj.result['9_j']}</td>
 </tr>
 
</tbody></table>				

<p>10.	你有多同意以下的看法 </p>
				
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody>
<!--  <tr> -->
<!--   <td > &nbsp; </td> -->
<!--   <td > &nbsp; </td> -->
<!--   <td  >  非常 <br/>  不同意 </td> -->
<!--   <td  >  有點<br/>不同意  </td> -->
<!--   <td  >  <br/>  中立  </td> -->
<!--   <td  >   有點<br/>同意  </td> -->
<!--   <td >  非常 <br/>  同意  </td> -->
<!--  </tr> -->
 
  <tr>
 	<td>10_a.</td>
 	<td>你害怕別人知道你是member</td>
 	<td>答案：${obj.result['10_a']}</td>
 </tr>
 <tr >
 	<td>10_b.</td>
 	<td>member這身份會給你的日常生活帶來不便</td>
 	<td>答案：${obj.result['10_b']}</td>
 </tr>
 <tr>
 	<td>10_c.</td>
 	<td>你不敢主動認識朋友，以防他/她會知道你是member</td>
 	<td>答案：${obj.result['10_c']}</td>
 </tr>
 <tr >
 	<td>10_d.</td>
 	<td>你會因為你是member而感到不安</td>
 	<td>答案：${obj.result['10_d']}</td>
 </tr>
 <tr>
 	<td>10_e.</td>
 	<td>member的身份對於你來說是一種負擔</td>
 	<td>答案：${obj.result['10_e']}</td>
 </tr>
 <tr >
 	<td>10_f.</td>
 	<td>你會因為你是member而疏遠別人</td>
 	<td>答案：${obj.result['10_f']}</td>
 </tr>
 <tr>
 	<td>10_g.</td>
 	<td>身為member，你感到無奈</td>
 	<td>答案：${obj.result['10_g']}</td>
 </tr>
 <tr >
 	<td>10_h.</td>
 	<td>member的身份讓你生命蒙上汙點</td>
 	<td>答案：${obj.result['10_h']}</td>
 </tr>
 <tr>
 	<td>10_i.</td>
 	<td>因為你是member，你會避免與他人接觸</td>
 	<td>答案：${obj.result['10_i']}</td>
 </tr>
 
</tbody></table>

<p></p>
				
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody>
<!--  <tr> -->
<!--   <td > &nbsp; </td> -->
<!--   <td > &nbsp; </td> -->
<!--   <td  > 從不 </td> -->
<!--   <td  >  每月一次或以下  </td> -->
<!--   <td  >  每月二至四次  </td> -->
<!--   <td  >  每星期兩至三次  </td> -->
<!--   <td >  每星期四次或更多  </td> -->
<!--  </tr> -->
 
  <tr>
 	<td>11_a.</td>
 	<td>過去一年內，你有幾經常飲酒？</td>
 	<td>答案：${obj.result['11_a']}</td>
 </tr>
 
</tbody></table>

<p></p>
				
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody>
<!--  <tr> -->
<!--   <td > &nbsp; </td> -->
<!--   <td > &nbsp; </td> -->
<!--   <td  > 0 - 2 </td> -->
<!--   <td  > 3 - 4  </td> -->
<!--   <td  > 5 - 6  </td> -->
<!--   <td  > 7 - 9  </td> -->
<!--   <td > 10+  </td> -->
<!--  </tr> -->
 
  <tr>
 	<td>11_b.</td>
 	<td>過去一年內，在你飲酒的日子裡，通常一日會飲幾多酒精單位？
（1單位=一罐啤酒、一杯酒、一Shot烈酒）</td>
 	<td>答案：${obj.result['11_b']}</td>
 </tr>
 
</tbody></table>

<p></p>
				
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody>
<!--  <tr> -->
<!--   <td > &nbsp; </td> -->
<!--   <td > &nbsp; </td> -->
<!--   <td  > 從不</td> -->
<!--   <td  > 每月<br/>少於一次  </td> -->
<!--   <td  > 每月<br/>一次  </td> -->
<!--   <td  > 每星期<br/>一 次  </td> -->
<!--   <td > 幾乎每日<br/> 或每日  </td> -->
<!--  </tr> -->
 
  <tr>
 	<td>11_c.</td>
 	<td>你有幾經常一次過飲至少 5個酒精單位？ </td>
 	<td>答案：${obj.result['11_c']}</td>
 </tr>
 
</tbody></table>

<p></p>
				
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody>
<!--  <tr> -->
<!--   <td > &nbsp; </td> -->
<!--   <td > &nbsp; </td> -->
<!--   <td  > 從來冇用過 </td> -->
<!--   <td  > 6個月以內  </td> -->
<!--   <td  > 6-12個月前  </td> -->
<!--   <td  > 超過1年前  </td> -->
<!--  </tr> -->
 
  <tr>
 	<td>12.</td>
 	<td>請問你有冇使用過非醫生處方的藥物？（例如：K/K仔（氯胺酮）、冰、可卡因）如果有，對上一次用是幾時？</td>
 	<td>答案：${obj.result['12']}</td>
 </tr>
 
</tbody></table>
				
<p>13.	整體來說，你覺得生活令你滿意嗎? (請以0-10分表示，10分為非常滿意） <br/>
<input type="text" id="13" name="13" value="${obj.result['13']}"><br/>
</p>
				
				
<p>14.	以下的描述為一些在開始前，對本網上介入的想法，請按你的情況回答你有多同意。<br/></p>
<!-- (T0時才會出現，只有控制組會看到#14的四題問題) -->
				
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody><!-- (T0時才會出現，只有控制組會看到#14的四題問題) -->
<!--  <tr> -->
<!--   <td > &nbsp; </td> -->
<!--   <td > &nbsp; </td> -->
<!--   <td  >  非常 <br/>  不同意 </td> -->
<!--   <td  >  有點<br/>不同意  </td> -->
<!--   <td  >  <br/>  中立  </td> -->
<!--   <td  >   有點<br/>同意  </td> -->
<!--   <td >  非常 <br/>  同意  </td> -->
<!--  </tr> -->
 
  <tr>
 	<td>14_a.</td> <!-- (T0時才會出現，只有控制組會看到#14的四題問題) -->
 	<td>我認爲本網上的正向心理學介入沒有長期的效用。</td>
 	<td>答案：${obj.result['14_a']}</td>
 </tr>
 
  <tr>
 	<td>14_b.</td> <!-- (T0時才會出現，只有控制組會看到#14的四題問題) -->
 	<td>我覺得我每星期會起碼登入一次完成本正向心理學的練習。	`	</td>
 	<td>答案：${obj.result['14_b']}</td>
 </tr>
 
  <tr>
 	<td>14_c</td> <!-- (T0時才會出現，只有控制組會看到#14的四題問題) -->
 	<td>我覺得自己在介入完結後也會繼續自行進行本正向心理學的練習。</td>
 	<td>答案：${obj.result['14_c']}</td>
 </tr>
 
  <tr>
 	<td>14_d</td> <!-- (T0時才會出現，只有控制組會看到#14的四題問題) -->
 	<td>我認爲在日常生活上實行本正向心理學介入的建議是困難的。</td>
 	<td>答案：${obj.result['14_d']}</td>
 </tr>
 
</tbody></table>

<p>15.	以下的描述為一些完結後，對本網上介入的想法，請按你的情況回答你有多同意。</p>
<!-- (T1時才會出現，只有控制組會看到#15的四題問題) -->
<table   style="text-align:left; border-collapse:collapse;border:none">
 <tbody>
<!--  <tr> -->
<!--   <td > &nbsp; </td> -->
<!--   <td > &nbsp; </td> -->
<!--   <td  >  非常 <br/>  不同意 </td> -->
<!--   <td  >  有點<br/>不同意  </td> -->
<!--   <td  >  <br/>  中立  </td> -->
<!--   <td  >   有點<br/>同意  </td> -->
<!--   <td >  非常 <br/>  同意  </td> -->
<!--  </tr> -->
 
  <tr>
 	<td>15_a.</td>
 	<td>我認爲本網上的正向心理學介入沒有長期的效用。 </td>
 	<td>答案：${obj.result['15_a']}</td>
 </tr>
  <tr>
 	<td>15_b.</td>
 	<td>我覺得自己會繼續自行進行本正向心理學的練習。 </td>
 	<td>答案：${obj.result['15_b']}</td>
 </tr>
  <tr>
 	<td>15_c.</td>
 	<td>我認爲在日常生活上實行本正向心理學介入的建議是困難的。 </td>
 	<td>答案：${obj.result['15_c']}</td>
 </tr>
 
</tbody></table>

<p></p>

<a href='javascript:void(0)' onclick="submit('experiment')" id="add-content">设为實驗組</a>
<a href='javascript:void(0)' onclick="submit('control')" id="login-content">设为控制組</a>
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
				<p class="footer-links"><img style="height: 50px;" alt="" src="/phoenix_test/AdminLTE-2.4.2/media/logo_2.png"></p>
			</div>
		</div>
	</footer>

</body>

	<script src=" //cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src=" //cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<script>
	function submit(type) {
		
		$.post("/phoenix_test/manager/t0_choose/${obj.userId}/"+type, {
			
		}, function(result) {
			if (result.success) {
				alert("操作成功！");
// 				$("#add-content").hide();
// 				$("#login-content").hide();
				window.location.href = '/phoenix_test/manager/index';
			} else {
				var c = confirm("抱歉，验证码错误，请仔细检查邮箱!")
			}
		}, "json");
	}
</script>
</html>
