<%--
  Created by IntelliJ IDEA.
  User: August
  Date: 2017/9/12
  Time: 20:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>楼盘列表</title>

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
</head>
<body class="listing-template">
<div id="page-loader">
    <div class="loaders">
        <img src="../assets/images/loader/3.gif" alt="First Loader">
        <img src="../assets/images/loader/4.gif" alt="First Loader">
    </div>
</div>
<header id="site-header">

    <div class="container">
        <div class="row">
            <!--logo-->
            <div class="col-md-3">
                <figure id="site-logo">
                    <a href="index.html"><img src="../assets/images/logo.png" alt="Logo"></a>
                </figure>
            </div>
            <!--导航-->
            <div class="col-md-5 col-sm-8">
                <nav id="site-nav" class="nav navbar-default">
                    <ul class="nav navbar-nav">
                        <li><a href="index.html">首页</a></li>
                        <li class="my_active"><a href="property-listing.html">新房</a></li>
                        <li><a href="single-property.html">二手房</a></li>
                        <li><a href="gallery.html">装修</a></li>
                        <li><a href="contact.html">租房</a></li>
                    </ul>
                </nav>
            </div>
            <!--登陆信息-->
            <div class="col-md-4 col-sm-4">
                <div class="contact-in-header clearfix">
                    <!--头像-->
                    <div class="col-md-6 col-sm-6 avatar_div">
                        <img class=" avatar" src="../assets/images/avatar.png">
                    </div>
                    <!--登陆信息-->
                    <span class="col-md-6 col-sm-6">
                        wzc
                        <br>
                    <strong>****</strong>
                    </span>
                </div>
            </div>
        </div>
    </div>
</header>
<div id="site-banner" class="text-center clearfix">
    <!--轮播信息-->
    <div class="container">
        <h1 class="title wow slideInLeft">找你所想</h1>
        <ol class="breadcrumb wow slideInRight">
            <li><a href="index.html">主页</a></li>
            <li><a href="property-map-view.html">列表</a></li>
            <li class="active">买房</li>
        </ol>
    </div>
</div>
<div id="advance-search" class="main-page clearfix">
    <!--搜索-->
    <div class="container">
        <button class="my_button" href="#adv-search-form" data-toggle="collapse">搜索</button>
        <form action="#" id="adv-search-form" class="clearfix collapse ">
            <fieldset>
                <select name="location" id="main-location">
                    <option value="">所有城市</option>
                    <option value="kunming"> 昆明</option>
                    <option value="shanghai"> 上海</option>
                    <option value="beijing"> 北京</option>
                    <option value="chengdu"> 成都</option>
                </select>
                <select name="sub-location" id="property-sub-location">
                    <option value="">所有区域</option>
                    <option value="wuhuaqu"> 五华区</option>
                    <option value="xishnaqu"> 西山区</option>
                    <option value="panlongqu"> 盘龙区</option>
                    <option value="guanduqu"> 官渡区</option>
                    <option value="chenggong"> 呈贡</option>
                </select>
                <select id="decoration" name="status">
                    <option value="">装修</option>
                    <option value="maopi"> 毛坯</option>
                    <option value="jianzhuangxiu"> 简装修</option>
                    <option value="jingzhuangxiu">精装修</option>
                    <option value="haohuazhuangxiu">豪华装修</option>
                </select>
                <select id="building-type" name="type">
                    <option value="">建筑类别</option>
                    <option value="pingfang"> 平房</option>
                    <option value="xiaoqufang"> 小区房</option>
                    <option value="bieshu"> 别墅</option>
                </select>
                <select name="house-type" id="property-beds">
                    <option value="">户型</option>
                    <option value="1">一居</option>
                    <option value="2">二居</option>
                    <option value="3">三居</option>
                    <option value="4">四居</option>
                    <option value="5">五居</option>
                </select>
                <select name="bathrooms" id="property-baths">
                    <option value="">浴室</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                </select>
                <input type="text" name="min-area" id="property-min-area" placeholder="最小面积">
                <input type="text" name="max-area" id="property-max-area" placeholder="最大面积">
                <select name="min-price" id="property-min-price">
                    <option value="any" selected="selected">最低价</option>
                    <option value="1000">1000</option>
                    <option value="5000">5000</option>
                    <option value="10000">10000</option>
                    <option value="50000">50000</option>
                    <option value="100000">100000</option>
                    <option value="200000">200000</option>
                    <option value="300000">300000</option>
                    <option value="400000">400000</option>
                    <option value="500000">500000</option>
                </select>
                <select name="max-price" id="property-max-price">
                    <option value="any" selected="selected">最高价</option>
                    <option value="5000">5000</option>
                    <option value="10000">10000</option>
                    <option value="50000">50000</option>
                    <option value="100000">100000</option>
                    <option value="200000">200000</option>
                    <option value="300000">300000</option>
                    <option value="400000">400000</option>
                    <option value="500000">500000</option>
                </select>
            </fieldset>
            <button type="submit" class="btn btn-default btn-lg text-center">搜索 <br class="hidden-sm hidden-xs"> 房源
            </button>
        </form>
    </div>
