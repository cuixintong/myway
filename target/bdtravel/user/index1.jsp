<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% request.setAttribute("ctp",request.getContextPath());%>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

    <!-- Basic Page Needs
  ================================================== -->
    <meta charset="utf-8">
    <title>Home</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Mobile Specific Metas
	================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- CSS
	================================================== -->
    <link rel="stylesheet" href="${ctp}/css/zerogrid.css">
    <link rel="stylesheet" href="${ctp}/css/style.css">

    <!-- Custom Fonts -->
    <link href="${ctp}/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">


    <link rel="stylesheet" href="${ctp}/css/menu.css">
    <script src="${ctp}/js/jquery1111.min.js" type="text/javascript"></script>
    <script src="${ctp}/js/script.js"></script>

    <!-- Owl Carousel Assets -->
    <link href="${ctp}/owl-carousel/owl.carousel.css" rel="stylesheet">

    <!--[if lt IE 8]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/Items/ie/home?ocid=ie6_countdown_bannercode">
            <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
    </div>
    <![endif]-->
    <!--[if lt IE 9]>
    <script src="js/html5.js"></script>
    <script src="js/css3-mediaqueries.js"></script>
    <![endif]-->

</head>

<body class="home-page">
<div class="wrap-body">
    <header class="">
        <div class="logo">
            <a href="#">MyWay</a>
            <span>有的事情现在不做，就一辈子也不会做了!</span>
        </div>
        <div id="cssmenu" class="align-center">
            <ul>
                <li class="active"><a href="${ctp}/user"><span>首页</span></a></li>
                <li><a href="${ctp}/getScenicPageForUser"><span>景点资讯</span></a></li>
                <li <%--class="has-sub"--%>><a href="${pageContext.request.contextPath }/getFoodPageForUser"><span>美食佳肴</span></a>
                    <%--<ul>--%>
                        <%--<li class="has-sub"><a href="#"><span>Item 1</span></a>--%>
                            <%--<ul>--%>
                                <%--<li><a href="#"><span>Sub Item</span></a></li>--%>
                                <%--<li class="last"><a href="#"><span>Sub Item</span></a></li>--%>
                            <%--</ul>--%>
                        <%--</li>--%>
                        <%--<li class="has-sub"><a href="#"><span>Item 2</span></a>--%>
                            <%--<ul>--%>
                                <%--<li><a href="#"><span>Sub Item</span></a></li>--%>
                                <%--<li class="last"><a href="#"><span>Sub Item</span></a></li>--%>
                            <%--</ul>--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                </li>
                <li><a href="${ctp}/userInfoPage"><span>个人信息</span></a></li>
                <li class="last"><a href="${ctp}/listOrder"><span>我的订单</span></a></li>
                <c:if test="${empty user }">
                    <li style="margin-left:180px;color: red;"><a href="${ctp}/loginPage">登录</a></li>
                    <li ><a href="${ctp}/registerPage">注册</a></li>
                </c:if>
                <c:if test="${!empty user }">
                    <li style="color:red;margin-left:120px;margin-top:15px">欢迎您，${user.username }</li>
                    <li><a href="${ctp}/logout">退出</a></li>
                </c:if>
            </ul>
            <%--<div class="col-md-4" style="padding-left:20px;padding-top:20px;font-size: 17px;float: right" >--%>
                <%--<ol class="list-inline">--%>
                    <%--<c:if test="${empty user }">--%>
                        <%--<li style="margin-left:180px;color: red;"><a href="${pageContext.request.contextPath }/loginPage">登录</a></li>--%>
                        <%--<li ><a href="${pageContext.request.contextPath }/registerPage">注册</a></li>--%>
                    <%--</c:if>--%>
                    <%--<c:if test="${!empty user }">--%>
                        <%--<li style="color:red;margin-left:120px;">欢迎您，${user.username }</li>--%>
                        <%--<li><a href="${pageContext.request.contextPath }/logout">退出</a></li>--%>
                    <%--</c:if>--%>
                <%--</ol>--%>
            <%--</div>--%>
        </div>
            <%--<jsp:include page="header.jsp"></jsp:include>--%>
        <div id="owl-slide" class="owl-carousel">
            <div class="item">
                <img src="${ctp}/images/slide1.png" />
            </div>
            <div class="item">
                <img src="${ctp}/images/slide2.png" />
            </div>
            <div class="item">
                <img src="${ctp}/images/slide3.png" />

            </div>
        </div>
    </header>
    <!--////////////////////////////////////Container-->
    <section id="container">
        <div class="wrap-container">
            <!-----------------content-box-1-------------------->
            <section class="content-box box-1">
                <div class="zerogrid">
                    <div class="wrap-box"><!--Start Box-->
                        <div class="box-header">
                            <h2>ABOUT US</h2>
                        </div>
                        <div class="box-content">
                            <p>Lorem ipsum dosectetur adipisicing elit, sed do.Lorem ipsum dolor sit amet, consectetur Nulla <br>fringilla purus at leo dignissim congue. Mauris elementum accumsan leo vel tempor. Sit amet cursus nisl aliquam. <br>Aliquam et elit eu nunc rhoncus viverra quis at felis. Sed do</p>
                        </div>
                    </div>
                </div>
            </section>
            <!-----------------content-box-2-------------------->
            <section class="content-box box-style-1 box-2">
                <div class="zerogrid">
                    <div class="wrap-box"><!--Start Box-->
                        <div class="row">
                            <div class="col-1-3">
                                <div class="wrap-col">
                                    <article>
                                        <div class="post-thumbnail-wrap">
                                            <a href="single.html" class="portfolio-box">
                                                <img src="${ctp}/images/11.jpg" alt="">
                                                <div class="portfolio-box-second">
                                                    <img src="${ctp}/images/1.jpg" alt="">
                                                </div>
                                            </a>
                                        </div>
                                        <div class="entry-header ">
                                            <h3 class="entry-title">Lovely Smiles</h3>
                                            <div class="l-tags"><a href="#">Design</a> / <a href="#">Illustrations</a></div>
                                        </div>
                                    </article>
                                </div>
                            </div>
                            <div class="col-1-3">
                                <div class="wrap-col">
                                    <article>
                                        <div class="post-thumbnail-wrap">
                                            <a href="single.html" class="portfolio-box">
                                                <img src="${ctp}/images/6.jpg" alt="">
                                                <div class="portfolio-box-second">
                                                    <img src="${ctp}/images/8.jpg" alt="">
                                                </div>
                                            </a>
                                        </div>
                                        <div class="entry-header ">
                                            <h3 class="entry-title">Lovely Smiles</h3>
                                            <div class="l-tags"><a href="#">Design</a> / <a href="#">Illustrations</a></div>
                                        </div>
                                    </article>
                                </div>
                            </div>
                            <div class="col-1-3">
                                <div class="wrap-col">
                                    <article>
                                        <div class="post-thumbnail-wrap">
                                            <a href="single.html" class="portfolio-box">
                                                <img src="${ctp}/images/14.jpg" alt="">
                                                <div class="portfolio-box-second">
                                                    <img src="${ctp}/images/3.jpg" alt="">
                                                </div>
                                            </a>
                                        </div>
                                        <div class="entry-header ">
                                            <h3 class="entry-title">Lovely Smiles</h3>
                                            <div class="l-tags"><a href="#">Design</a> / <a href="#">Illustrations</a></div>
                                        </div>
                                    </article>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-1-3">
                                <div class="wrap-col">
                                    <article>
                                        <div class="post-thumbnail-wrap">
                                            <a href="single.html" class="portfolio-box">
                                                <img src="${ctp}/images/5.jpg" alt="">
                                                <div class="portfolio-box-second">
                                                    <img src="${ctp}/images/4.jpg" alt="">
                                                </div>
                                            </a>
                                        </div>
                                        <div class="entry-header ">
                                            <h3 class="entry-title">Lovely Smiles</h3>
                                            <div class="l-tags"><a href="#">Design</a> / <a href="#">Illustrations</a></div>
                                        </div>
                                    </article>
                                </div>
                            </div>
                            <div class="col-1-3">
                                <div class="wrap-col">
                                    <article>
                                        <div class="post-thumbnail-wrap">
                                            <a href="single.html" class="portfolio-box">
                                                <img src="${ctp}/images/2.jpg" alt="">
                                                <div class="portfolio-box-second">
                                                    <img src="${ctp}/images/12.jpg" alt="">
                                                </div>
                                            </a>
                                        </div>
                                        <div class="entry-header ">
                                            <h3 class="entry-title">Lovely Smiles</h3>
                                            <div class="l-tags"><a href="#">Design</a> / <a href="#">Illustrations</a></div>
                                        </div>
                                    </article>
                                </div>
                            </div>
                            <div class="col-1-3">
                                <div class="wrap-col">
                                    <article>
                                        <div class="post-thumbnail-wrap">
                                            <a href="single.html" class="portfolio-box">
                                                <img src="${ctp}/images/9.jpg" alt="">
                                                <div class="portfolio-box-second">
                                                    <img src="${ctp}/images/7.jpg" alt="">
                                                </div>
                                            </a>
                                        </div>
                                        <div class="entry-header ">
                                            <h3 class="entry-title">Lovely Smiles</h3>
                                            <div class="l-tags"><a href="#">Design</a> / <a href="#">Illustrations</a></div>
                                        </div>
                                    </article>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-----------------content-box-3-------------------->
            <section class="content-box box-3">
                <div class="zerogrid">
                    <div class="wrap-box"><!--Start Box-->
                        <div class="box-header">
                            <h2>OUR PHILOSOPHY</h2>
                        </div>
                        <div class="box-content">
                            <div class="row">
                                <div class="col-1-2">
                                    <div class="wrap-col">
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril.</p>
                                    </div>
                                </div>
                                <div class="col-1-2">
                                    <div class="wrap-col">
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <blockquote><p>Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet vultatup duista.</p></blockquote>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-----------------content-box-4-------------------->
            <section class="content-box box-style-1 box-4">
                <div class="zerogrid" style="width: 100%">
                    <div class="wrap-box"><!--Start Box-->
                        <div class="row">
                            <article>
                                <div class="col-1-2">
                                    <img src="${ctp}/images/slide1.png" alt="">
                                </div>
                                <div class="col-1-2">
                                    <div class="entry-content t-center">
                                        <h3>The title on the article</h3>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam viverra convallis auctor. Sed accumsan libero quis mi commodo et suscipit enim lacinia. Morbi rutrum vulputate est sed faucibus.consectetur adipiscing elit. Aliquam viverra convallis auctor. Sed accumsan libero quis mi commodo et suscipit enim lacinia.</p>
                                        <a class="button" href="single.html">Read More</a>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="row">
                            <article>
                                <div class="col-1-2 f-right">
                                    <img src="${ctp}/images/slide2.png" alt="">
                                </div>
                                <div class="col-1-2">
                                    <div class="entry-content t-center">
                                        <h3>The title on the article</h3>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam viverra convallis auctor. Sed accumsan libero quis mi commodo et suscipit enim lacinia. Morbi rutrum vulputate est sed faucibus.consectetur adipiscing elit. Aliquam viverra convallis auctor. Sed accumsan libero quis mi commodo et suscipit enim lacinia.</p>
                                        <a class="button" href="single.html">Read More</a>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="row">
                            <article>
                                <div class="col-1-2">
                                    <img src="${ctp}/images/slide3.png" alt="">
                                </div>
                                <div class="col-1-2">
                                    <div class="entry-content t-center">
                                        <h3>The title on the article</h3>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam viverra convallis auctor. Sed accumsan libero quis mi commodo et suscipit enim lacinia. Morbi rutrum vulputate est sed faucibus.consectetur adipiscing elit. Aliquam viverra convallis auctor. Sed accumsan libero quis mi commodo et suscipit enim lacinia.</p>
                                        <a class="button" href="single.html">Read More</a>
                                    </div>
                                </div>
                            </article>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </section>
    <!--////////////////////////////////////Footer-->
    <footer>
        <div class="zerogrid wrap-footer">
            <div class="row">
                <div class="col-1-4 col-footer-1">
                    <div class="wrap-col">
                        <h3 class="widget-title">About Us</h3>
                        <p>Ut volutpat consectetur aliquam. Curabitur auctor in nis ulum ornare. Metus elit vehicula dui. Curabitur auctor in nis ulum ornare. Sed consequat, augue condimentum fermentum</p>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque la udantium</p>
                    </div>
                </div>
                <div class="col-1-4 col-footer-2">
                    <div class="wrap-col">
                        <h3 class="widget-title">Recent Post</h3>
                        <ul>
                            <li><a href="#">MOST VISITED COUNTRIES</a></li>
                            <li><a href="#">5 PLACES THAT MAKE A GREAT HOLIDAY</a></li>
                            <li><a href="#">PEBBLE TIME STEEL IS ON TRACK TO SHIP IN JULY</a></li>
                            <li><a href="#">STARTUP COMPANY???S CO-FOUNDER TALKS ON HIS NEW PRODUCT</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-1-4 col-footer-3">
                    <div class="wrap-col">
                        <h3 class="widget-title">Tag Cloud</h3>
                        <a href="#">animals</a>
                        <a href="#">cooking</a>
                        <a href="#">countries</a>
                        <a href="#">city</a>
                        <a href="#">children</a>
                        <a href="#">home</a>
                        <a href="#">likes</a>
                        <a href="#">photo</a>
                        <a href="#">link</a>
                        <a href="#">law</a>
                        <a href="#">shopping</a>
                        <a href="#">skate</a>
                        <a href="#">scholl</a>
                        <a href="#">video</a>
                        <a href="#">travel</a>
                        <a href="#">images</a>
                        <a href="#">love</a>
                        <a href="#">lists</a>
                        <a href="#">makeup</a>
                        <a href="#">media</a>
                        <a href="#">password</a>
                        <a href="#">pagination</a>
                        <a href="#">wildlife</a>
                    </div>
                </div>
                <div class="col-1-4 col-footer-4">
                    <div class="wrap-col">
                        <h3 class="widget-title">Gallery</h3>
                        <div class="row">
                            <div class="col-1-3">
                                <div class="wrap-col">
                                    <a href="#"><img src="${ctp}/images/11.jpg"></a>
                                    <a href="#"><img src="${ctp}/images/1.jpg"></a>
                                    <a href="#"><img src="${ctp}/images/13.jpg"></a>
                                </div>
                            </div>
                            <div class="col-1-3">
                                <div class="wrap-col">
                                    <a href="#"><img src="${ctp}/images/10.jpg"></a>
                                    <a href="#"><img src="${ctp}/images/9.jpg"></a>
                                    <a href="#"><img src="${ctp}/images/4.jpg"></a>
                                </div>
                            </div>
                            <div class="col-1-3">
                                <div class="wrap-col">
                                    <a href="#"><img src="${ctp}/images/2.jpg"></a>
                                    <a href="#"><img src="${ctp}/images/6.jpg"></a>
                                    <a href="#"><img src="${ctp}/images/5.jpg"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="zerogrid bottom-footer">
            <div class="row">
                <div class="bottom-social">
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-instagram"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-google-plus"></i></a>
                    <a href="#"><i class="fa fa-pinterest"></i></a>
                    <a href="#"><i class="fa fa-vimeo"></i></a>
                    <a href="#"><i class="fa fa-linkedin"></i></a>
                    <a href="#"><i class="fa fa-youtube"></i></a>
                </div>
            </div>
            <div class="copyright">
                Copyright &copy; 2019.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
            </div>
        </div>
    </footer>
    <!-- carousel -->
    <script src="${ctp}/owl-carousel/owl.carousel.js"></script>
    <script>
        $(document).ready(function() {
            $("#owl-slide").owlCarousel({
                autoPlay: 3000,
                items : 1,
                itemsDesktop : [1199,1],
                itemsDesktopSmall : [979,1],
                itemsTablet : [768, 1],
                itemsMobile : [479, 1],
                navigation: true,
                navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
                pagination: false
            });
        });
    </script>
</div>
</body>
</html>
