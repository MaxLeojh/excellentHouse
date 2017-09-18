<%--
  Created by IntelliJ IDEA.
  User: August
  Date: 2017/9/17
  Time: 12:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <!-- Facebook and Twitter integration -->
    <meta property="og:title" content=""/>
    <meta property="og:image" content=""/>
    <meta property="og:url" content=""/>
    <meta property="og:site_name" content=""/>
    <meta property="og:description" content=""/>
    <meta name="twitter:title" content="" />
    <meta name="twitter:image" content="" />
    <meta name="twitter:url" content="" />
    <meta name="twitter:card" content="" />

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="favicon.ico">

    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

    <!-- Animate.css -->
    <link rel="stylesheet" href="../assets/css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="../assets/css/icomoon.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="../assets/css/bootstrap.css">

    <!-- Theme style  -->
    <link rel="stylesheet" href="../assets/css/style.css">

    <link rel="stylesheet" href="../assets/css/mycss.css">
    <!-- Modernizr JS -->
    <script src="../assets/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="../assets/js/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<div id="fh5co-page">
    <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
    <aside id="fh5co-aside" role="complementary" class="border js-fullheight">

        <h1 id="fh5co-logo"><a href="myHome.html">我的</a></h1>
        <nav id="fh5co-main-menu" role="navigation">
            <ul>
                <li class="fh5co-active"><a href="myHome.html">我的资料</a></li>
                <li id="myCollapsibleExample"><a href="#demo"  data-toggle="collapse">收藏</a>
                    <ul id="demo" class="collapse ">
                        <li ><a href="myRentHouse.html">租房收藏</a></li>
                        <li><a href="mySecondHouse.html">二手房收藏</a></li>
                        <li><a href="myPremises.html">楼盘收藏</a></li>
                        <li><a href="myDecoration.html">装修收藏</a></li>
                    </ul>
                </li>
                <li><a href="myPortfolio.html">我的二手房</a></li>
                <li><a href="myAbout.html">我的租房</a></li>
                <li><a href="myContact.html">Contact</a></li>
            </ul>
        </nav>



    </aside>

    <div id="fh5co-main">
        <div class="fh5co-narrow-content">
            <h2 class="fh5co-heading animate-box" data-animate-effect="fadeInLeft">个人信息</h2>
            <hr >
            <!--基本信息-->
            <div class="row">
                <div class="col-md-9">
                    <div class="fh5co-feature animate-box " data-animate-effect="fadeInLeft">
                        <div class="row">
                            <div class="col-lg-offset-1 col-lg-4">
                                <img class="my-avatar" src="../assets/images/avatar.png">
                                <button class="up-img">上传头像</button>
                            </div>

                            <div class="col-lg-7">
                                <div class="row input-row" >
                                    <span class="col-lg-4 input-name">用户名：</span>
                                    <span class="col-lg-8" type="text" > 饶宇皓</span>
                                </div>
                                <div class="row input-row" >
                                    <span class="col-lg-4 input-name">手机号：</span>
                                    <span class="col-lg-4" type="text" > 18475786244</span>
                                    <a class="col-lg-4">修改</a>
                                </div>
                                <div class="row input-row" >
                                    <span class="col-lg-4 input-name">昵称：</span>
                                    <div class="col-lg-8 " >
                                        <input type="text" placeholder="八月">
                                    </div>

                                </div>
                                <div class="row input-row" >
                                    <span class="col-lg-4 input-name">邮箱：</span>
                                    <span class="col-lg-4" type="text" > 18475786244@</span>
                                    <a class="col-lg-4">修改</a>
                                </div>
                                <div class="row input-row" >
                                    <span class="col-lg-4 input-name">性别：</span>
                                    <div class="col-lg-8">
                                        <label><input name="sex"checked type="radio"/>男   </label>
                                        <label class="col-lg-offset-1"><input name="sex" type="radio"  />女</label>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr >
            <!--其他信息-->
            <div class="row col-lg-offset-1">
                <div class="fh5co-feature animate-box " data-animate-effect="fadeInLeft">
                    <div class="row input-row" >
                        <span class="col-lg-2 input-name">家庭住址：</span>
                        <div class="col-lg-4" style="height: 10px" >
                            <select class=" input-sm" style="font-size: 1px">
                                <option value="">云南</option>
                                <option value="">.云南</option>
                            </select>
                            <select class=" input-sm" style="font-size: 1px">
                                <option value="">昆明</option>
                                <option value="">.云南</option>
                            </select>
                            <select class=" input-sm" style="font-size: 1px">
                                <option value="">云南大学</option>
                                <option value="">.云南</option>
                            </select>
                        </div>
                    </div>
                    <div class="row margin-2 " >
                        <span class="col-lg-2 input-name">出生日期：</span>
                        <input class="input-date" type="date" value="2015-09-24"/>
                    </div>
                </div>
            </div>
            <div class="fh5co-feature animate-box " data-animate-effect="fadeInLeft">
                <button class="btn btn-block save-btn">保存</button>
            </div>
        </div>
    </div>
</div>

<!-- jQuery -->
<script src="../assets/js/jquery.min.js"></script>

<!-- Waypoints -->
<script src="../assets/js/jquery.waypoints.min.js"></script>

<!-- Bootstrap -->
<script src="../assets/js/bootstrap.min.js"></script>


<!-- MAIN JS -->
<script src="../assets/js/main.js"></script>

</body>
</html>