</div>
<section id="property-listing">
    <!--头部-->
    <header class="section-header text-center">
        <div class="container">
            <h2 class="pull-left">共有100套符合要求</h2>
            <div class="pull-right">
                <div class="property-sorting pull-left">
                    <label for="property-sort-dropdown"> 排序 </label>
                    <select name="property-sort-dropdown" id="property-sort-dropdown">
                        <option value="">默认</option>
                        <option value="by_date">日期</option>
                        <option value="by_price">价格</option>
                    </select>
                </div>
                <p class="pull-left layout-view"> 展示方式 <i class="fa fa-th selected" data-layout="4"></i> <i
                        class="fa fa-th-large" data-layout="6"></i><i class="fa fa-list-ul" data-layout="12"></i></p>
            </div>
        </div>
    </header>
    <div class="container section-layout">
        <div class="row">
            <!--房源信息-->
            <div class="col-lg-4 col-sm-6 layout-item-wrap">
                <article class="property layout-item clearfix">
                    <figure class="feature-image">
                        <a class="clearfix zoom" href="single-property.html">
                            <img data-action="zoom" src="../assets/images/property/1.jpg" alt="Property Image">
                        </a>
                        <span class="btn btn-warning btn-sale">热销</span>
                    </figure>
                    <div class="property-contents clearfix">
                        <header class="property-header clearfix">
                            <div class="pull-left">
                                <h6 class="entry-title"><a href="single-property.html">天水家园</a></h6>
                                <span class="property-location"><i class="fa fa-map-marker"></i>盘龙区</span>
                            </div>
                            <button class="btn btn-default btn-price pull-right btn-3d" data-hover="￥1400">
                                <strong>￥1400</strong></button>
                        </header>
                        <div class="property-meta clearfix">
                            <span><i class="fa fa-arrows-alt"></i> 3060㎡</span>
                            <span><i class="fa fa-bed"></i> 3 室</span>
                            <span><i class="fa fa-bathtub"></i> 一卫</span>
                            <span><i class="fa fa-cab"></i> 有车位</span>
                        </div>
                        <div class="contents clearfix">
                            <p>环境优美，交通方便，你值得拥有 </p>
                        </div>
                        <div class="author-box clearfix">
                            <a href="#" class="author-img"><img src="../assets/images/avatar.png" alt="Agent Image"></a>
                            <cite class="author-name">联系人<a href="#">饶宇皓</a></cite>
                            <span class="phone"><i class="fa fa-phone"></i>123</span>
                        </div>
                    </div>
                </article>
            </div>
            <div class="col-lg-4 col-sm-6 layout-item-wrap">
                <article class="property layout-item clearfix">
                    <figure class="feature-image">
                        <a class="clearfix zoom" href="single-property.html"><img data-action="zoom"
                                                                                  src="../assets/images/property/2.jpg"
                                                                                  alt="Property Image"></a>
                        <span class="btn btn-warning btn-sale">热销</span>
                    </figure>
                    <div class="property-contents clearfix">
                        <header class="property-header clearfix">
                            <div class="pull-left">
                                <h6 class="entry-title"><a href="single-property.html">天水家园</a></h6>
                                <span class="property-location"><i class="fa fa-map-marker"></i>盘龙区</span>
                            </div>
                            <button class="btn btn-default btn-price pull-right btn-3d" data-hover="￥1400">
                                <strong>￥1400</strong></button>
                        </header>
                        <div class="property-meta clearfix">
                            <span><i class="fa fa-arrows-alt"></i> 3060㎡</span>
                            <span><i class="fa fa-bed"></i> 3 室</span>
                            <span><i class="fa fa-bathtub"></i> 一卫</span>
                            <span><i class="fa fa-cab"></i> 有车位</span>
                        </div>
                        <div class="contents clearfix">
                            <p>环境优美，交通方便，你值得拥有 </p>
                        </div>
                        <div class="author-box clearfix">
                            <a href="#" class="author-img"><img src="../assets/images/avatar.png" alt="Agent Image"></a>
                            <cite class="author-name">联系人<a href="#">饶宇皓</a></cite>
                            <span class="phone"><i class="fa fa-phone"></i>123</span>
                        </div>
                    </div>
                </article>
            </div>
            <div class="col-lg-4 col-sm-6 layout-item-wrap">
                <article class="property layout-item clearfix">
                    <figure class="feature-image">
                        <a class="clearfix zoom" href="single-property.html"><img data-action="zoom"
                                                                                  src="../assets/images/property/3.jpg"
                                                                                  alt="Property Image"></a>
                        <span class="btn btn-warning btn-sale">热销</span>
                    </figure>
                    <div class="property-contents clearfix">
                        <header class="property-header clearfix">
                            <div class="pull-left">
                                <h6 class="entry-title"><a href="single-property.html">天水家园</a></h6>
                                <span class="property-location"><i class="fa fa-map-marker"></i>盘龙区</span>
                            </div>
                            <button class="btn btn-default btn-price pull-right btn-3d" data-hover="￥1400">
                                <strong>￥1400</strong></button>
                        </header>
                        <div class="property-meta clearfix">
                            <span><i class="fa fa-arrows-alt"></i> 3060㎡</span>
                            <span><i class="fa fa-bed"></i> 3 室</span>
                            <span><i class="fa fa-bathtub"></i> 一卫</span>
                            <span><i class="fa fa-cab"></i> 有车位</span>
                        </div>
                        <div class="contents clearfix">
                            <p>环境优美，交通方便，你值得拥有 </p>
                        </div>
                        <div class="author-box clearfix">
                            <a href="#" class="author-img"><img src="../assets/images/avatar.png" alt="Agent Image"></a>
                            <cite class="author-name">联系人<a href="#">饶宇皓</a></cite>
                            <span class="phone"><i class="fa fa-phone"></i>123</span>
                        </div>
                    </div>
                </article>
            </div>
            <div class="col-lg-4 col-sm-6 layout-item-wrap">
                <article class="property layout-item clearfix">
                    <figure class="feature-image">
                        <a class="clearfix zoom" href="single-property.html"><img data-action="zoom"
                                                                                  src="../assets/images/property/4.jpg"
                                                                                  alt="Property Image"></a>
                        <span class="btn btn-warning btn-sale">热销</span>
                    </figure>
                    <div class="property-contents clearfix">
                        <header class="property-header clearfix">
                            <div class="pull-left">
                                <h6 class="entry-title"><a href="single-property.html">天水家园</a></h6>
                                <span class="property-location"><i class="fa fa-map-marker"></i>盘龙区</span>
                            </div>
                            <button class="btn btn-default btn-price pull-right btn-3d" data-hover="￥1400">
                                <strong>￥1400</strong></button>
                        </header>
                        <div class="property-meta clearfix">
                            <span><i class="fa fa-arrows-alt"></i> 3060㎡</span>
                            <span><i class="fa fa-bed"></i> 3 室</span>
                            <span><i class="fa fa-bathtub"></i> 一卫</span>
                            <span><i class="fa fa-cab"></i> 有车位</span>
                        </div>
                        <div class="contents clearfix">
                            <p>环境优美，交通方便，你值得拥有 </p>
                        </div>
                        <div class="author-box clearfix">
                            <a href="#" class="author-img"><img src="../assets/images/avatar.png" alt="Agent Image"></a>
                            <cite class="author-name">联系人<a href="#">饶宇皓</a></cite>
                            <span class="phone"><i class="fa fa-phone"></i>123</span>
                        </div>
                    </div>
                </article>
            </div>
            <div class="col-lg-4 col-sm-6 layout-item-wrap">
                <article class="property layout-item clearfix">
                    <figure class="feature-image">
                        <a class="clearfix zoom" href="single-property.html"><img data-action="zoom"
                                                                                  src="../assets/images/property/5.jpg"
                                                                                  alt="Property Image"></a>
                        <span class="btn btn-warning btn-sale">热销</span>
                    </figure>
                    <div class="property-contents clearfix">
                        <header class="property-header clearfix">
                            <div class="pull-left">
                                <h6 class="entry-title"><a href="single-property.html">天水家园</a></h6>
                                <span class="property-location"><i class="fa fa-map-marker"></i>盘龙区</span>
                            </div>
                            <button class="btn btn-default btn-price pull-right btn-3d" data-hover="￥1400">
                                <strong>￥1400</strong></button>
                        </header>
                        <div class="property-meta clearfix">
                            <span><i class="fa fa-arrows-alt"></i> 3060㎡</span>
                            <span><i class="fa fa-bed"></i> 3 室</span>
                            <span><i class="fa fa-bathtub"></i> 一卫</span>
                            <span><i class="fa fa-cab"></i> 有车位</span>
                        </div>
                        <div class="contents clearfix">
                            <p>环境优美，交通方便，你值得拥有 </p>
                        </div>
                        <div class="author-box clearfix">
                            <a href="#" class="author-img"><img src="../assets/images/avatar.png" alt="Agent Image"></a>
                            <cite class="author-name">联系人<a href="#">饶宇皓</a></cite>
                            <span class="phone"><i class="fa fa-phone"></i>123</span>
                        </div>
                    </div>
                </article>
            </div>
            <div class="col-lg-4 col-sm-6 layout-item-wrap">
                <article class="property layout-item clearfix">
                    <figure class="feature-image">
                        <a class="clearfix zoom" href="single-property.html"><img data-action="zoom"
                                                                                  src="../assets/images/property/6.jpg"
                                                                                  alt="Property Image"></a>
                        <span class="btn btn-warning btn-sale">热销</span>
                    </figure>
                    <div class="property-contents clearfix">
                        <header class="property-header clearfix">
                            <div class="pull-left">
                                <h6 class="entry-title"><a href="single-property.html">天水家园</a></h6>
                                <span class="property-location"><i class="fa fa-map-marker"></i>盘龙区</span>
                            </div>
                            <button class="btn btn-default btn-price pull-right btn-3d" data-hover="￥1400">
                                <strong>￥1400</strong></button>
                        </header>
                        <div class="property-meta clearfix">
                            <span><i class="fa fa-arrows-alt"></i> 3060㎡</span>
                            <span><i class="fa fa-bed"></i> 3 室</span>
                            <span><i class="fa fa-bathtub"></i> 一卫</span>
                            <span><i class="fa fa-cab"></i> 有车位</span>
                        </div>
                        <div class="contents clearfix">
                            <p>环境优美，交通方便，你值得拥有 </p>
                        </div>
                        <div class="author-box clearfix">
                            <a href="#" class="author-img"><img src="../assets/images/avatar.png" alt="Agent Image"></a>
                            <cite class="author-name">联系人<a href="#">饶宇皓</a></cite>
                            <span class="phone"><i class="fa fa-phone"></i>123</span>
                        </div>
                    </div>
                </article>
            </div>
            <div class="col-lg-4 col-sm-6 layout-item-wrap">
                <article class="property layout-item clearfix">
                    <figure class="feature-image">
                        <a class="clearfix zoom" href="single-property.html"><img data-action="zoom"
                                                                                  src="../assets/images/property/7.jpg"
                                                                                  alt="Property Image"></a>
                        <span class="btn btn-warning btn-sale">热销</span>
                    </figure>
                    <div class="property-contents clearfix">
                        <header class="property-header clearfix">
                            <div class="pull-left">
                                <h6 class="entry-title"><a href="single-property.html">天水家园</a></h6>
                                <span class="property-location"><i class="fa fa-map-marker"></i>盘龙区</span>
                            </div>
                            <button class="btn btn-default btn-price pull-right btn-3d" data-hover="￥1400">
                                <strong>￥1400</strong></button>
                        </header>
                        <div class="property-meta clearfix">
                            <span><i class="fa fa-arrows-alt"></i> 3060㎡</span>
                            <span><i class="fa fa-bed"></i> 3 室</span>
                            <span><i class="fa fa-bathtub"></i> 一卫</span>
                            <span><i class="fa fa-cab"></i> 有车位</span>
                        </div>
                        <div class="contents clearfix">
                            <p>环境优美，交通方便，你值得拥有 </p>
                        </div>
                        <div class="author-box clearfix">
                            <a href="#" class="author-img"><img src="../assets/images/avatar.png" alt="Agent Image"></a>
                            <cite class="author-name">联系人<a href="#">饶宇皓</a></cite>
                            <span class="phone"><i class="fa fa-phone"></i>123</span>
                        </div>
                    </div>
                </article>
            </div>
            <div class="col-lg-4 col-sm-6 layout-item-wrap">
                <article class="property layout-item clearfix">
                    <figure class="feature-image">
                        <a class="clearfix zoom" href="single-property.html"><img data-action="zoom"
                                                                                  src="../assets/images/property/8.jpg"
                                                                                  alt="Property Image"></a>
                        <span class="btn btn-warning btn-sale">热销</span>
                    </figure>
                    <div class="property-contents clearfix">
                        <header class="property-header clearfix">
                            <div class="pull-left">
                                <h6 class="entry-title"><a href="single-property.html">天水家园</a></h6>
                                <span class="property-location"><i class="fa fa-map-marker"></i>盘龙区</span>
                            </div>
                            <button class="btn btn-default btn-price pull-right btn-3d" data-hover="￥1400">
                                <strong>￥1400</strong></button>
                        </header>
                        <div class="property-meta clearfix">
                            <span><i class="fa fa-arrows-alt"></i> 3060㎡</span>
                            <span><i class="fa fa-bed"></i> 3 室</span>
                            <span><i class="fa fa-bathtub"></i> 一卫</span>
                            <span><i class="fa fa-cab"></i> 有车位</span>
                        </div>
                        <div class="contents clearfix">
                            <p>环境优美，交通方便，你值得拥有 </p>
                        </div>
                        <div class="author-box clearfix">
                            <a href="#" class="author-img"><img src="../assets/images/avatar.png" alt="Agent Image"></a>
                            <cite class="author-name">联系人<a href="#">饶宇皓</a></cite>
                            <span class="phone"><i class="fa fa-phone"></i>123</span>
                        </div>
                    </div>
                </article>
            </div>
            <div class="col-lg-4 col-sm-6 layout-item-wrap">
                <article class="property layout-item clearfix">
                    <figure class="feature-image">
                        <a class="clearfix zoom" href="single-property.html"><img data-action="zoom"
                                                                                  src="../assets/images/property/9.jpg"
                                                                                  alt="Property Image"></a>
                        <span class="btn btn-warning btn-sale">for sale</span>
                    </figure>
                    <div class="property-contents clearfix">
                        <header class="property-header clearfix">
                            <div class="pull-left">
                                <h6 class="entry-title"><a href="single-property.html">天水家园</a></h6>
                                <span class="property-location"><i class="fa fa-map-marker"></i>盘龙区</span>
                            </div>
                            <button class="btn btn-default btn-price pull-right btn-3d" data-hover="￥1400">
                                <strong>￥1400</strong></button>
                        </header>
                        <div class="property-meta clearfix">
                            <span><i class="fa fa-arrows-alt"></i> 3060㎡</span>
                            <span><i class="fa fa-bed"></i> 3 室</span>
                            <span><i class="fa fa-bathtub"></i> 一卫</span>
                            <span><i class="fa fa-cab"></i> 有车位</span>
                        </div>
                        <div class="contents clearfix">
                            <p>环境优美，交通方便，你值得拥有 </p>
                        </div>
                        <div class="author-box clearfix">
                            <a href="#" class="author-img"><img src="../assets/images/avatar.png" alt="Agent Image"></a>
                            <cite class="author-name">联系人<a href="#">饶宇皓</a></cite>
                            <span class="phone"><i class="fa fa-phone"></i>123</span>
                        </div>
                    </div>
                </article>
            </div>
        </div>
        <ul id="pagination" class="text-center clearfix">
            <li class="disabled"><a href="#">上一页</a></li>
            <li><a href="#">1</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">下一页</a></li>

        </ul>
    </div>
