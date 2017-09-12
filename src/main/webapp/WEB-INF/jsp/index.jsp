<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>优购房</title>

    <!-- Styles -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700|Poppins:400,600" rel="stylesheet">

    <!-- favicon and touch icons -->
    <link rel="shortcut icon" href="assets/images/favicon.png">

    <!-- Bootstrap -->
    <link href="../plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="../plugins/slick/slick.css" rel="stylesheet">
    <link href="../plugins/slick-nav/slicknav.css" rel="stylesheet">
    <link href="../plugins/wow/animate.css" rel="stylesheet">
    <link href="../assets/css/bootstrap.css" rel="stylesheet">
    <link href="../assets/css/theme.css" rel="stylesheet">
    <link href="../assets/css/mycss.css" rel="stylesheet">
    <script src="../assets/js/myJS.js"></script>
</head>
<body class="">

<div id="page-loader">
    <div class="loaders">
        <img src="../assets/images/loader/3.gif" alt="First Loader">
        <img src="../assets/images/loader/4.gif" alt="First Loader">
    </div>
</div>
<header id="site-header">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-5 col-xs-5">
                <figure id="site-logo">
                    <a href="index.html"><img src="../assets/images/logo.png" alt="Logo"></a>
                </figure>
            </div>
            <!--个人信息-->
            <div class="col-md-4 col-sm-7 col-xs-7" style="float: right">
                <!--<div class="contact-in-header clearfix">-->
                <!--<div class="col-md-6 col-sm-6 col-xs-6 avatar_div">-->
                <!--<img class=" avatar" src="../assets/images/avatar.png">-->
                <!--</div>-->

                <!--<span class="col-md-6 col-sm-6 col-xs-6">-->
                <!--wzc-->
                <!--<br>-->
                <!--<strong>****</strong>-->
                <!--</span>-->
                <!--</div>-->
                <div class="not-login ">
                    <a href="login.html">登陆</a>
                    <span>/</span>
                    <a href="regedit-email.html">注册</a>
                </div>
            </div>
            <!--个人信息end-->
            <!--菜单-->
            <div class="col-md-5 col-sm-12 col-xs-12 ">
                <nav id="my_nar" class="navbar navbar-default equinav" role="navigation">
                    <div class="navbar-header hidden-lg hidden-md">
                        <button type="button" class="navbar-toggle" data-toggle="collapse"
                                data-target=".navbar-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <span class="navbar-brand">菜单</span>
                    </div>
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav">
                            <li><a href="index.html">首页</a></li>
                            <li><a href="#">新房</a></li>
                            <li><a href="contact.html" class="dropdown-toggle " style="  background-color: white;" data-toggle="dropdown">二手房 <b
                                    class="caret"></b></a>
                                <ul class="dropdown-menu depth_0">
                                    <li><a href="#">找小区</a></li>
                                    <li><a href="#">找别墅</a></li>
                                    <li><a href="#">找学校</a></li>
                                    <li><a href="#">购房知识</a></li>
                                </ul>
                            </li>
                            <li><a href="#">装修</a></li>
                            <li><a href="#">租房</a></li>
                        </ul>
                    </div>
                </nav>


                <!--
                <nav id="site-nav" class="nav navbar-default">
                    <ul class="nav navbar-nav">
                        <li class="dropdown "><a href="index.html">Home</a>
                            <ul class="dropdown-menu mymenu">
                                <li><a href="#">jmeter</a></li>
                                <li><a href="#">EJB</a></li>
                                <li><a href="#">Jasper</a></li>
                            </ul>
                        </li>
                        <li><a href="property-listing.html">Listing</a></li>
                        <li><a href="single-property.html">Property</a></li>
                        <li><a href="gallery.html">Gallery</a></li>
                        <li><a href="contact.html">contact</a></li>
                    </ul>
                </nav>
                --->
            </div>

        </div>
    </div>
