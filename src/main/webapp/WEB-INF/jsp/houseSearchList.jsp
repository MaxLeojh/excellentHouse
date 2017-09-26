<%--
  Created by IntelliJ IDEA.
  User: August
  Date: 2017/9/25
  Time: 20:34
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <c:choose>
        <c:when test="${kind.equals('二手房')}">
            <title>二手房</title>
        </c:when>
        <c:otherwise>
            <title>租房</title>
        </c:otherwise>
    </c:choose>

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
<jsp:include page="frontHead.jsp"/>
<div id="site-banner" class="text-center clearfix">
    <!--轮播信息-->
    <div class="container">
        <h1 class="title wow slideInLeft">找你所想</h1>
        <ol class="breadcrumb wow slideInRight">
            <li><a href="/">主页</a></li>
            <%--<li><a href="property-map-view.html">列表</a></li>--%>
            <c:choose>
                <c:when test="${kind.equals('二手房')}">
                    <li class="active">二手房</li>
                </c:when>
                <c:otherwise>
                    <li class="active">租房</li>
                </c:otherwise>
            </c:choose>
        </ol>
    </div>
</div>
<jsp:include page="frontAdvanceSearch.jsp"/>
<section id="property-listing">
    <!--头部-->
    <header class="section-header text-center">
        <div class="container">
            <h2 class="pull-left">共有${houseAOList.size()}个房源</h2>
            <div class="pull-right">
                <%--<div class="property-sorting pull-left">--%>
                <%--<label for="property-sort-dropdown"> 排序 </label>--%>
                <%--<select name="property-sort-dropdown" id="property-sort-dropdown">--%>
                <%--<option value="">默认</option>--%>
                <%--<option value="by_date">日期</option>--%>
                <%--<option value="by_price">价格</option>--%>
                <%--</select>--%>
                <%--</div>--%>
                <p class="pull-left layout-view"> 展示方式 <i class="fa fa-th selected" data-layout="4"></i> <i
                        class="fa fa-th-large" data-layout="6"></i><i class="fa fa-list-ul" data-layout="12"></i></p>
            </div>
        </div>
    </header>
    <div class="container section-layout">
        <div class="row">
            <!--房源信息-->
            <c:forEach items="${houseAOList}" var="house">
                <div class="col-lg-4 col-sm-6 layout-item-wrap">
                    <article class="property layout-item clearfix">
                        <figure class="feature-image">
                            <a class="clearfix zoom" href="single-property.html">
                                <img data-action="zoom" src="${house.pictureList.get(0).pictureAddress}" alt="Property Image">
                            </a>
                            <span class="btn btn-warning btn-sale">热销</span>
                        </figure>
                        <div class="property-contents clearfix">
                            <header class="property-header clearfix">
                                <div class="pull-left">
                                    <h6 class="entry-title  house-name"><a href="/frontHouse/detail?houseId=${house.entity.id}">${house.entity.name}</a></h6>
                                    <span class="property-location"><i class="fa fa-map-marker"></i>${house.location}</span>
                                </div>
                                <button class="btn btn-default btn-price pull-right btn-3d" data-hover="￥${house.entity.housePrice}">
                                    <strong>￥${house.entity.housePrice}</strong></button>
                            </header>
                            <div class="property-meta clearfix">
                                <span><i class="fa fa-arrows-alt"></i> ${house.type.area} </span>
                                <span><i class="fa fa-bed"></i> ${house.type.bedroomNum} 室 </span>
                                <span><i class="fa fa-bathtub"></i> ${house.type.bathroomNum}卫 </span>
                                <span><i class="fa fa-cab"></i> 有车位</span>
                            </div>
                            <div class="contents clearfix">
                                <p>${house.entity.introduction}</p>
                            </div>
                            <div class="author-box clearfix">
                                <a href="#" class="author-img"><img src="../assets/images/avatar.png" alt="Agent Image"></a>
                                <cite class="author-name">联系人:<a href=""> ${house.userAO.entity.name} </a></cite>
                                <span class="phone"><i class="fa fa-phone"></i>${house.userAO.entity.phoneNumber}</span>
                            </div>
                        </div>
                    </article>
                </div>
            </c:forEach>
        </div>
    </div>
</section>
<jsp:include page="frontFoot.jsp"/>
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
<script src="../js/user.js"></script>
<script src="../js/advancedSearch.js"></script>
</body>
</html>

