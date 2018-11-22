<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link rel="icon" href="/phoenix_test/favicon.png"/>
	<title>HeHe Journals</title>

        <!-- Bootstrap core CSS -->
        <link href="/phoenix_test/vacayhome/css/bootstrap.min.css" rel="stylesheet">
        <link href="/phoenix_test/vacayhome/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Custom styles for this template -->
        <link href="/phoenix_test/vacayhome/css/style.css" rel="stylesheet">
        <link href="/phoenix_test/vacayhome/fonts/antonio-exotic/stylesheet.css" rel="stylesheet">
        <link rel="stylesheet" href="/phoenix_test/vacayhome/css/lightbox.min.css">
        <link href="/phoenix_test/vacayhome/css/responsive.css" rel="stylesheet">
        <script src="/phoenix_test/vacayhome/js/jquery.min.js" type="text/javascript"></script>
        <script src="/phoenix_test/vacayhome/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="/phoenix_test/vacayhome/js/lightbox-plus-jquery.min.js" type="text/javascript"></script>
<!--         <script src="js/instafeed.min.js" type="text/javascript"></script> -->
<!--         <script src="js/custom.js" type="text/javascript"></script> -->

  <link href="//vjs.zencdn.net/7.3.0/video-js.css" rel="stylesheet">

  <!-- If you'd like to support IE8 (for Video.js versions prior to v7) -->
<!--   <script src="https://vjs.zencdn.net/ie8/ie8-version/videojs-ie8.min.js"></script> -->
    </head>
    <body>
        <div id="page">
            <!---header top---->
            <!-- <div class="top-header">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                                                        <a href="#"> </a>
                                                        <div class="info-block"><i class="fa fa-map"></i>701 Old York Drive Richmond USA.</div>
                        </div>
                        <div class="col-md-6">
                            <div class="social-grid">
                                <ul class="list-unstyled text-right">
                                    <li><a><i class="fa fa-facebook"></i></a></li>
                                    <li><a><i class="fa fa-twitter"></i></a></li>
                                    <li><a><i class="fa fa-linkedin"></i></a></li>
                                    <li><a><i class="fa fa-instagram"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div> -->
            <!--header--->
            <header class="header-container">
                <div class="container">
                    <div class="top-row">
                        <div class="row">
                            <div class="col-md-2 col-sm-6 col-xs-6">
                                <div id="logo"  style="margin-top: -10px;">
                                    <a href="index.html"><img src="/phoenix_test/AdminLTE-2.4.2/media/logo_1_2.png"  style="height: 60px;"  alt="logo"></a>
                                    <!-- <a href="index.html"><span>vacay</span>home</a> -->
                                </div>                       
                            </div>
                            <div class="col-sm-6 visible-sm">
                                <div class="text-right"><button type="button" class="book-now-btn">Book Now</button></div>
                            </div>
                            <div class="col-md-8 col-sm-12 col-xs-12 remove-padd">
                                <nav class="navbar navbar-default">
                                    <div class="navbar-header page-scroll">
                                        <button data-target=".navbar-ex1-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
                                            <span class="sr-only">Toggle navigation</span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                        </button>

                                    </div>
                                    <div class="collapse navigation navbar-collapse navbar-ex1-collapse remove-space">
                                        <ul class="list-unstyled nav1 cl-effect-10">
<!--                                             <li><a  data-hover="Home" class="active"><span>Home</span></a></li> -->
<!--                                             <li><a data-hover="About"  href="about.html"><span>About</span></a></li> -->
<!--                                             <li><a data-hover="Rooms"  href="rooms.html"><span>Rooms</span></a></li> -->
<!--                                             <li><a data-hover="Gallery"  href="gallery.html"><span>Gallery</span></a></li> -->
<!--                                             <li><a data-hover="Dinning" href="dinning.html"><span>Dinning</span></a></li> -->
<!--                                             <li><a data-hover="News" href="news.html"><span>News</span></a></li> -->
<!--                                             <li><a data-hover="Contact Us" href="contact.html"><span>contact Us</span></a></li> -->
                                        </ul>

                                    </div>
                                </nav>
                            </div>
                            <div class="col-md-2  col-sm-4 col-xs-12 hidden-sm">
                                <div class="text-right"><button type="button" class="book-now-btn">登入</button></div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>


            <!--end-->
            <div id="myCarousel1" class="carousel slide" data-ride="carousel"> 
                <!-- Indicators -->

<!--                 <ol class="carousel-indicators"> -->
<!--                     <li data-target="#myCarousel1" data-slide-to="0" class="active"></li> -->
<!--                     <li data-target="#myCarousel1" data-slide-to="1"></li> -->
<!--                     <li data-target="#myCarousel1" data-slide-to="2"></li> -->
<!--                 </ol> -->
                <div class="carousel-inner">
                    <div class="item active">
