<%--
  Created by IntelliJ IDEA.
  User: maxleo
  Date: 17-9-22
  Time: 上午12:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>新增 </title>

    <!-- Bootstrap -->
    <link href="../assets/css/bootstrap.css" rel="stylesheet">
    <link href="../assets/css/insertHouse.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../assets/fonts/iconfont.css">

    <link href="../assets/css/theme.css" rel="stylesheet">

</head>

<body>
<div class="row">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h2 class="title panel-title">
                发布房源
            </h2>
        </div>
        <div class=" panel-body">

            <div class="my-panel ">

                <a  class="file">点击上传图片
                    <input  type="file" id="xdaTanFileImg"  multiple="multiple"  name="fileAttach" onchange="xmTanUploadImg(this)"/>
                </a>
                <div class="img-box" id="imgboxid">

                </div>
            </div>
            <div class="my-input-group  ">
                <div class="form-group-lg">
                    <label class="my-label text-right">小区名称</label>
                    <input type="text" class="input my-input" >
                </div>
            </div>
            <div class="my-input-group text-center ">
                <div class="form-group-lg">
                    <label class="my-label text-right">户型</label>
                    <input type="text" class="input my-input" >
                </div>
            </div>
            <div class="my-input-group text-center ">
                <div class="form-group-lg">
                    <label class="my-label text-right">楼层</label>
                    <input type="text" class="input my-input" >
                </div>
            </div>
            <div class="my-input-group text-center ">
                <div class="form-group-lg">
                    <label class="my-label text-right">建筑面积</label>
                    <input type="text" class="input my-input" >
                </div>
            </div>
            <div class="my-input-group text-center ">
                <div class="form-group-lg">
                    <label class="my-label text-right">售价</label>
                    <input type="text" class="input my-input" >
                </div>
            </div>
            <div class="my-input-group text-center ">
                <div class="form-group-lg">
                    <label class="my-label text-right">姓名</label>
                    <input type="text" class="input my-input" >
                </div>
            </div>
            <div class="my-input-group text-center ">
                <div class="form-group-lg">
                    <label class="my-label text-right">联系方式</label>
                    <input type="text" class="input my-input" >
                </div>
            </div>
            <div class="my-input-group text-center ">
                <div class="form-group-lg">
                    <label class="my-label text-right">地址</label>
                    <select class="margin-left my-select" id="province_code" name="province_code" onchange="getCities()">
                        <option value="">请选择</option>
                    </select>
                    <select class="my-select" id="city_code" name="city_code" onchange="getDistricts()">
                        <option value="">请选择</option>
                    </select>
                    <select class="my-select" id="district_code" name="district_code" onchange="getStreets()">
                        <option value="">请选择</option>
                    </select>
                    <select class="my-select" id="street_code" name="street_code">
                        <option value="">请选择</option>
                    </select>
                    <button class=" btn btn-default">按钮</button>
                </div>
            </div>
            <div class="save-btn">

                <button class="center-block  btn btn-success">确认发布</button>

            </div>
        </div>
    </div>
</div>

<script src="../assets/js/uploadPicture.js"></script>

<script src="../assets/js/jquery.min.js"></script>
<script src="../plugins/zoom/zoom.js"></script>

<script type="text/javascript">
    /*加载省下拉选*/
    $(function () {
        $.ajax({
            type: "post",
            url: "/location/getProvinces",
            success: function (data) {
                for (var i = 0; i < data.length; i++) {
                    $('#province_code').append("<option value='" + data[i].cityId + "' >" + data[i].cityName + "</option>");
                }
            },
            error: function () {
                alert("加载省失败");
            }
        });
    });
    /*加载市下拉选*/
    function getCities() {
        var id = $("#province_code").val();
        $("#city_code").empty();
        $("#district_code").empty();
        $("#street_code").empty();
        $.ajax({
            type: "post",
            url: "/location/getCities",
            data: {"id": id},
            success: function (data) {
                $('#city_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");
                $('#district_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");
                $('#street_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");
                for (var i = 0; i < data.length; i++) {
                    $('#city_code').append("<option value='" + data[i].cityId + "' >" + data[i].cityName + "</option>");
                }
            },
            error: function () {
                alert("加载市失败");
            }
        });
    };
    /*加载地区下拉选*/
    function getDistricts() {
        var id = $("#city_code").val();
        $("#district_code").empty();
        $("#street_code").empty();
        $.ajax({
            type: "post",
            url: "/location/getDistricts",
            data: {"id": id},
            success: function (data) {
                $('#district_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");
                $('#street_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");
                for (var i = 0; i < data.length; i++) {
                    $('#district_code').append("<option value='" + data[i].cityId + "' >" + data[i].cityName + "</option>");
                }
            },
            error: function () {
                alert("加载区失败");
            }
        });
    };
    /*加载街道下拉选*/
    function getStreets() {
        var id = $("#district_code").val();
        $("#street_code").empty();
        $.ajax({
            type: "post",
            url: "/location/getStreets",
            data: {"id": id},
            success: function (data) {
                $('#street_code').append("<option value='' selected='selected' >" + '请选择' + "</option>");
                for (var i = 0; i < data.length; i++) {
                    $('#street_code').append("<option value='" + data[i].cityId + "' >" + data[i].cityName + "</option>");
                }
            },
            error: function () {
                alert("加载街道失败");
            }
        });
    }
</script>

</body>
</html>