</header>
<div class="main-slider-wrapper clearfix ">
    <div id="main-slider">
        <div class="slide"><img src="../assets/images/slider/1.jpg" alt="Slide"></div>
        <div class="slide"><img src="../assets/images/slider/2.jpg" alt="Slide"></div>
        <div class="slide"><img src="../assets/images/slider/3.jpg" alt="Slide"></div>
        <div class="slide"><img src="../assets/images/slider/4.jpg" alt="Slide"></div>
    </div>
    <div id="slider-contents">
        <div class="container text-center">
            <div class="jumbotron">
                <h1>寻找你梦想的家园</h1>
                <div class="contents clearfix">
                    <p>If you dream of designing a new home that takes full advantage of <br>
                        the unique geography and views of land that you love</p>
                </div>
                <%--<a class="btn btn-warning btn-lg btn-3d" data-hover="Our Services" href="#" role="button">Our--%>
                    <%--Services</a>--%>
                <%--<a class="btn btn-default btn-border btn-lg" href="#" role="button">Get a Quote</a>--%>
            </div>
        </div>
    </div>
</div>
<%--高级搜索--%>
<div id="advance-search" class="main-page clearfix ">
    <div class="container">
        <button class=" my_button" href="#adv-search-form" data-toggle="collapse">搜索</button>
        <form action="#" id="adv-search-form" class="clearfix collapse ">
            <fieldset>
                <select name="location" id="main-location">
                    <option value="">All Cities</option>
                    <option value="chicago"> Chicago</option>
                    <option value="los-angeles"> Los Angeles</option>
                    <option value="miami"> Miami</option>
                    <option value="new-york"> New York</option>
                </select>
                <select name="sub-location" id="property-sub-location">
                    <option value="">All Areas</option>
                    <option value="brickell"> Brickell</option>
                    <option value="brickyard"> Brickyard</option>
                    <option value="bronx"> Bronx</option>
                    <option value="brooklyn"> Brooklyn</option>
                    <option value="coconut-grove"> Coconut Grove</option>
                    <option value="downtown"> Downtown</option>
                    <option value="eagle-rock"> Eagle Rock</option>
                    <option value="englewood"> Englewood</option>
                    <option value="hermosa"> Hermosa</option>
                    <option value="hollywood"> Hollywood</option>
                    <option value="lincoln-park"> Lincoln Park</option>
                    <option value="manhattan"> Manhattan</option>
                    <option value="midtown"> Midtown</option>
                    <option value="queens"> Queens</option>
                    <option value="westwood"> Westwood</option>
                    <option value="wynwood"> Wynwood</option>
                </select>
                <select id="property-status" name="status">
                    <option value="">All Status</option>
                    <option value="for-rent"> For Rent</option>
                    <option value="for-sale"> For Sale</option>
                    <option value="foreclosures"> Foreclosures</option>
                    <option value="new-costruction"> New Costruction</option>
                    <option value="new-listing"> New Listing</option>
                    <option value="open-house"> Open House</option>
                    <option value="reduced-price"> Reduced Price</option>
                    <option value="resale"> Resale</option>
                </select>
                <select id="property-type" name="type">
                    <option value="">All Types</option>
                    <option value="apartment"> Apartment</option>
                    <option value="condo"> Condo</option>
                    <option value="farm"> Farm</option>
                    <option value="loft"> Loft</option>
                    <option value="lot"> Lot</option>
                    <option value="multi-family-home"> Multi Family Home</option>
                    <option value="single-family-home"> Single Family Home</option>
                    <option value="townhouse"> Townhouse</option>
                    <option value="villa"> Villa</option>
                </select>
                <select name="bedrooms" id="property-beds">
                    <option value="">Beds</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="any">Any</option>
                </select>
                <select name="bathrooms" id="property-baths">
                    <option value="">Bathrooms</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="any">Any</option>
                </select>
                <input type="text" name="min-area" id="property-min-area" placeholder="Min Area (sqft)">
                <input type="text" name="max-area" id="property-max-area" placeholder="Max Area (sqft)">
                <select name="min-price" id="property-min-price">
                    <option value="any" selected="selected">Min Price</option>
                    <option value="1000">$1000</option>
                    <option value="5000">$5000</option>
                    <option value="10000">$10000</option>
                    <option value="50000">$50000</option>
                    <option value="100000">$100000</option>
                    <option value="200000">$200000</option>
                    <option value="300000">$300000</option>
                    <option value="400000">$400000</option>
                    <option value="500000">$500000</option>
                    <option value="600000">$600000</option>
                    <option value="700000">$700000</option>
                    <option value="800000">$800000</option>
                    <option value="900000">$900000</option>
                    <option value="1000000">$1000000</option>
                    <option value="1500000">$1500000</option>
                    <option value="2000000">$2000000</option>
                    <option value="2500000">$2500000</option>
                    <option value="5000000">$5000000</option>
                </select>
                <select name="max-price" id="property-max-price">
                    <option value="any" selected="selected">Max Price</option>
                    <option value="5000">$5000</option>
                    <option value="10000">$10000</option>
                    <option value="50000">$50000</option>
                    <option value="100000">$100000</option>
                    <option value="200000">$200000</option>
                    <option value="300000">$300000</option>
                    <option value="400000">$400000</option>
                    <option value="500000">$500000</option>
                    <option value="600000">$600000</option>
                    <option value="700000">$700000</option>
                    <option value="800000">$800000</option>
                    <option value="900000">$900000</option>
                    <option value="1000000">$1000000</option>
                    <option value="1500000">$1500000</option>
                    <option value="2000000">$2000000</option>
                    <option value="2500000">$2500000</option>
                    <option value="5000000">$5000000</option>
                    <option value="10000000">$10000000</option>
                </select>
            </fieldset>
            <button type="submit" class="btn btn-default btn-lg text-center">
                立即搜索
                <%--<br class="hidden-sm hidden-xs">--%>
                <%--Property--%>
            </button>
        </form>
    </div>