<!--                      <img src="images/banner.png" style="width:100%; height: 500px" alt="First slide"> -->
<!-- <video src="/phoenix_test/AdminLTE-2.4.2/media/Smooth_Green_Grass_Background.mp4" style="width: auto; height: 500px" controls="controls" autoplay="autoplay"></video> -->

<div style=" margin-left: auto;margin-right: auto;width:1080px;height:607px;"> <!-- controls="controls" autoplay="autoplay"  -->
<video id="my-video" class="video-js"  preload="auto"  height="607" width="1080"  controls="controls" autoplay="autoplay" 
  poster="/phoenix_test/AdminLTE-2.4.2/media/Smooth_Green_Gr00_00_00.jpg" data-setup="{}">
    <source src="/phoenix_test/AdminLTE-2.4.2/media/Smooth_Green_Grass_Background.mp4" type='video/mp4'>
<!--     <source src="MY_VIDEO.webm" type='video/webm'> -->
<!--     <p class="vjs-no-js"> -->
<!--       To view this video please enable JavaScript, and consider upgrading to a web browser that -->
<!--       <a href="https://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a> -->
<!--     </p> -->
  </video>
</div>

                        <div class="carousel-caption">
                            <h1>心理健康及性健康自學計劃</h1>
                            <br/>
                            <a type="button" href='agree.html'  class="btn btn-register">註冊</a> 
                            <a type="button"  href='login.html'  class="btn btn-login">登入</a>
                        </div>
                    </div>
                   <!--  <div class="item"> <img src="images/banner2.png" style="width:100%; height: 500px" alt="Second slide">
                        <div class="carousel-caption">
                            <h1>vacayhome<br> spa & Resort</h1>
                        </div>
                    </div>
                    <div class="item"> <img src="images/banner3.png" style="width:100%; height: 500px" alt="Third slide">
                        <div class="carousel-caption">
                            <h1>vacayhome<br> spa & Resort</h1>
                        </div>
                    </div> -->

                </div>
<!--                 <a class="left carousel-control" href="#myCarousel1" data-slide="prev"> <img src="images/icons/left-arrow.png" onmouseover="this.src = 'images/icons/left-arrow-hover.png'" onmouseout="this.src = 'images/icons/left-arrow.png'" alt="left"></a> -->
<!--                 <a class="right carousel-control" href="#myCarousel1" data-slide="next"><img src="images/icons/right-arrow.png" onmouseover="this.src = 'images/icons/right-arrow-hover.png'" onmouseout="this.src = 'images/icons/right-arrow.png'" alt="left"></a> -->

            </div>
            <div class="clearfix"></div>

            <!--service block--->
            <section class="service-block">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-sm-3 col-xs-6 width-50">
                            <div class="service-details text-center">
                                <div>
                                    <img alt="image" class="img-responsive" src="/phoenix_test/AdminLTE-2.4.2/media/phoenix_index_yx.png">
                                </div>
                                <h4><a>有效</a></h4>
                                <p  style="text-align: left;">
                               <br/><br/> 研究顯示正向心理學練習有效提升快樂感、生活滿足度和減少負面情緒
                                </p>
                            </div>
                        </div>
                        
                        <div class="col-md-3 col-sm-3 col-xs-6 width-50">
                            <div class="service-details text-center">
                                <div >
                                    <img alt="image" class="img-responsive" src="/phoenix_test/AdminLTE-2.4.2/media/phoenix_index_mf.png">
                                </div>
                                <h4><a>免費</a></h4>
                                 <p  style="text-align: left;">
                                <br/><br/>費用全免
                                </p>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 mt-25">
                            <div class="service-details text-center">
                                <div >
                                    <img alt="image" class="img-responsive" src="/phoenix_test/AdminLTE-2.4.2/media/phoenix_index_dy.png">
                                </div>
                                <h4><a>得益</a></h4>
                                 <p  style="text-align: left;">
                                <br/><br/>提升你的精神健康和性健康<br/>完成所有問卷及練習，可獲取$250超市禮券

                                </p>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-6 mt-25">
                            <div class="service-details text-center">
                                <div>
                                    <img alt="image" class="img-responsive" src="/phoenix_test/AdminLTE-2.4.2/media/phoenix_index_sm.jpg">
                                </div>
                                <h4><a>私隱度高</a></h4>
                                <p  style="text-align: left;">
                                <br/><br/>本網頁經過加密處理，資料只會用作不記名的研究上
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            
            
                        <!--offer block-->
            <section class="vacation-offer-block">
                <div class="vacation-offer-bgbanner">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-5 col-sm-6 col-xs-12">
                                <div class="vacation-offer-details">
