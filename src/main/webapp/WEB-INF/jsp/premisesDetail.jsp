<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>楼盘详情</title>
    <%--AMap links--%>
    <script src="http://cache.amap.com/lbs/static/es5.min.js"></script>
    <script src="http://webapi.amap.com/maps?v=1.4.0&key=1854618ef1f4bcf1198f778eebf9ce81"></script>
    <script type="text/javascript" src="http://cache.amap.com/lbs/static/addToolbar.js"></script>


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
    <link rel="stylesheet" type="text/css" href="../assets/fonts/iconfont.css">
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
    <%--楼盘图片展示--%>
    <div id="main-slider" class="my-slide">
        <c:forEach items="${premisesAO.pictureList}" var="picture">
            <div class="slide my-slide"><img class="slide-img" src="${picture.pictureAddress}" alt="Slide"></div>
        </c:forEach>
        <%--<div class="slide"><img class="slide-img" src="../images/premises/1.jpg" alt="Slide"></div>--%>
        <%--<div class="slide"><img class="slide-img" src="../images/premises/2.jpg" alt="Slide"></div>--%>
        <%--<div class="slide"><img class="slide-img" src="../images/premises/3.jpg" alt="Slide"></div>--%>
        <%--<div class="slide my-slide"><img class="slide-img" src="../assets/images/slider/4.jpg" alt="Slide"></div>--%>
    </div>

    <%--主要内容--%>
    <div class="container">
        <div class="row">
            <%--楼盘内容--%>
            <div class="col-lg-8 col-md-7">
                <%--楼盘信息--%>
                <section class="property-meta-wrapper common">

                    <div class="entry-title clearfix">
                        <h4 class="pull-left" id="entityName" data-id="${premisesAO.entity.id}"
                            data-type="楼盘">${premisesAO.entity.name}</h4>
                        <c:choose>
                            <c:when test="${isCollected == true}">
                                <button id="hasCollect" class="pull-right ">已收藏 <i class="iconfont icon-iconfontlike "></i>
                                </button>
                            </c:when>
                            <c:otherwise>
                                <button id="collect" class="pull-right ">收藏 <i class="iconfont icon-xihuan "></i>
                                </button>
                                <button id="hasCollect" class="pull-right " style="display: none">已收藏 <i
                                        class="iconfont icon-iconfontlike "></i></button>
                            </c:otherwise>
                        </c:choose>

                    </div>
                    <div class="property-single-meta">
                        <ul class="clearfix">
                            <li><span>楼盘名字 :</span> ${premisesAO.entity.name} </li>
                            <li><span>绿化率 :</span> ${premisesAO.entity.greeningRate}%</li>
                            <li><span>开盘时间 :</span> ${premisesAO.entity.openingTime}</li>
                            <li><span>平均价格 :</span> ￥ ${premisesAO.entity.averagePrice} </li>
                            <li><span>楼盘地址 :</span> ${premisesAO.entity.address} </li>
                            <li><span>销售地址 :</span> ${premisesAO.entity.saleAddress}</li>
                            <li><span>联系电话 :</span> ${premisesAO.entity.phone} </li>
                        </ul>
                    </div>
                </section>

                <%--简介--%>
                <section class="property-contents common">
                    <div class="entry-title clearfix">
                        <h4 class="pull-left">简介 </h4><a class="pull-right print-btn" href="javascript:window.print()">Print
                        This Property <i class="fa fa-print"></i></a>
                    </div>
                    <p>${premisesAO.entity.introction}</p>
                </section>

                <%--高德地图--%>
                <section class="property-single-features common clearfix">
                    <h4 class="entry-title">位置</h4>
                    <div id="AMapContainer" style="height: 500px" data-x="${premisesAO.entity.locationX}" data-y="${premisesAO.entity.locationY}"></div>
                </section>

                <%--售房类型--%>
                <section class="property-video common">
                    <h4 class="entry-title">售房类型</h4>
                    <div class="row">
                        <c:forEach items="${premisesAO.houseTypeList}" var="houseType">
                            <div class=" layout-item-wrap">
                                <article class="property layout-item clearfix row">
                                    <figure class="feature-image col-lg-4 col-sm-4">
                                        <a class="clearfix zoom" href=""><img data-action="zoom"
                                                                              src="../assets/images/property/1.jpg"
                                                                              alt="图片丢了"></a>
                                        <span class="btn btn-warning btn-sale">热卖中</span>
                                    </figure>

                                    <div class="property-contents clearfix col-lg-7 col-sm-7">
                                        <header class="property-header clearfix">
                                            <div class="pull-left">
                                                <h6 class="entry-title house-name"><a
                                                        href="/frontPremises/show?premisesId=${premises.id}">${houseType.name}</a>
                                                </h6>
                                                <span class="property-location"><i
                                                        class="fa fa-map-marker"></i>坐标施工中</span>
                                            </div>
                                            <button class="btn btn-default btn-price pull-right btn-3d"
                                                    data-hover="￥${houseType.totalPrice}">
                                                <strong>￥${houseType.totalPrice}</strong>
                                            </button>
                                        </header>
                                        <div class="property-meta clearfix">
                                            <span><i class="fa fa-arrows-alt"></i> 3060 SqFt</span>
                                            <span><i class="fa fa-bed"></i> 3 Beds</span>
                                            <span><i class="fa fa-bathtub"></i> 3 Baths</span>
                                            <span><i class="fa fa-cab"></i> Yes</span>
                                        </div>
                                        <div >
                                            <p>${houseType.introduction}</p>
                                        </div>
                                        <div >
                                            <cite class="author-name">联系卖家 <a href="#">饶宇皓</a></cite>
                                            <span class="phone"><i class="fa fa-phone"></i> 123</span>
                                        </div>
                                    </div>
                                </article>
                            </div>
                        </c:forEach>
                    </div>
                </section>

                <%--附近--%>
                <section class="property-nearby-places common">
                    <h4 class="entry-title">附近</h4>
                    <div id="nearby-places-map"></div>
                </section>

                <%--房产公司--%>
                <section class="property-agent common">
                    <h4 class="entry-title">房产公司</h4>
                    <div class="row">
                        <div class="col-lg-7">
                            <div class="agent-box clearfix">
                                <div class="row">
                                    <div class="col-sm-5 col-xs-5">
                                        <a href="#" class="agent-image"><img src="../assets/images/agents/2.jpg"
                                                                             alt="Agent Image"></a>
                                    </div>
                                    <div class="col-sm-7 col-xs-7">
                                        <cite class="agent-name">${premisesAO.company.name}</cite>
                                        <small class="designation">${premisesAO.company.createTime} </small>
                                        <ul class="agent-social-handlers clearfix">
                                            <li><a href="#"><i class="fa fa-facebook-square"></i> Facebook</a></li>
                                            <li><a href="#"><i class="fa fa-twitter-square"></i> Twitter</a></li>
                                            <li><a href="#"><i class="fa fa-pinterest-square"></i> Pinterest</a></li>
                                            <li><a href="#"><i class="fa fa-google-plus-square"></i> Google Plus</a>
                                            </li>
                                        </ul>
                                        <a href="#" class="btn btn-warning">View Profile</a>
                                    </div>
                                </div>
                                <p>${premisesAO.company.info}</p>
                            </div>
                            <div class="widget address-widget clearfix">
                                <ul>
                                    <li><i class="fa fa-map-marker"></i> ${premisesAO.company.address} </li>
                                    <li><i class="fa fa-phone"></i> (123) 45678910</li>
                                    <li><i class="fa fa-envelope"></i> huycoi.art@gmail.com</li>
                                    <li><i class="fa fa-fax"></i> +84 962 216 601</li>
                                    <li><i class="fa fa-clock-o"></i> Mon - Sat: 9:00 - 18:00</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="agent-contact-form">
                                <form id="agent-form" class="agent-form" method="post" action="#">
                                    <input type="text" name="name" placeholder="Full Name" class="required">
                                    <input type="text" name="phone" placeholder="Phone Number" class="required">
                                    <input type="text" name="email" placeholder="Email" class="email required">
                                    <textarea name="message" cols="30" rows="5" class="required"
                                              placeholder="Message"></textarea>
                                    <button class="btn btn-default btn-lg btn-3d" type="submit"
                                            data-hover="SUBMIT REQUEST">SUBMIT REQUEST
                                    </button>
                                    <div class="error-container"></div>
                                    <div class="message-container"></div>
                                </form>
                            </div>
                        </div>
                    </div>
                </section>

                <%--论坛--%>
                <section class="property-nearby-places common">
                    <h4 class="entry-title">论坛</h4>
                    <div class="row">
                        <div class="form-group">
                            <label>输入你的评论：</label>
                            <textarea id="postInfo" class="form-control my-textarea" maxlength="200" rows="5"></textarea>
                            <button id="submitPost" class="btn submit-comment" data-id="${premisesAO.entity.id}" data-type="楼盘">提交</button>
                        </div>
                    </div>


                        <c:forEach items="${premisesAO.postAOList}" var="post">
                            <div class="panel panel-default content-group">
                            <div class="row">
                                <div class="col-md-4 col-sm-4 avatar_div">
                                    <img class=" avatar" src="${post.userAO.pictureList.get(0).pictureAddress}">
                                </div>
                                <span class="comment col-md-6 col-sm-6">
                                 ${post.userAO.entity.name}:
                                <strong>${post.entity.contains}</strong>
                                     <a id="btn-parent-comment" class="iconfont icon-pinglun" href="#comment-parent-group${post.entity.id}" data-toggle="collapse">评论</a>
                                </span>
                            </div>
                            <c:choose>
                                <c:when test="${post.replyAOList.size() > 0}">
                                    <c:forEach items="${post.replyAOList}" var="reply">
                                        <div class="row comment-son">
                                            <div class="col-md-5 col-sm-5 avatar_div" >
                                                <img class=" avatar" src="${reply.userAO.pictureList.get(0).pictureAddress}" >
                                            </div>
                                            <span class="comment col-lg-9">
                                                <c:choose>
                                                    <c:when test="${reply.RR != null}">
                                                        <a>${reply.userAO.entity.name}</a><span> 回复 </span><a>${reply.RR.userAO.entity.name}</a> :
                                                    </c:when>
                                                    <c:otherwise>
                                                        <a>${reply.userAO.entity.name}</a> :
                                                    </c:otherwise>
                                                </c:choose>
                                                <br>
                                                <strong>${reply.entity.contains}</strong>
                                                <a class="btn-comment iconfont icon-pinglun"href="#comment-son1${reply.entity.id}" data-toggle="collapse">回复</a>
                                            </span>

                                                <%--<input class="input-comment form-control " type="text" placeholder="评论">--%>
                                            <div id="comment-son1${reply.entity.id}" class="collapse" >
                                                <textarea id="replyContains"  class="form-control comment-textarea col-md-7" maxlength="200" rows="2" ></textarea>
                                                <button class="btn submit-comment submitReplyReply" data-postId="${post.entity.id}" data-id="${reply.entity.id}">提交</button>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </c:when>
                                <c:otherwise>

                                </c:otherwise>
                            </c:choose>
                            <div id="comment-parent-group${post.entity.id}" class="row comment-parent-group collapse" >
                                <textarea id="replyInfo"  class="form-control comment-parent" maxlength="200" rows="2" ></textarea>
                                <button class="btn submit-comment submitReply" data-id="${post.entity.id}">提交</button>
                            </div>
                    </div>
                        </c:forEach>

                </section>
            </div>

            <%--右侧内容--%>
            <div class="col-lg-4 col-md-5">
                <div id="property-sidebar">
                    <section class="widget recent-properties clearfix">
                        <h5 class="title">最近浏览</h5>
                        <div class="property clearfix">
                            <a href="#" class="feature-image zoom"><img data-action="zoom" src="../assets/images/property/1.jpg" alt="Property Image"></a>
                            <div class="property-contents">
                                <h6 class="entry-title"><a href="">天水家园</a></h6>
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
                                <h6 class="entry-title"><a href="">天水家园</a></h6>
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

<script src="../js/collection.js"></script>
<script src="../js/comment.js"></script>
<script src="../js/user.js"></script>
<script>
//    获得焦距变大
    $(function() {
        $(".comment-parent-group").focus(function(){
            this.rows=5;
        });
    });
//    点击子元素
    $(function() {
        $(".btn-comment").click(function(){

        });
    });
//    点击父元素
    $(function() {
        $("#btn-parent-comment").click(function(){


        });
    });

</script>
<script>
    var location_x = $("#AMapContainer").attr("data-x");
    var location_y = $("#AMapContainer").attr("data-y");

    var map = new AMap.Map('AMapContainer', {
        resizeEnable: true,
        zoom:12,
        center: [location_x, location_y]
    });
    marker = new AMap.Marker({
        position:[location_x, location_y]
    });
    marker.setMap(map);



</script>
</body>
</html>
