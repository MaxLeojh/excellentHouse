<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: August
  Date: 2017/9/18
  Time: 9:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
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
<jsp:include page="frontHead.jsp"/>
<div id="fh5co-page">
    <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
    <jsp:include page="userNavigation.jsp"/>

    <div id="fh5co-main">
        <div class="fh5co-narrow-content">
            <h2 class="fh5co-heading animate-box" data-animate-effect="fadeInLeft">楼盘收藏</h2>
            <c:choose>
                <c:when test="${premisesAOList.size() == 0}">
                    <div class="row row-bottom-padded-md">
                        您暂时没有收藏的楼盘
                    </div>
                </c:when>
                <c:otherwise>
                    <c:forEach items="${premisesAOList}" var="premises">
                        <div class="row row-bottom-padded-md">
                            <div class="col-md-3 col-sm-6 col-padding animate-box" data-animate-effect="fadeInLeft">
                                <div class="blog-entry">
                                    <a href="#" class="blog-img"><img src="../assets/images/myImages/1.jpg" class="img-responsive" alt="加载失败啦"></a>
                                    <div class="desc">
                                        <h3><a href="#">${premises.entity.name}</a><small> 位置施工中 </small></h3>
                                        <a href="/frontPremises/detail?premisesId=${premises.entity.id}">了解更多>></a>
                                        <button id="deleteCollection" class="delete"data-toggle="modal" data-target="#myModal" data-id="${premises.entity.id}" data-type="楼盘">删除</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </c:otherwise>
            </c:choose>
        </div>
        <!-- 删除提示 -->
        <%--<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">--%>
            <%--<div class="modal-dialog">--%>
                <%--<div class="modal-content">--%>
                    <%--<div class="modal-header">--%>
                        <%--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">--%>
                            <%--&times;--%>
                        <%--</button>--%>
                        <%--<h4 class="modal-title" id="myModalLabel">--%>
                            <%--提示--%>
                        <%--</h4>--%>
                    <%--</div>--%>
                    <%--<div class="modal-body">--%>
                        <%--确认删除收藏？--%>
                    <%--</div>--%>
                    <%--<div class="modal-footer">--%>
                        <%--<button type="button" class="btn btn-default" data-dismiss="modal">关闭--%>
                        <%--</button>--%>
                        <%--<button type="button" class="btn btn-primary">--%>
                            <%--确认--%>
                        <%--</button>--%>
                    <%--</div>--%>
                <%--</div><!-- /.modal-content -->--%>
            <%--</div><!-- /.modal -->--%>
        <%--</div>--%>

    </div>
</div>

<!-- jQuery -->
<script src="../assets/js/jquery.min.js"></script>

<!-- Bootstrap -->
<script src="../assets/js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="../assets/js/jquery.waypoints.min.js"></script>



<!-- MAIN JS -->
<script src="../assets/js/main.js"></script>

<script src="../js/collection.js"></script>

</body>