</section>
<footer id="footer">
    <div class="site-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <section class="widget about-widget clearfix">
                        <h4 class="title hide">关于我们</h4>
                        <a class="footer-logo" href="#"><img src="../assets/images/footer-logo.png"
                                                             alt="Footer Logo"></a>
                        <p>优购房买卖房中心</p>
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
                        <h4 class="title">更多</h4>

                    </section>
                </div>
                <div class="col-md-4 col-sm-6">
                    <section class="widget address-widget clearfix">
                        <h4 class="title">联系我们</h4>
                        <ul>
                            <li><i class="fa fa-map-marker"></i> 云南大学</li>
                            <li><i class="fa fa-phone"></i> 123</li>
                            <li><i class="fa fa-envelope"></i> 123@</li>
                            <li><i class="fa fa-fax"></i> +1111</li>
                            <li><i class="fa fa-clock-o"></i>24小时为您服务</li>
                        </ul>
                    </section>
                </div>
            </div>
        </div>
    </div>
    <div class="site-footer-bottom">
        <div class="container">
            <p class="copyright pull-left wow slideInRight">优购房 &copy; 2017</p>
            <nav class="footer-nav pull-right wow slideInLeft">
                <ul>
                    <li><a href="#">关于我们</a></li>
                    <li><a href="#">联系方式</a></li>
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
<script src="../plugins/tweetie/tweetie.js"></script>
<script src="../plugins/forms/jquery.form.min.js"></script>
<script src="../plugins/forms/jquery.validate.min.js"></script>
<script src="../plugins/modernizr/modernizr.custom.js"></script>
<script src="../plugins/wow/wow.min.js"></script>
<script src="../plugins/zoom/zoom.js"></script>
<script src="../plugins/mixitup/mixitup.min.js"></script>
<!--<script src="http://ditu.google.cn/maps/api/js?key=AIzaSyD2MtZynhsvwI2B40juK6SifR_OSyj4aBA&libraries=places"></script>-->
<script src="../plugins/whats-nearby/source/WhatsNearby.js"></script>
<script src="../assets/js/theme.js"></script>
</body>
</html>

