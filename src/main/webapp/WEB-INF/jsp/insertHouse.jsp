<%--
  Created by IntelliJ IDEA.
  User: WZC
  Date: 2017/9/20
  Time: 22:06
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
                <div class="divN1">
                    <div class="div2 ">点击上传图片</div>
                    <input class="file_input" type="file" id="xdaTanFileImg"  multiple="multiple"  name="fileAttach" onchange="xmTanUploadImg(this)"/>
                </div>

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
            <div class="save-btn">

                <button class="center-block  btn btn-success">确认发布</button>

            </div>
        </div>
    </div>
</div>

<script src="../assets/js/uploadPicture.js"></script>

<script src="../assets/js/jquery.min.js"></script>
<script src="../plugins/zoom/zoom.js"></script>

</body>
</html>