</div>

<%--楼盘模块--%>
<section id="home-property-listing">
    <header class="section-header home-section-header text-center">
        <div class="container">
            <h2 class="wow slideInRight">楼盘</h2>
            <p class="wow slideInLeft">这里是楼盘的模块 <br>
                以钱换钱了 </p>
        </div>
    </header>
    <div class="container">
        <div class="row">
            <c:forEach items="${premisesList}" var="premises">
                <div class="col-lg-4 col-sm-6 layout-item-wrap">
                    <article class="property layout-item clearfix">
                        <figure class="feature-image">
                            <a class="clearfix zoom" href=""><img data-action="zoom" src="../assets/images/property/1.jpg" alt="图片丢了"></a>
                            <span class="btn btn-warning btn-sale">热卖中</span>
                        </figure>
                        <div class="property-contents clearfix">
                            <header class="property-header clearfix">
                                <div class="pull-left">
                                    <h6 class="entry-title"><a href="/frontPremises/show?premisesId=${premises.id}">${premises.name}</a></h6>
                                    <span class="property-location"><i class="fa fa-map-marker"></i>坐标施工中</span>
                                </div>
                                <button class="btn btn-default btn-price pull-right btn-3d" data-hover="￥${premises.averagePrice}"><strong>￥${premises.averagePrice}</strong>
                                </button>
                            </header>
                            <div class="property-meta clearfix">
                                <span><i class="fa fa-arrows-alt"></i> 3060 SqFt</span>
                                <span><i class="fa fa-bed"></i> 3 Beds</span>
                                <span><i class="fa fa-bathtub"></i> 3 Baths</span>
                                <span><i class="fa fa-cab"></i> Yes</span>
                            </div>
                            <div class="contents clearfix">
                                <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor
                                    invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et
                                    accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata
                                    sanctus est Lorem ipsum dolor sit amet. </p>
                            </div>
                            <div class="author-box clearfix">
                                <a href="#" class="author-img"><img src="../assets/images/agents/1.jpg" alt="Agent Image"></a>
                                <cite class="author-name">Personal Seller: <a href="#">Linda Garret</a></cite>
                                <span class="phone"><i class="fa fa-phone"></i> 00894 692-49-22</span>
                            </div>
                        </div>
                    </article>
                </div>
            </c:forEach>
        </div>
    </div>
</section>

