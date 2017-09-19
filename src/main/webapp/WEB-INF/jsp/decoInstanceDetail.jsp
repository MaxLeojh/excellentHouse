<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: August
  Date: 2017/9/14
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>优购房-装修案例展示</title>

    <!-- Styles -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700|Poppins:400,600" rel="stylesheet">


    <!-- favicon and touch icons -->
    <link rel="shortcut icon" href="assets/images/favicon.png" >

    <!-- Bootstrap -->
    <link href="../plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="../plugins/slick/slick.css" rel="stylesheet">
    <link href="../plugins/slick-nav/slicknav.css" rel="stylesheet">
    <link href="../assets/css/animate.css" rel="stylesheet">
    <link href="../assets/css/bootstrap.css" rel="stylesheet">
    <link href="../assets/css/theme.css" rel="stylesheet">
    <link href="../assets/css/mycss.css" rel="stylesheet">
</head>
<body class="">
<div id="page-loader">
    <div class="loaders">
        <img src="../assets/images/loader/3.gif" alt="First Loader">
        <img src="../assets/images/loader/4.gif" alt="First Loader">
    </div>
</div>
<jsp:include page="frontHead.jsp"/>
<div id="property-single">
    <div id="main-slider">
        <div class="slide"><img src="../assets/images/slider/1.jpg" alt="Slide"></div>
        <div class="slide"><img src="../assets/images/slider/2.jpg" alt="Slide"></div>
        <div class="slide"><img src="../assets/images/slider/3.jpg" alt="Slide"></div>
        <div class="slide"><img src="../assets/images/slider/4.jpg" alt="Slide"></div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-7">
                <section class="property-meta-wrapper common">
                    <h3 class="entry-title">${houseAO.entity.name}</h3>
                    <div class="property-single-meta">
                        <ul class="clearfix">
                            <li><span>预算：</span> ￥${decoInstanceAO.entity.budget}</li>
                            <li><span>装修风格：</span>${decoInstanceAO.entity.style}</li>
                            <li><span>地  址 :</span> 地址施工中 </li>
                        </ul>
                    </div>
                </section>
                <section class="property-contents common">
                    <div class="entry-title clearfix">
                        <h4 class="pull-left">描述 </h4><a class="pull-right print-btn" href="javascript:window.print()">打印信息 <i class="fa fa-print"></i></a>
                    </div>
                    <p> ${decoInstanceAO.entity.introduction} </p>
                </section>
                <section class="property-single-features common clearfix">
                    <h4 class="entry-title">配套设施</h4>
                    <ul class="property-single-features-list clearfix">
                        <li>床</li>
                        <li>电视</li>
                        <li>家具</li>
                        <li class="disabled">空调</li>
                        <li>冰箱</li>
                        <li>洗衣机</li>
                        <li>热水器</li>
                        <li>宽带</li>
                        <li class="disabled">暖气</li>

                    </ul>
                </section>
                <%--<section class="property-video common">--%>
                <%--<h4 class="entry-title">附近</h4>--%>
                <%--<iframe src="" allowfullscreen></iframe>--%>
                <%--</section>--%>
                <%--<section class="property-nearby-places common">--%>
                <%--<h4 class="entry-title">交通</h4>--%>
                <%--<div id="nearby-places-map"></div>--%>
                <%--</section>--%>
                <section class="property-agent common">
                    <h4 class="entry-title">设计师</h4>
                    <div class="row">
                        <div class="col-lg-7">
                            <div class="agent-box clearfix">
                                <div class="row">
                                    <div class="col-sm-5 col-xs-5">
                                        <a href="#" class="agent-image"><img src="../assets/images/agents/2.jpg" alt="Agent Image"></a>
                                    </div>
                                    <div class="col-sm-7 col-xs-7">
                                        <cite class="agent-name">${decoInstanceAO.designerAO.entity.name}</cite>
                                        <%--<small class="designation">经纪人 </small>--%>
                                        <ul class="agent-social-handlers clearfix">
                                            <li><a href="#"><i class="fa fa-facebook-square"></i> Facebook</a></li>
                                            <li><a href="#"><i class="fa fa-twitter-square"></i> Twitter</a></li>
                                            <li><a href="#"><i class="fa fa-pinterest-square"></i> Pinterest</a></li>
                                            <li><a href="#"><i class="fa fa-google-plus-square"></i> Google Plus</a></li>
                                        </ul>
                                        <%--<a href="#" class="btn btn-warning">详细</a>--%>
                                    </div>
                                </div>
                                <p>服务商圈：滇池度假区-大商汇-世纪半岛片区</p>
                            </div>
                            <div class="widget address-widget clearfix">
                                <ul>
                                    <%--<li><i class="fa fa-map-marker"></i> 云南大学</li>--%>
                                    <li><i class="fa fa-phone"></i> ${decoInstanceAO.designerAO.entity.phone}</li>
                                    <%--<li><i class="fa fa-envelope"></i> </li>--%>
                                    <%--<li><i class="fa fa-fax"></i> +666</li>--%>
                                    <%--<li><i class="fa fa-clock-o"></i> 服务时间: 9:00 - 18:00</li>--%>
                                </ul>
                            </div>
                        </div>
                        <%--<div class="col-lg-5">--%>
                        <%--<div class="agent-contact-form">--%>
                        <%--<form id="agent-form" class="agent-form" method="post" action="#">--%>
                        <%--<input type="text" name="name" placeholder="姓名" class="required" >--%>
                        <%--<input type="text" name="phone" placeholder="联系电话" class="required">--%>
                        <%--<input type="text" name="email" placeholder="邮箱" class="email required">--%>
                        <%--<textarea name="message" cols="30" rows="5" class="required" placeholder="详细信息"></textarea>--%>
                        <%--<button class="btn btn-default btn-lg btn-3d" type="submit" data-hover="提交">提交</button>--%>
                        <%--<div class="error-container"></div>--%>
                        <%--<div class="message-container"></div>--%>
                        <%--</form>--%>
                        <%--</div>--%>
                        <%--</div>--%>
                    </div>
                </section>
            </div>
            <div class="col-lg-4 col-md-5">
                <div id="property-sidebar">

                    <section class="widget recent-properties clearfix">
                        <h5 class="title">最近浏览</h5>
                        <div class="property clearfix">
                            <a href="#" class="feature-image zoom"><img data-action="zoom" src="../assets/images/property/1.jpg" alt="Property Image"></a>
                            <div class="property-contents">
                                <h6 class="entry-title"><a href="single-property.html">天水家园</a></h6>
                                <span class="btn-price">￥389.000</span>
                                <div class="property-meta clearfix">
                                    <span><i class="fa fa-arrows-alt"></i> 3060㎡</span>
                                    <span><i class="fa fa-bed"></i> 3 室</span>
                                    <span><i class="fa fa-bathtub"></i> 3 卫</span>
                                    <span><i class="fa fa-cab"></i> 有车位</span>
                                </div>
                            </div>
                        </div>
                        <div class="property clearfix">
                            <a href="#" class="feature-image zoom"><img data-action="zoom" src="../assets/images/property/2.jpg" alt="Property Image"></a>
                            <div class="property-contents">
                                <h6 class="entry-title"><a href="single-property.html">天水家园</a></h6>
                                <span class="btn-price">￥389.000</span>
                                <div class="property-meta clearfix">
                                    <span><i class="fa fa-arrows-alt"></i> 3060㎡</span>
                                    <span><i class="fa fa-bed"></i> 3 室</span>
                                    <span><i class="fa fa-bathtub"></i> 3 卫</span>
                                    <span><i class="fa fa-cab"></i> 有车位</span>
                                </div>
                            </div>
                        </div>
                        <div class="property clearfix">
                            <a href="#" class="feature-image zoom"><img data-action="zoom" src="../assets/images/property/3.jpg" alt="Property Image"></a>
                            <div class="property-contents">
                                <h6 class="entry-title"><a href="single-property.html">天水家园</a></h6>
                                <span class="btn-price">￥389.000</span>
                                <div class="property-meta clearfix">
                                    <span><i class="fa fa-arrows-alt"></i> 3060㎡</span>
                                    <span><i class="fa fa-bed"></i> 3 室</span>
                                    <span><i class="fa fa-bathtub"></i> 3 卫</span>
                                    <span><i class="fa fa-cab"></i> 有车位</span>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="widget property-taxonomies clearfix">
                        <h5 class="title">更多</h5>
                        <ul class="clearfix">
                            <li><a href="#">小区房 </a><span class="pull-right">29</span></li>
                            <li><a href="#">别墅</a><span class="pull-right">35</span></li>
                            <li><a href="#">海景房</a><span class="pull-right">07</span></li>
                        </ul>
                    </section>
                </div>
            </div>
        </div>
    </div>
</div>
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