<!--                                     <h1>Your vacation Awaits</h1> -->
                                    <h4>你將會隨機分配到網上正向心理介入組或提升性健康知識組，完成所有問卷及練習，皆可獲得$250超市禮券</h4>
<!--                                     <button type="button" class="btn btn-default">Choose a package</button> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!--End-->
            
            <!--blog trainer block-->
            <section class="blog-block-slider">
                <div class="blog-block-slider-fix-image">
                    <div id="myCarousel2" class="carousel slide" data-ride="carousel">
                        <div class="container">
                            <!-- Wrapper for slides -->
<!--                             <ol class="carousel-indicators"> -->
<!--                                 <li data-target="#myCarousel2" data-slide-to="0" class="active"></li> -->
<!--                                 <li data-target="#myCarousel2" data-slide-to="1"></li> -->
<!--                                 <li data-target="#myCarousel2" data-slide-to="2"></li> -->
<!--                             </ol> -->
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
<!--                                     <div class="blog-box"> -->
<!--                                         <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only</p> -->
<!--                                     </div> -->
                                    <div class="blog-view-box">
                                        <div class="media">
                                            <div class="media-body">
                                                <h3 class="media-heading blog-title">網上正向心理介入組</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </section>
            
            
            <section class="gallery-block gallery-front">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
                            <div class="gallery-image">
                                <div class="service-details text-center">
	                                <div>
	                                    <img alt="image" class="img-responsive" src="/phoenix_test/AdminLTE-2.4.2/media/image008.png">
	                                </div>
<!--                                 <h4><a>私隱度高</a></h4> -->
                                <p  style="text-align: left;">
                                <br/><br/>填寫問卷
                                </p>
                            	</div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
                            <div class="gallery-image">
                                <div class="service-details text-center">
	                                <div>
	                                    <img alt="image" class="img-responsive" src="/phoenix_test/AdminLTE-2.4.2/media/image009.jpg">
	                                </div>
<!--                                 <h4><a>私隱度高</a></h4> -->
                                <p  style="text-align: left;">
                                <br/><br/>每日完成一個正向心理學練習（登入後，系統會自動轉往頁面）<br/>爲期四星期

                                </p>
                            	</div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
                            <div class="gallery-image">
                               <div class="service-details text-center">
	                                <div>
	                                    <img alt="image" class="img-responsive" src="/phoenix_test/AdminLTE-2.4.2/media/image010.png">
	                                </div>
<!--                                 <h4><a>私隱度高</a></h4> -->
                                <p  style="text-align: left;">
                                <br/><br/>第二個星期起，每星期訂立屬於你的行動計劃
                                </p>
                            	</div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
                            <div class="gallery-image">
                               <div class="service-details text-center">
	                                <div>
	                                    <img alt="image" class="img-responsive" src="/phoenix_test/AdminLTE-2.4.2/media/image011.png">
	                                </div>
<!--                                 <h4><a>私隱度高</a></h4> -->
                                <p  style="text-align: left;">
                                <br/><br/>完成四星期的練習後，填寫問卷
                                </p>
                            	</div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
                            <div class="gallery-image">
                                <div class="service-details text-center">
	                                <div>
	                                    <img alt="image" class="img-responsive" src="/phoenix_test/AdminLTE-2.4.2/media/image012.png">
	                                </div>
<!--                                 <h4><a>私隱度高</a></h4> -->
                                <p  style="text-align: left;">
                                <br/><br/>三個月後再有問卷
                                </p>
                            	</div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            
            
            <!--blog trainer block-->
            <section class="blog-block-slider">
                <div class="blog-block-slider-fix-image">
                    <div id="myCarousel2" class="carousel slide" data-ride="carousel">
                        <div class="container">
                            <!-- Wrapper for slides -->
<!--                             <ol class="carousel-indicators"> -->
<!--                                 <li data-target="#myCarousel2" data-slide-to="0" class="active"></li> -->
<!--                                 <li data-target="#myCarousel2" data-slide-to="1"></li> -->
<!--                                 <li data-target="#myCarousel2" data-slide-to="2"></li> -->
<!--                             </ol> -->
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
<!--                                     <div class="blog-box"> -->
<!--                                         <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only</p> -->
<!--                                     </div> -->
                                    <div class="blog-view-box" style="    background: #f9919d none repeat scroll 0 0;">
                                        <div class="media">
                                            <div class="media-body">
                                                <h3 class="media-heading blog-title">提升性健康知識組</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </section>
            
            
            <section class="gallery-block gallery-front">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
                            <div class="gallery-image">
                                <div class="service-details text-center">
	                                <div>
	                                    <img alt="image" class="img-responsive" src="/phoenix_test/AdminLTE-2.4.2/media/image008.png">
	                                </div>
