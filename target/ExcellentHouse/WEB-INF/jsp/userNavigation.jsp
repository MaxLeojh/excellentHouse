<%--
  Created by IntelliJ IDEA.
  User: August
  Date: 2017/9/18
  Time: 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<aside id="fh5co-aside" role="complementary" class="border js-fullheight">
    <h1 id="fh5co-logo"><a href="/user/home">个人中心</a></h1>
    <nav class="my-nav" id="fh5co-main-menu" role="navigation">
        <ul>
            <li  class=" panel panel-default fh5co-active"><a href="/user/home">我的信息</a></li>
            <li class=" panel panel-default"id="myCollapsibleExample"><a href="#demo" data-toggle="collapse">收藏</a>
                <ul id="demo" class="collapse ">
                    <li><a href="/user/collectedPremises">楼盘收藏</a></li>
                    <li><a href="/user/collectedHouse">二手房收藏</a></li>
                    <li><a href="/user/collectedHouse">租房收藏</a></li>
                    <li><a href="/user/collectedDecoInstance">装修收藏</a></li>
                </ul>
            </li>
            <li class=" panel panel-default " ><a href="/user/house">我的二手房</a></li>
            <li class=" panel panel-default"><a href="/user/house">我的租房</a></li>
        </ul>
    </nav>
</aside>
