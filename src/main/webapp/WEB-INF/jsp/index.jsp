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
    <link href="../assets/css/animate.css" rel="stylesheet">
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
<jsp:include page="frontHead.jsp"/>
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
<jsp:include page="frontAdvanceSearch.jsp"/>

<%--楼盘模块--%>
<section id="home-property-listing">
    <header class="section-header home-section-header text-center">
        <div class="container">
            <a href="/frontPremises/list"><h2 class="wow slideInRight">楼盘</h2></a>
            <p class="wow slideInLeft">这里是楼盘的模块 <br>
                以钱换钱了 </p>
        </div>
    </header>
    <div class="container">
        <div class="row">
            <c:forEach items="${premisesList}" var="premises">
                <div class="col-lg-4 col-sm-6 layout-item-wrap">
                    <article class="property layout-item clearfix">
                        <figure class="feature-image zoom">
                            <%--<a class="clearfix zoom" href=""><img data-action="zoom" src="../assets/images/property/1.jpg" alt="图片丢了"></a>--%>
                            <a class="clearfix"><img data-action="zoom" src="${premises.pictureList.get(0).pictureAddress}" alt="图片丢了"></a>
                            <span class="btn btn-warning btn-sale">热卖中</span>
                        </figure>
                        <div class="property-contents clearfix">
                            <header class="property-header clearfix">
                                <div class="pull-left">
                                    <h6 class="entry-title"><a href="/frontPremises/detail?premisesId=${premises.entity.id}">${premises.entity.name}</a></h6>
                                    <span class="property-location"><i class="fa fa-map-marker"></i>${premises.location}</span>
                                </div>
                                <button class="btn btn-default btn-price pull-right btn-3d" data-hover="￥${premises.entity.averagePrice}/m<sup>2</sup>"><strong>￥${premises.entity.averagePrice}/m<sup>2</sup></strong>
                                </button>
                            </header>
                            <%--<div class="property-meta clearfix">--%>
                                <%--<span><i class="fa fa-arrows-alt"></i> 3060 SqFt</span>--%>
                                <%--<span><i class="fa fa-bed"></i> 3 Beds</span>--%>
                                <%--<span><i class="fa fa-bathtub"></i> 3 Baths</span>--%>
                                <%--<span><i class="fa fa-cab"></i> Yes</span>--%>
                            <%--</div>--%>
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

<%--二手房模块--%>
<section id="home-property-for-rent-listing">
    <header class="section-header home-section-header text-center">
        <div class="container">
            <a href="/frontHouse/list?kind=二手房"><h2 class="wow slideInLeft">二手房</h2></a>
            <p class="wow slideInRight">这里是二手房模块 <br>
                风拳流的奥义</p>
        </div>
    </header>
    <div class="container">
        <div class="row">
            <div id="property-for-rent-slider">
                <c:forEach items="${secondHandList}" var="house">
                    <div class="col-lg-4 col-md-6 layout-item-wrap">
                        <article class="property clearfix layout-item">
                            <figure class="feature-image">
                                <a class="clearfix" > <img data-action="zoom" src="${house.pictureList.get(0).pictureAddress}" alt="Property Image"></a>
                            </figure>
                            <div class="property-contents">
                                <header class="property-header clearfix">
                                    <div class="pull-left">
                                        <h6 class="entry-title house-name"><a href="/frontHouse/detail?houseId=${house.entity.id}" title=${house.entity.name}>${house.entity.name}</a>
                                        </h6>
                                        <span class="property-location"><i class="fa fa-map-marker"></i> ${house.location} </span>
                                    </div>
                                    <button class="btn btn-default btn-price pull-right btn-3d" data-hover="￥${house.entity.housePrice}万">
                                        <strong>￥${house.entity.housePrice}万</strong></button>
                                </header>
                                <div class="property-meta clearfix">
                                    <span><i class="fa fa-arrows-alt"></i> ${house.entity.area}m<sup>2</sup></span>
                                    <span><i class="fa fa-bed"></i> ${house.type.bedroomNum} 室</span>
                                    <span><i class="fa fa-bathtub"></i> ${house.type.bathroomNum} 卫</span>
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