<!--                                 <h4><a>私隱度高</a></h4> -->
                                <p  style="text-align: left;">
                                <br/><br/>填寫問卷
                                </p>
                            	</div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
                            <div class="gallery-image">
                                <div class="service-details text-center">
	                                <div>
	                                    <img alt="image" class="img-responsive" src="/phoenix_test/AdminLTE-2.4.2/media/image009.jpg">
	                                </div>
<!--                                 <h4><a>私隱度高</a></h4> -->
                                <p  style="text-align: left;">
                                <br/><br/>閲讀四篇性健康資訊<br/>爲期四星期

                                </p>
                            	</div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
                            <div class="gallery-image">
                               <div class="service-details text-center">
	                                <div>
	                                    <img alt="image" class="img-responsive" src="/phoenix_test/AdminLTE-2.4.2/media/image010.png">
	                                </div>
<!--                                 <h4><a>私隱度高</a></h4> -->
                                <p  style="text-align: left;">
                                <br/><br/>四星期後，填寫問卷
                                </p>
                            	</div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
                            <div class="gallery-image">
                               <div class="service-details text-center">
	                                <div>
	                                    <img alt="image" class="img-responsive" src="/phoenix_test/AdminLTE-2.4.2/media/image011.png">
	                                </div>
<!--                                 <h4><a>私隱度高</a></h4> -->
                                <p  style="text-align: left;">
                                <br/><br/>三個月後再有問卷
                                </p>
                            	</div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            
            

            <!---footer--->
            <!-- <footer>
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-sm-6 col-xs-12 width-set-50">
                            <div class="footer-details">
                                <h4>Get in touch</h4>
                                <ul class="list-unstyled footer-contact-list">
                                    <li>
                                        <i class="fa fa-map-marker fa-lg"></i>
                                        <p>701 Old York Drive Richmond USA.</p>
                                    </li>
                                    <li>
                                        <i class="fa fa-phone fa-lg"></i>
                                        <p><a href="tel:+1-202-555-0100"> +1-202-555-0100</a></p>
                                    </li>
                                    <li>
                                        <i class="fa fa-envelope-o fa-lg"></i>
                                        <p><a href="mailto:demo@info.com"> demo@info.com</a></p>
                                    </li>
                                </ul>
                                <div class="footer-social-icon">
                                 
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12 width-50 width-set-50">
                            <div class="footer-details">
                                <h4>explore</h4>
                                <ul class="list-unstyled footer-links">
                                    <li class="active"><a>Home</a></li>
                                    <li><a href="about.html">About</a></li>
                                    <li><a href="rooms.html">Rooms</a></li>
                                    <li><a href="gallery.html">Gallery</a></li>
                                    <li><a href="#">Dinning</a></li>
                                    <li> <a href="news.html">News</a></li>
                                    <li> <a href="contact.html">Contact</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="footer-details">
                                <h4>Now On Instagram</h4>
                                <div class="row">
                                    <div class="instagram-images">
                                        <div id="instafeed"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="copyright">
                        &copy; 2017 All right reserved. Designed by <a href="#" target="_blank">ThemeVault.</a> -  More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
                    </div>

                </div>
            </footer> -->
            
            <footer class="footer  ">
		<div class="footer-limiter">
			<!-- <div class="row" style="color: white;">
  <div class="col-6 col-md-4">.col-6 .col-md-4</div>
  <div class="col-6 col-md-4">.col-6 .col-md-4</div>
  <div class="col-6 col-md-4">.col-6 .col-md-4</div>
</div> -->
			<div class="footer-right">
				<a href="contact_us.html"><i class="fa "></i>聯絡我們</a> <a href="disclaimer.html"><i class="fa "></i>免責聲明</a> <a href="privacy_policy.html"><i class="fa "></i>隱私政策</a>
			</div>
			<div class="footer-left">
				<p class="footer-links"><img style="height: 50px;" alt="" src="/phoenix_test/AdminLTE-2.4.2/media/logo_2.png"></p>
			</div>
		</div>
	</footer>

            <!--back to top--->
            <a style="display: none;" href="javascript:void(0);" class="scrollTop back-to-top" id="back-to-top">
                <span><i aria-hidden="true" class="fa fa-angle-up fa-lg"></i></span>
                <span>Top</span>
            </a>

        </div>
    </body>
     <script src="//vjs.zencdn.net/7.3.0/video.js"></script>
</html>
