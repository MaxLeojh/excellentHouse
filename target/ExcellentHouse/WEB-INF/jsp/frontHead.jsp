<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: August
  Date: 2017/9/14
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header id="site-header">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-5 col-xs-5">
                <figure id="site-logo">
                    <a href="/"><img src="../assets/images/logo.png" alt="Logo"></a>
                </figure>
            </div>
            <!--个人信息-->
            <div class="col-md-4 col-sm-7 col-xs-7" style="float: right">
                <c:choose>
                    <c:when test="${user.entity.userId > 0}">
                        <div class="contact-in-header clearfix">
                            <div class="col-md-4 col-sm-6 col-xs-6 avatar_div">
                                <c:choose>
                                    <c:when test="${user.pictureList.size() == 0}">
                                        <a href="/user/home"><img class=" avatar" src="../assets/images/avatar.png"></a>
                                    </c:when>
                                    <c:otherwise>
                                        <a href="/user/home"><img class=" avatar" src="${user.pictureList.get(0).pictureAddress}"></a>
                                    </c:otherwise>
                                </c:choose>

                            </div>

                            <span class="head-username col-md-6 col-sm-6 col-xs-6" >
                                <a id="userName" href="/user/home" data-id="${user.entity.userId}">${user.entity.name}</a>
                                <a id="logout" class="logout" data-id="${user.entity.userId}">注销</a>
                            </span>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="not-login ">
                            <a href="/user/toLogin">登陆</a>
                            <span>/</span>
                            <a href="/user/toRegister">注册</a>
                        </div>
                    </c:otherwise>
                </c:choose>


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
                            <li><a href="/">首页</a></li>
                            <li><a href="/frontPremises/list">新房</a></li>
                            <li><a href="/frontHouse/list?kind=二手房">二手房</a></li>
                            <li><a href="/frontHouse/list?kind=出租房">租房</a></li>
                            <li><a href="/frontDecoInstance/list">装修</a></li>
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
