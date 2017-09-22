<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: August
  Date: 2017/9/18
  Time: 9:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if lt IE 7]>
<html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>
<html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>
<html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <!-- Facebook and Twitter integration -->
    <meta property="og:title" content=""/>
    <meta property="og:image" content=""/>
    <meta property="og:url" content=""/>
    <meta property="og:site_name" content=""/>
    <meta property="og:description" content=""/>
    <meta name="twitter:title" content=""/>
    <meta name="twitter:image" content=""/>
    <meta name="twitter:url" content=""/>
    <meta name="twitter:card" content=""/>

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

    <link rel="stylesheet" type="text/css" href="../assets/fonts/iconfont.css">
    <!-- Modernizr JS -->
    <script src="../assets/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="../assets/js/respond.min.js"></script>
    <![endif]-->
    <script src="../assets/js/uploadPicture.js"></script>
</head>
<body>
<jsp:include page="frontHead.jsp"/>
<hr>
<div id="fh5co-page">
    <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
    <aside  class="my-nav-group " id="fh5co-aside" role="complementary">
        <h1 id="fh5co-logo"><a href="/user/home">个人中心</a></h1>
        <nav class="my-nav" id="fh5co-main-menu" role="navigation">
            <ul>
                <li  class=" panel panel-default"><a href="/user/home">我的信息</a></li>
                <li class=" panel panel-default"id="myCollapsibleExample"><a href="#demo" data-toggle="collapse">收藏</a>
                    <ul id="demo" class="collapse ">
                        <li><a href="/user/collectedPremises">楼盘收藏</a></li>
                        <li><a href="/user/collectedHouse?kind=二手房">二手房收藏</a></li>
                        <li><a href="/user/collectedHouse?kind=出租房">租房收藏</a></li>
                        <li><a href="/user/collectedDecoInstance">装修收藏</a></li>
                    </ul>
                </li>
                <c:choose>
                    <c:when test="${kind == '出租房'}">
                        <li class=" panel panel-default " ><a href="/user/house?kind=二手房">我的二手房</a></li>
                        <li class=" panel panel-default fh5co-active"><a href="/user/house?kind=出租房">我的租房</a></li>
                    </c:when>
                    <c:otherwise>
                        <li class=" panel panel-default fh5co-active" ><a href="/user/house?kind=二手房">我的二手房</a></li>
                        <li class=" panel panel-default"><a href="/user/house?kind=出租房">我的租房</a></li>
                    </c:otherwise>
                </c:choose>

            </ul>
        </nav>
    </aside>

    <div id="fh5co-main">
        <div class="fh5co-narrow-content">
            <h2 class=" animate-box" data-animate-effect="fadeInLeft">
                <c:choose>
                    <c:when test="${kind = '出租房'}">
                        我的出租
                    </c:when>
                    <c:otherwise>
                        我的出售
                    </c:otherwise>
                </c:choose>
                <%--<span title="添加" class="my-icon animated iconfont icon-jiahao" data-toggle="modal" data-target="#myModal">--%>

                <%--</span>--%>
                <a title="添加" class="my-icon animated iconfont icon-jiahao" href="/frontHouse/newHouse?kind=${kind}" >

                </a>
            </h2>

            <c:forEach items="${houseAOList}" var="house">
                <div class="row animate-box panel panel-default col-padding">
                    <div class="col-md-5 animate-box" data-animate-effect="fadeInLeft">
                        <img class="img-responsive my-img" src="${house.pictureList.get(0).pictureAddress}"
                             alt="Free HTML5 Bootstrap Template by FreeHTML5.co">
                    </div>
                    <div class="house-info  col-md-7 animate-box " data-animate-effect="fadeInLeft">
                        <h4 class="">${house.entity.name}
                            <%--<small>说明</small>--%>
                            <button class="my-detete-btn iconfont icon-shanchu01"></button>
                            <button class="my-detete-btn iconfont icon-icon1"></button>
                        </h4>

                        <p>价格：<strong class="my-price">￥${house.entity.housePrice}
                            <small>/m²</small>
                        </strong></p>
                        <p>类型：<span class="my-info">${house.type.bedroomNum}室${house.type.hallNum}厅</span></p>
                        <p>介绍：<span class="my-info">${house.entity.introduction}</span></p>
                        <%--<p>建筑类别： <span class="my-info">板楼 小高层 高层</span></p>--%>
                        <p>地址：<span class="my-info">地址施工中</span></p>
                        <%--<p>交通：<span class="my-info">临近地铁</span></p>--%>
                    </div>
                </div>
            </c:forEach>

        </div>

        <%--<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">--%>
            <%--<div class="modal-dialog">--%>
                <%--<div class="modal-content">--%>
                    <%--<div class="modal-header">--%>
                        <%--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">--%>
                            <%--&times;--%>
                        <%--</button>--%>
                        <%--<h4 class="modal-title" id="myModalLabel">--%>
                            <%--添加出租房--%>
                        <%--</h4>--%>
                    <%--</div>--%>
                    <%--<!--模态框内容-->--%>
                    <%--<div class="modal-body">--%>
                        <%--<div class="row">--%>
                            <%--<div class="col-md-10">--%>
                                <%--<div class="fh5co-feature animate-box " data-animate-effect="fadeInLeft">--%>
                                    <%--<div class="row">--%>
                                               <%--<div class="row">--%>
                                                   <%--<input class="my-upload-btn " type="file" id="xdaTanFileImg"  multiple="multiple"  name="fileAttach" onchange="xmTanUploadImg(this)"/>--%>
                                                   <%--<div class="img-box" id="imgboxid">--%>

                                                   <%--</div>--%>

                                               <%--</div>--%>
                                            <%--&lt;%&ndash;<span title="添加" class="my-add-pic iconfont icon-jiahao"></span>&ndash;%&gt;--%>
                                        <%--<div class="col-lg-7">--%>
                                            <%--<div class="row input-row" >--%>
                                                <%--<span class="col-lg-5 input-name">价格：</span>--%>
                                                <%--<div class="col-lg-7 " >--%>
                                                    <%--<input type="text" >--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                            <%--<div class="row input-row" >--%>
                                                <%--<span class="col-lg-5 input-name">类型：</span>--%>
                                                <%--<div class="col-lg-7 " >--%>
                                                    <%--<input type="text" >--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                            <%--<div class="row input-row" >--%>
                                                <%--<span class="col-lg-5 input-name">配备：</span>--%>
                                                <%--<div class="col-lg-7 " >--%>
                                                    <%--<input type="text" >--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                            <%--<div class="row input-row" >--%>
                                                <%--<span class="col-lg-5 input-name">建筑类别：</span>--%>
                                                <%--<div class="col-lg-7 " >--%>
                                                    <%--<input type="text" >--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                            <%--<div class="row input-row" >--%>
                                                <%--<span class="col-lg-5 input-name">售楼地址：</span>--%>
                                                <%--<div class="col-lg-7 " >--%>
                                                    <%--<input type="text" >--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                            <%--<div class="row input-row" >--%>
                                                <%--<span class="col-lg-5 input-name">交通：</span>--%>
                                                <%--<div class="col-lg-7 " >--%>
                                                    <%--<input type="text" >--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="modal-footer">--%>
                        <%--<button type="button" class="btn btn-default" data-dismiss="modal">关闭--%>
                        <%--</button>--%>
                        <%--<button type="button" class="btn btn-primary">--%>
                            <%--保存--%>
                        <%--</button>--%>
                    <%--</div>--%>
                <%--</div><!-- /.modal-content -->--%>
            <%--</div><!-- /.modal -->--%>
        <%--</div>--%>

    </div>
</div>

<!-- jQuery -->
<script src="../assets/js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="../assets/js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="../assets/js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="../assets/js/jquery.waypoints.min.js"></script>


<!-- MAIN JS -->
<script src="../assets/js/main.js"></script>
<script src="../js/user.js"></script>
</body>
</html>
