<%--
  Created by IntelliJ IDEA.
  User: August
  Date: 2017/9/14
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div id="advance-search" class="main-page clearfix">
    <!--搜索-->
    <div class="container">
        <button class="my_button" href="#adv-search-form" data-toggle="collapse">搜索</button>
        <form action="#" id="adv-search-form" class="clearfix collapse ">
            <fieldset>
                <select name="location" id="main-location">
                    <option value="">所有城市</option>
                    <option value="kunming"> 昆明</option>
                    <option value="shanghai"> 上海</option>
                    <option value="beijing"> 北京</option>
                    <option value="chengdu"> 成都</option>
                </select>
                <select name="sub-location" id="property-sub-location">
                    <option value="">所有区域</option>
                    <option value="wuhuaqu"> 五华区</option>
                    <option value="xishnaqu"> 西山区</option>
                    <option value="panlongqu"> 盘龙区</option>
                    <option value="guanduqu"> 官渡区</option>
                    <option value="chenggong"> 呈贡</option>
                </select>
                <select id="decoration" name="status">
                    <option value="">装修</option>
                    <option value="maopi"> 毛坯</option>
                    <option value="jianzhuangxiu"> 简装修</option>
                    <option value="jingzhuangxiu">精装修</option>
                    <option value="haohuazhuangxiu">豪华装修</option>
                </select>
                <select id="building-type" name="type">
                    <option value="">建筑类别</option>
                    <option value="pingfang"> 平房</option>
                    <option value="xiaoqufang"> 小区房</option>
                    <option value="bieshu"> 别墅</option>
                </select>
                <select name="house-type" id="property-beds">
                    <option value="">户型</option>
                    <option value="1">一居</option>
                    <option value="2">二居</option>
                    <option value="3">三居</option>
                    <option value="4">四居</option>
                    <option value="5">五居</option>
                </select>
                <select name="bathrooms" id="property-baths">
                    <option value="">浴室</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                </select>
                <input type="text" name="min-area" id="property-min-area" placeholder="最小面积">
                <input type="text" name="max-area" id="property-max-area" placeholder="最大面积">
                <select name="min-price" id="property-min-price">
                    <option value="any" selected="selected">最低价</option>
                    <option value="1000">1000</option>
                    <option value="5000">5000</option>
                    <option value="10000">10000</option>
                    <option value="50000">50000</option>
                    <option value="100000">100000</option>
                    <option value="200000">200000</option>
                    <option value="300000">300000</option>
                    <option value="400000">400000</option>
                    <option value="500000">500000</option>
                </select>
                <select name="max-price" id="property-max-price">
                    <option value="any" selected="selected">最高价</option>
                    <option value="5000">5000</option>
                    <option value="10000">10000</option>
                    <option value="50000">50000</option>
                    <option value="100000">100000</option>
                    <option value="200000">200000</option>
                    <option value="300000">300000</option>
                    <option value="400000">400000</option>
                    <option value="500000">500000</option>
                </select>
            </fieldset>
            <button type="submit" class="btn btn-default btn-lg text-center">搜索
            </button>
        </form>
    </div>
</div>