<%--租房模块--%>
<section id="home-property-for-rent-listing">
    <header class="section-header home-section-header text-center">
        <div class="container">
            <h2 class="wow slideInLeft">租房</h2>
            <p class="wow slideInRight">这里是租房模块 <br>
                走过路过</p>
        </div>
    </header>
    <div class="container">
        <div class="row">
            <div id="property-for-rent-slider">
                <c:forEach items="${premisesList}" var="premises">
                    <div class="col-lg-4 col-md-6">
                        <article class="property clearfix">
                            <figure class="feature-image">
                                <a class="clearfix" href="single-property.html"> <img src="../assets/images/property/1.jpg"
                                                                                      alt="Property Image"></a>
                            </figure>
                            <div class="property-contents">
                                <header class="property-header clearfix">
                                    <div class="pull-left">
                                        <h6 class="entry-title"><a href="single-property.html">Guaranteed modern home</a>
                                        </h6>
                                        <span class="property-location"><i class="fa fa-map-marker"></i> 14 Tottenham Road, London</span>
                                    </div>
                                    <button class="btn btn-default btn-price pull-right btn-3d" data-hover="$389.000">
                                        <strong>$389.000</strong></button>
                                </header>
                                <div class="property-meta clearfix">
                                    <span><i class="fa fa-arrows-alt"></i> 3060 SqFt</span>
                                    <span><i class="fa fa-bed"></i> 3 Beds</span>
                                    <span><i class="fa fa-bathtub"></i> 3 Baths</span>
                                    <span><i class="fa fa-cab"></i> Yes</span>
                                </div>
                            </div>
                        </article>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</section>

<%--装修模块--%>
<section id="home-property-listing">
    <header class="section-header home-section-header text-center">
        <div class="container">
            <h2 class="wow slideInRight">装修</h2>
            <p class="wow slideInLeft">这里是装修案例展示 <br>
                装修技术哪家强？ </p>
        </div>
    </header>
    <div class="container">
        <div class="row">
            <c:forEach items="${premisesList}" var="premises">
                <div class="col-lg-4 col-sm-6 layout-item-wrap">
                    <article class="property layout-item clearfix">
                        <figure class="feature-image">
                            <a class="clearfix zoom" href=""><img data-action="zoom" src="../assets/images/property/1.jpg" alt="图片丢了"></a>
                            <span class="btn btn-warning btn-sale">热卖中</span>
                        </figure>
                        <div class="property-contents clearfix">
                            <header class="property-header clearfix">
                                <div class="pull-left">
                                    <h6 class="entry-title"><a href="/frontPremises/show?premisesId=${premises.id}">${premises.name}</a></h6>
                                    <span class="property-location"><i class="fa fa-map-marker"></i>坐标施工中</span>
                                </div>
                                <button class="btn btn-default btn-price pull-right btn-3d" data-hover="￥${premises.averagePrice}"><strong>￥${premises.averagePrice}</strong>
                                </button>
                            </header>
                            <div class="property-meta clearfix">
                                <span><i class="fa fa-arrows-alt"></i> 3060 SqFt</span>
                                <span><i class="fa fa-bed"></i> 3 Beds</span>
                                <span><i class="fa fa-bathtub"></i> 3 Baths</span>
                                <span><i class="fa fa-cab"></i> Yes</span>
                            </div>
                            <div class="contents clearfix">
                                <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor
                                    invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et
                                    accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata
                                    sanctus est Lorem ipsum dolor sit amet. </p>
                            </div>
                            <div class="author-box clearfix">
                                <a href="#" class="author-img"><img src="../assets/images/agents/1.jpg" alt="Agent Image"></a>
                                <cite class="author-name">Personal Seller: <a href="#">Linda Garret</a></cite>
                                <span class="phone"><i class="fa fa-phone"></i> 00894 692-49-22</span>
                            </div>
                        </div>
                    </article>
                </div>
            </c:forEach>
        </div>
    </div>
</section>

<section id="announcement-section" class="text-center">
    <div class="container ">
        <h2 class="title wow slideInLeft">Download Our Latest App</h2>
        <p class="wow slideInRight">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
            incididunt ut <br>
            labore et dolore magna aliquan ut enim ad minim veniam.</p>
        <a class="btn" href="#"><img src="../assets/images/iso-btn.png" alt="ISO Button"></a>
        <a class="btn" href="#"><img src="../assets/images/playstore-btn.png" alt="Play Store Button"></a>
    </div>