<%--租房模块--%>
<section id="home-property-listing">
    <header class="section-header home-section-header text-center">
        <div class="container">
            <a href="/frontHouse/list?kind=出租房"><h2 class="wow slideInLeft">租房</h2></a>
            <p class="wow slideInRight">这里是租房模块 <br>
                走过路过</p>
        </div>
    </header>
    <div class="container">
        <div class="row">
            <c:forEach items="${rentHouseList}" var="house">
                <div class="col-lg-4 col-sm-6 layout-item-wrap">
                    <article class="property layout-item clearfix">
                        <figure class="feature-image">
                            <a class="clearfix zoom" href=""><img data-action="zoom" src="${house.pictureList.get(0).pictureAddress}" alt="图片丢了"></a>
                            <span class="btn btn-warning btn-sale">热卖中</span>
                        </figure>
                        <div class="property-contents clearfix">
                            <header class="property-header clearfix">
                                <div class="pull-left">
                                    <h6 class="entry-title house-name"><a href="/frontHouse/detail?houseId=${house.entity.id}">${house.entity.name}</a></h6>
                                    <span class="property-location"><i class="fa fa-map-marker"></i>${house.location}</span>
                                </div>
                                <button class="btn btn-default btn-price pull-right btn-3d" data-hover="￥${house.entity.housePrice}/月"><strong>￥${house.entity.housePrice}/月</strong>
                                </button>
                            </header>
                            <div class="property-meta clearfix">
                                <span><i class="fa fa-arrows-alt"></i> ${house.entity.area}m<sup>2</sup></span>
                                <span><i class="fa fa-bed"></i> ${house.type.bedroomNum} 室</span>
                                <span><i class="fa fa-bathtub"></i> ${house.type.bathroomNum} 卫</span>
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

<%--装修模块--%>
<section id="home-property-for-rent-listing">
    <header class="section-header home-section-header text-center">
        <div class="container">
            <a href="/frontDecoInstance/list"><h2 class="wow slideInRight">装修</h2></a>
            <p class="wow slideInLeft">这里是装修案例展示 <br>
                装修技术哪家强？ </p>
        </div>
    </header>
    <div class="container">
        <div class="row">
            <div id="">
                <c:forEach items="${decoInstanceList}" var="instance">
                    <div class="col-lg-4 col-md-6">
                        <article class="property clearfix">
                            <figure class="feature-image">
                                <a class="clearfix"> <img data-action="zoom" src="${instance.pictureList.get(0).pictureAddress}" alt="Property Image"></a>
                            </figure>
                            <div class="property-contents">
                                <header class="property-header clearfix">
                                    <div class="pull-left">
                                        <h6 class="entry-title"><a href="/frontDecoInstance/detail?decoInstanceId=${instance.entity.id}">${instance.entity.name}</a>
                                        </h6>
                                        <%--<span class="property-location"><i class="fa fa-map-marker"></i> 坐标施工中 </span>--%>
                                        <span>风格：${instance.entity.style}</span>
                                    </div>
                                    <button class="btn btn-default btn-price pull-right btn-3d" data-hover="￥${instance.entity.budget}万">
                                        <strong>￥${instance.entity.budget}万</strong></button>
                                </header>
                                <div class="property-meta clearfix">
                                    <%--暂时不知道放什么--%>
                                        <%--<span><i class="fa fa-arrows-alt"></i> 3060 SqFt</span>--%>
                                        <%--<span><i class="fa fa-bed"></i> 3 Beds</span>--%>
                                        <%--<span><i class="fa fa-bathtub"></i> 3 Baths</span>--%>
                                        <%--<span><i class="fa fa-cab"></i> Yes</span>--%>
                                </div>
                            </div>
                        </article>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</section>

<%--广告模块--%>
<%--<section id="announcement-section" class="text-center">--%>
    <%--<div class="container ">--%>
        <%--<h2 class="title wow slideInLeft">Download Our Latest App</h2>--%>
        <%--<p class="wow slideInRight">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor--%>
            <%--incididunt ut <br>--%>
            <%--labore et dolore magna aliquan ut enim ad minim veniam.</p>--%>
        <%--<a class="btn" href="#"><img src="../assets/images/iso-btn.png" alt="ISO Button"></a>--%>
        <%--<a class="btn" href="#"><img src="../assets/images/playstore-btn.png" alt="Play Store Button"></a>--%>
    <%--</div>--%>
<%--</section>--%>

<%--WHY CHOOSE US--%>
<section id="home-features-section" class="text-center">
    <header class="section-header home-section-header">
        <div class="container">
            <h2 class="wow slideInRight">为什么选择我们</h2>
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

<%--页脚--%>
<jsp:include page="frontFoot.jsp"/>

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
<script src="../js/user.js"></script>
</body>
</html>
