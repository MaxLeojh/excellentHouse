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
        <form action="http://localhost:8080/advanceSearch/search" id="adv-search-form" class="clearfix collapse ">
            <fieldset>
                <select name="province_code" id="province_code" onchange="getCities()">
                    <option value="">请选择省</option>
                </select>
                <select name="city_code" id="city_code" onchange="getDistricts()">
                    <option value="">请选择市</option>
                </select>
                <select id="district_code" name="district_code" onchange="getStreets()">
                    <option value="">请选择区</option>
                </select>
                <select id="street_code" name="street_code">
                    <option value="">请选择街道</option>
                </select>
                <select name="search_kind" id="property-beds">
                    <option value="">我想搜索</option>
                    <option value="新房">新房</option>
                    <option value="二手房">二手房</option>
                    <option value="出租房">租房</option>
                </select>
                <select name="deco_kind" id="property-baths">
                    <option value="">装修类型</option>
                    <option value="毛坯房">毛坯房</option>
                    <option value="简装">简装</option>
                    <option value="精装">精装</option>
                </select>
                <input type="text" name="min_area" id="property-min-area" placeholder="最小面积">
                <input type="text" name="max_area" id="property-max-area" placeholder="最大面积">
                <input type="text" name="min_price" id="property-min-price" placeholder="最小价格">
                <input type="text" name="max_price" id="property-max-price" placeholder="最大价格">
            </fieldset>
            <button type="submit" class="btn btn-default btn-lg text-center">搜索
            </button>
        </form>
    </div>
</div>