</section>
<section id="home-features-section" class="text-center">
    <header class="section-header home-section-header">
        <div class="container">
            <h2 class="wow slideInRight">WHY CHOOSE US</h2>
            <p class="wow slideInLeft">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                incididunt ut <br>
                labore et dolore magna aliquan ut enim ad minim veniam.</p>
        </div>
    </header>
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-xs-6">
                <div class="feature clearfix">
                    <i class="icon"><img src="../assets/images/features/1.png" alt="Feature Icon"></i>
                    <h6 class="entry-title">Paying guest</h6>
                    <p>Dolor sit amet consectetuer sed diam nonummy euismod tincidunt laoreet dolore magna</p>
                </div>
            </div>
            <div class="col-md-3 col-xs-6">
                <div class="feature clearfix">
                    <i class="icon"><img src="../assets/images/features/2.png" alt="Feature Icon"></i>
                    <h6 class="entry-title">Paying guest</h6>
                    <p>Dolor sit amet consectetuer sed diam nonummy euismod tincidunt laoreet dolore magna</p>
                </div>
            </div>
            <div class="col-md-3 col-xs-6">
                <div class="feature clearfix">
                    <i class="icon"><img src="../assets/images/features/3.png" alt="Feature Icon"></i>
                    <h6 class="entry-title">Paying guest</h6>
                    <p>Dolor sit amet consectetuer sed diam nonummy euismod tincidunt laoreet dolore magna</p>
                </div>
            </div>
            <div class="col-md-3 col-xs-6">
                <div class="feature clearfix">
                    <i class="icon"><img src="../assets/images/features/4.png" alt="Feature Icon"></i>
                    <h6 class="entry-title">Paying guest</h6>
                    <p>Dolor sit amet consectetuer sed diam nonummy euismod tincidunt laoreet dolore magna</p>
                </div>
            </div>
        </div>
    </div>
</section>
<footer id="footer">
    <div class="site-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <section class="widget about-widget clearfix">
                        <h4 class="title hide">About Us</h4>
                        <a class="footer-logo" href="#"><img src="../assets/images/footer-logo.png" alt="Footer Logo"></a>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                            laboris nisi</p>
                        <ul class="social-icons clearfix">
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                            <li><a href="#"><i class="fa fa-youtube-play"></i></a></li>
                        </ul>
                    </section>
                </div>
                <div class="col-md-4 col-sm-6">
                    <section class="widget twitter-widget clearfix">
                        <h4 class="title">Latest Tweets</h4>
                        <div id="twitter-feeds" class="clearfix"></div>
                    </section>
                </div>
                <div class="col-md-4 col-sm-6">
                    <section class="widget address-widget clearfix">
                        <h4 class="title">OUR OFFICE</h4>
                        <ul>
                            <li><i class="fa fa-map-marker"></i> 4 Tottenham Road, London, England.</li>
                            <li><i class="fa fa-phone"></i> (123) 45678910</li>
                            <li><i class="fa fa-envelope"></i> huycoi.art@gmail.com</li>
                            <li><i class="fa fa-fax"></i> +84 962 216 601</li>
                            <li><i class="fa fa-clock-o"></i> Mon - Sat: 9:00 - 18:00</li>
                        </ul>
                    </section>
                </div>
            </div>
        </div>
    </div>
    <div class="site-footer-bottom">
        <div class="container">
            <p class="copyright pull-left wow slideInRight">Copyright &copy; 2017.Company name All rights reserved.</p>
            <nav class="footer-nav pull-right wow slideInLeft">
                <ul>
                    <li><a href="#">Terms & Conditions</a></li>
                    <li><a href="#">Pricing</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </nav>
        </div>
    </div>
</footer>
<a href="#top" id="scroll-top"><i class="fa fa-angle-up"></i></a>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/jquery.migrate.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<script src="../plugins/slick-nav/jquery.slicknav.min.js"></script>
<script src="../plugins/slick/slick.min.js"></script>
<script src="../plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- <script src="plugins/tweetie/tweetie.js"></script> -->
<script src="../plugins/forms/jquery.form.min.js"></script>
<script src="../plugins/forms/jquery.validate.min.js"></script>
<script src="../plugins/modernizr/modernizr.custom.js"></script>
<script src="../plugins/wow/wow.min.js"></script>
<script src="../plugins/zoom/zoom.js"></script>
<script src="../plugins/mixitup/mixitup.min.js"></script>
<script>
    var result = window.matchMedia('(max-width: 992px)');

    if (result.matches) {
        console.log('页面宽度小于等于700px');
    } else {
        $(document).ready(function(){
            $(document).off('click.bs.dropdown.data-api');
        });
    }

</script>
<!--<script src="http://ditu.google.cn/maps/api/js?key=AIzaSyD2MtZynhsvwI2B40juK6SifR_OSyj4aBA&libraries=places"></script>-->
<!--<script src="plugins/whats-nearby/source/WhatsNearby.js"></script>-->
<script src="../assets/js/theme.js"></script>
</body>
</html>
