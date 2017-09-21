<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>楼盘</title>

    <!-- Styles -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700|Poppins:400,600" rel="stylesheet">
    <!-- favicon and touch icons -->
    <link rel="shortcut icon" href="assets/images/favicon.png">

    <!-- Bootstrap -->
    <link href="../plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="../plugins/slick/slick.css" rel="stylesheet">
    <link href="../plugins/slick-nav/slicknav.css" rel="stylesheet">
    <link href="../assets/css/animate.css" rel="stylesheet">
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
            <li class="active">新房</li>
        </ol>
    </div>
</div>
<jsp:include page="frontAdvanceSearch.jsp"/>
<section id="property-listing">
    <!--头部-->
    <header class="section-header text-center">
        <div class="container">
            <h2 class="pull-left">共有${totalNum}个楼盘，当前处于${page}/${totalPage}页</h2>
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
            <!--楼盘信息-->
            <c:forEach items="${premisesAOList}" var="premises">
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
                                    <h6 class="entry-title house-name"><a href="/frontPremises/detail?premisesId=${premises.entity.id}">${premises.entity.name}</a></h6>
                                    <span class="property-location"><i class="fa fa-map-marker"></i>地址施工中</span>
                                </div>
                                <button class="btn btn-default btn-price pull-right btn-3d" data-hover="￥${premises.entity.averagePrice}">
                                    <strong>￥${premises.entity.averagePrice}</strong></button>
                            </header>
                            <div class="property-meta clearfix">
                                <span><i class="fa fa-arrows-alt"></i> 3060㎡</span>
                                <span><i class="fa fa-bed"></i> 3 室</span>
                                <span><i class="fa fa-bathtub"></i> 一卫</span>
                                <span><i class="fa fa-cab"></i> 有车位</span>
                            </div>
                            <div class="contents clearfix">
                                <p>${premises.entity.introction}</p>
                            </div>
                            <div class="author-box clearfix">
                                <a href="#" class="author-img"><img src="../assets/images/avatar.png" alt="Agent Image"></a>
                                <cite class="author-name">房产公司 <a href="#">${premises.company.name}</a></cite>
                                <span class="phone"><i class="fa fa-phone"></i>${premises.entity.phone}</span>
                            </div>
                        </div>
                    </article>
                </div>
            </c:forEach>
        </div>
        <ul id="pagination" class="text-center clearfix">
            <c:choose>
                <c:when test="${page == 1}">
                    <li class="disabled"><a href="#">上一页</a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="/frontPremises/list?page=${page - 1}">上一页</a></li>
                </c:otherwise>
            </c:choose>

            <c:forEach items="${pageList}" var="p">
                <c:choose>
                    <c:when test="${p == page}">
                        <li class="disabled"><a href="/frontPremises/list?page=${p}">${p}</a></li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="/frontPremises/list?page=${p}">${p}</a></li>
                    </c:otherwise>
                </c:choose>
            </c:forEach>

            <c:choose>
                <c:when test="${page == totalPage}">
                    <li class="disabled"><a href="#">下一页</a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="/frontPremises/list?page=${page + 1}">下一页</a></li>
                </c:otherwise>
            </c:choose>
        </ul>
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
</body>
</html>

