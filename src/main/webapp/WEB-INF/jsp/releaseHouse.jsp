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
        <form id="newHouse" action="http://localhost:8080/frontHouse/insert" method="post" enctype="multipart/form-data">
            <div class="panel-heading">
                <h2 class="title panel-title">
                    发布房源
                </h2>
            </div>
            <div class=" panel-body">

                <div class="my-panel ">

                    <a  class="file">点击上传图片
                        <input  type="file" id="xdaTanFileImg"  multiple="multiple"  name="file" onchange="xmTanUploadImg(this)"/>
                    </a>
                    <div class="img-box" id="imgboxid">

                    </div>
                </div>
                <div class="my-input-group  " >
                    <div class="form-group-lg">
                        <label class="my-label text-right">种类</label>
                        <input name="kind" type="text" class="input my-input" value="${kind}">
                    </div>
                </div>
                <div class="my-input-group  ">
                    <div class="form-group-lg">
                        <label class="my-label text-right">名称</label>
                        <input name="name" type="text" class="input my-input">
                    </div>
                </div>
                <div class="my-input-group text-center ">
                    <div class="form-group-lg">
                        <label  class="my-label text-right">户型</label>
                        <input type="text" class="input my-input" >
                    </div>
                </div>
                <div class="my-input-group text-center ">
                    <div class="form-group-lg">
                        <label class="my-label text-right">楼层</label>
                        <input name="floor" type="text" class="input my-input" >
                    </div>
                </div>
                <div class="my-input-group text-center ">
                    <div class="form-group-lg">
                        <label class="my-label text-right">建筑面积</label>
                        <input name="area" type="text" class="input my-input" >
                    </div>
                </div>
                <div class="my-input-group text-center ">
                    <div class="form-group-lg">
                        <label class="my-label text-right">售价</label>
                        <input name="price" type="text" class="input my-input" >
                    </div>
                </div>
                <div class="my-input-group text-center ">
                    <div class="form-group-lg">
                        <label class="my-label text-right">联系人姓名</label>
                        <input name="contactName" type="text" class="input my-input" >
                    </div>
                </div>
                <div class="my-input-group text-center ">
                    <div class="form-group-lg">
                        <label class="my-label text-right">联系方式</label>
                        <input name="contactPhone" type="text" class="input my-input" >
                    </div>
                </div>
                <div class="my-input-group text-center ">
                    <div class="form-group-lg">
                        <label class="my-label text-right">简介</label>
                        <input name="introduction" type="text" class="input my-input" >
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
                        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal">地图选点</button>
                        <input id="corn" type="text" name="lnglat">
                        <!-- 模态框（Modal） -->
                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                            <div class="modal-dialog" style="width: 80%">
                                <div class="modal-content" >
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                            &times;
                                        </button>
                                        <h4 class="modal-title" id="myModalLabel">
                                            模态框（Modal）标题
                                        </h4>
                                    </div>
                                    <div class="modal-body">
                                        <div style="height: 400px; width: 100%" id="container" class="map">
                                        </div>
                                        <br>
                                        <div id='right'>
                                            <div>
                                                <button id="start">refresh</button>
                                            </div>
                                            <div>
                                                <div class='title'>选址结果</div>
                                                <div class='c'>经纬度:</div>
                                                <div id='lnglat'></div>
                                                <div class='c'>地址:</div>
                                                <div id='address'></div>
                                                <div class='c'>最近的路口:</div>
                                                <div id='nearestJunction'></div>
                                                <div class='c'>最近的路:</div>
                                                <div id='nearestRoad'></div>
                                                <div class='c'>最近的兴趣点:</div>
                                                <div id='nearestPOI'></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                                        </button>
                                        <button id="confirm" type="button" class="btn btn-primary">
                                            提交更改
                                        </button>
                                    </div>
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal -->
                        </div>
                        <!--end modal-->
                    </div>
                </div>
                <div class="save-btn">

                    <input id="submit_confirm" class="center-block  btn btn-success" type="submit" value="确认发布">

                </div>
            </div>
        </form>
    </div>
</div>

<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/uploadPicture.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>

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
<script type="text/javascript" src='//webapi.amap.com/maps?v=1.4.0&key=1854618ef1f4bcf1198f778eebf9ce81&plugin=AMap.ToolBar'></script>
<!-- UI组件库 1.0 -->
<script src="//webapi.amap.com/ui/1.0/main.js?v=1.0.11"></script>
<script type="text/javascript">
    AMapUI.loadUI(['misc/PositionPicker'], function(PositionPicker) {
        var map = new AMap.Map('container', {
            zoom: 13,
            scrollWheel: true
        });
        var positionPicker = new PositionPicker({
            mode: 'dragMarker',
            map: map
        });

        positionPicker.on('success', function(positionResult) {
            document.getElementById('lnglat').innerHTML = positionResult.position;
            document.getElementById('address').innerHTML = positionResult.address;
            document.getElementById('nearestJunction').innerHTML = positionResult.nearestJunction;
            document.getElementById('nearestRoad').innerHTML = positionResult.nearestRoad;
            document.getElementById('nearestPOI').innerHTML = positionResult.nearestPOI;
        });
        positionPicker.on('fail', function(positionResult) {
            document.getElementById('lnglat').innerHTML = ' ';
            document.getElementById('address').innerHTML = ' ';
            document.getElementById('nearestJunction').innerHTML = ' ';
            document.getElementById('nearestRoad').innerHTML = ' ';
            document.getElementById('nearestPOI').innerHTML = ' ';
        });
        var startButton = document.getElementById('start');
        var stopButton = document.getElementById('stop');
        var dragMapMode = document.getElementsByName('mode')[0];
        var dragMarkerMode = document.getElementsByName('mode')[1];
        var confirmButton = document.getElementById('confirm');
        AMap.event.addDomListener(startButton, 'click', function() {
            positionPicker.start(map.getBounds().getSouthWest())
        });
        AMap.event.addDomListener(confirmButton, 'click', function() {
            var location = document.getElementById('lnglat').innerHTML;
            document.getElementById('corn').setAttribute("value",location);
        });
        positionPicker.start();
        map.panBy(0, 1);

        map.addControl(new AMap.ToolBar({
            liteStyle: true
        }))
    });

//    $(function () {
//        $("#submit_confirm").click(function () {
//            var form = new FormData(document.forms.namedItem("newHouse"));
//
//            if(1 == 2){
//
//            }
//
//            else{
//                $.ajax({
//                    type:'post',
//                    url:'../frontHouse/insert/',
//                    processData:false,
//                    contentType:false,
//                    data:form,
//
//                    success:function (data) {
//                        if (data.result == "success") {
//                            alert("发布成功");
////                            top.location="../user/show";
//                        }
//                        else {
//                            alert("发布失败");
////                            top.location="../user/show";
//                        }
//                    }
//                });
//            }
//        });
//    });
</script>


</body>
</html>