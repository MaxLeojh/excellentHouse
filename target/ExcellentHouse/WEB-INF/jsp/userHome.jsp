<%--
  Created by IntelliJ IDEA.
  User: August
  Date: 2017/9/17
  Time: 12:51
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>个人中心</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <!-- Facebook and Twitter integration -->
    <meta property="og:title" content=""/>
    <meta property="og:image" content=""/>
    <meta property="og:url" content=""/>
    <meta property="og:site_name" content=""/>
    <meta property="og:description" content=""/>
    <meta name="twitter:title" content=""/>
    <meta name="twitter:image" content=""/>
    <meta name="twitter:url" content=""/>
    <meta name="twitter:card" content=""/>

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="favicon.ico">

    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">


    <!-- Theme style  -->
    <link rel="stylesheet" href="../assets/css/style.css">

    <link rel="stylesheet" href="../assets/css/mycss.css">
    <script src="../assets/js/editInfo.js"></script>
    <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.4.2.min.js"></script>
    <!--修改头像-->
    <!-- jQuery -->
    <script src="../assets/jquery.min.js"></script>
    <link rel="stylesheet" href="../assets/css/bootstrap.css">
    <link href="../assets/css/cropper.min.css" rel="stylesheet">
    <link href="../assets/css/sitelogo.css" rel="stylesheet">
    <link href="../assets/fonts/iconfont.css" rel="stylesheet" type="text/css">
    <script src="../assets/js/html2canvas.min.js" type="text/javascript" charset="utf-8"></script>
    <!-- Bootstrap -->
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/cropper.js"></script>
    <script src="../assets/js/sitelogo.js"></script>
    <style type="text/css">
        body {
            background-color: #f5f5f5;
        }
    </style>
</head>
<body>
<jsp:include page="frontHead.jsp"/>
<hr>
<div id="fh5co-page">
    <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
    <aside class="my-nav-group" id="fh5co-aside" role="complementary">
        <h1 id="fh5co-logo"><a href="/user/home">个人中心</a></h1>
        <nav class="my-nav" id="fh5co-main-menu" role="navigation">
            <ul>
                <li class=" panel panel-default fh5co-active"><a href="/user/home">我的信息</a></li>
                <li class=" panel panel-default" id="myCollapsibleExample"><a href="#demo" data-toggle="collapse">收藏</a>
                    <ul id="demo" class="collapse ">
                        <li><a href="/user/collectedPremises">楼盘收藏</a></li>
                        <li><a href="/user/collectedHouse?kind=二手房">二手房收藏</a></li>
                        <li><a href="/user/collectedHouse?kind=出租房">租房收藏</a></li>
                        <li><a href="/user/collectedDecoInstance">装修收藏</a></li>
                    </ul>
                </li>
                <li class=" panel panel-default "><a href="/user/house?kind=二手房">我的二手房</a></li>
                <li class=" panel panel-default "><a href="/user/house?kind=出租房">我的租房</a></li>
            </ul>
        </nav>
    </aside>

    <div id="fh5co-main">
        <div class="fh5co-narrow-content">
            <h5 class="">个人信息
                <%--<span class="iconfont icon-icon1" onclick="btnClick(this)"></span>--%>

            </h5>
            <hr>
            <!--基本信息-->
            <div class="row my-panel panel panel-default" >
                <div class="col-lg-offset-1 col-lg-2">
                    <img id="myAvatar" class="my-avatar" src="${user.pictureList.get(0).pictureAddress}">
                    <button type="button" class="btn btn-default up-img" data-toggle="modal"
                            data-target="#avatar-modal">修改头像
                    </button>
                </div>

                <div id="dvInput" class="col-lg-7">
                    <div class="row input-row">
                        <span class="col-lg-4 input-name">用户名：</span>
                        <%--<input class="input-info " type="text" readonly="false" value=${user.entity.name}>--%>

                        <input id="editName" class="input-info " type="text" readonly value=${user.entity.name}>

                        <%--<span class="col-lg-8" type="text" > ${user.entity.name}</span>--%>
                    </div>
                    <div class="row input-row">
                        <span class="col-lg-4 input-name">手机号：</span>
                        <%--<input class="input-info " type="text" disabled="disabled" value=${user.entity.phoneNumber}>--%>

                        <input id="editPhone" class="input-info " type="text" readonly value=${user.entity.phoneNumber}>
                        <%--<a class="col-lg-4">修改</a>--%>
                    </div>
                    <%--<div class="row input-row" >--%>
                    <%--<span class="col-lg-4 input-name">昵称：</span>--%>
                    <%--<div class="col-lg-8 " >--%>
                    <%--<input type="text" placeholder="八月">--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <div class="row input-row">
                        <span class="col-lg-4 input-name">邮箱：</span>
                        <input class="input-emil " type="text" disabled="disabled" value=${user.entity.email}>

                        <%--<a class="col-lg-4">修改</a>--%>
                    </div>
                    <div class="row input-row">
                        <span class="col-lg-4 input-name">性别：</span>
                        <c:choose>
                            <c:when test="${user.entity.gender = true}">
                                <div class="col-lg-8">
                                    <label><input class="input-sex editSex" name="sex" checked type="radio" value="男"/>男 </label>
                                    <label class="col-lg-offset-1"><input class="input-sex" name="sex" type="radio" value="女" disabled/>女</label>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div class="col-lg-8">
                                    <label><input class="input-sex editSex" name="sex" type="radio" value="男" disabled/>男 </label>
                                    <label class="col-lg-offset-1"><input class="input-sex" name="sex" checked type="radio" value="女"/>女</label>
                                </div>
                            </c:otherwise>
                        </c:choose>


                    </div>
                </div>
            </div>
            <hr>
            <!--其他信息-->
            <%--<div class="row col-lg-offset-1">--%>
            <%--<div class="fh5co-feature animate-box " data-animate-effect="fadeInLeft">--%>
            <%--<div class="row input-row" >--%>
            <%--<span class="col-lg-2 input-name">家庭住址：</span>--%>
            <%--<div class="col-lg-4" style="height: 10px" >--%>
            <%--<select class=" input-sm" style="font-size: 1px">--%>
            <%--<option value="">云南</option>--%>
            <%--<option value="">.云南</option>--%>
            <%--</select>--%>
            <%--<select class=" input-sm" style="font-size: 1px">--%>
            <%--<option value="">昆明</option>--%>
            <%--<option value="">.云南</option>--%>
            <%--</select>--%>
            <%--<select class=" input-sm" style="font-size: 1px">--%>
            <%--<option value="">云南大学</option>--%>
            <%--<option value="">.云南</option>--%>
            <%--</select>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--<div class="row margin-2 " >--%>
            <%--<span class="col-lg-2 input-name">出生日期：</span>--%>
            <%--<input class="input-date" type="date" value="2015-09-24"/>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>
            <div class="fh5co-feature animate-box " data-animate-effect="fadeInLeft">
                <%--<button class="btn  save-btn">修改</button>--%>

                <input class="btn btn-default  save-btn" type="button" value="编辑" onclick="btnClick(this)"/>
            </div>
        </div>
    </div>
</div>

<!--修改头像-->

<!--<button type="button" class="btn btn-primary"  data-toggle="modal" data-target="#avatar-modal" style="margin: 10px;">修改头像</button>-->

<!--<div class="user_pic" style="margin: 10px;">-->
<!--<img id="myAvatar" src="">-->
<!--</div>-->
<div class="modal fade" id="avatar-modal" aria-hidden="true" aria-labelledby="avatar-modal-label" role="dialog"
     tabindex="-1">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <!--<form class="avatar-form" action="upload-logo.php" enctype="multipart/form-data" method="post">-->
            <form class="avatar-form">
                <div class="modal-header">
                    <button class="close" data-dismiss="modal" type="button">&times;</button>
                    <h4 class="modal-title" id="avatar-modal-label">上传图片</h4>
                </div>
                <div class="modal-body">
                    <div class="avatar-body">
                        <div class="avatar-upload">
                            <input class="avatar-src" name="avatar_src" type="hidden">
                            <input class="avatar-data" name="avatar_data" type="hidden">
                            <label for="avatarInput" style="line-height: 35px;">图片上传</label>
                            <button class="btn btn-primary" type="button" style="height: 35px;"
                                    onClick="$('input[id=avatarInput]').click();">请选择图片
                            </button>
                            <span id="avatar-name"></span>
                            <input class="avatar-input hide" id="avatarInput" name="avatar_file" type="file"></div>
                        <div class="row">
                            <div class="col-md-9">
                                <div class="avatar-wrapper"></div>
                            </div>
                            <div class="col-md-3">
                                <div class="avatar-preview preview-lg" id="imageHead"></div>
                                <!--<div class="avatar-preview preview-md"></div>
                        <div class="avatar-preview preview-sm"></div>-->
                            </div>
                        </div>
                        <div class="row avatar-btns">
                            <div class="col-md-5">
                                <div class="btn-group">
                                    <button class="btn btn-primary iconfont icon-xiangzuoxuanzhuan" data-method="rotate"
                                            data-option="-90" type="button" title="Rotate -90 degrees"> 向左旋转
                                    </button>
                                </div>
                                <div class="btn-group">
                                    <button class="btn  btn-primary iconfont icon-xiangyouxuanzhuan"
                                            data-method="rotate" data-option="90" type="button"
                                            title="Rotate 90 degrees"> 向右旋转
                                    </button>
                                </div>
                            </div>
                            <div class="col-md-4" style="text-align: right;">
                                <button class="btn btn-primary iconfont icon-yidong" data-method="setDragMode"
                                        data-option="move" type="button" title="移动">
								<span class="docs-tooltip" data-toggle="tooltip" title=""
                                      data-original-title="$().cropper(&quot;setDragMode&quot;, &quot;move&quot;)">
								</span>
                                </button>
                                <button type="button" class="btn btn-primary iconfont icon-fangda" data-method="zoom"
                                        data-option="0.1" title="放大图片">
								<span class="docs-tooltip" data-toggle="tooltip" title=""
                                      data-original-title="$().cropper(&quot;zoom&quot;, 0.1)">
								  <!--<span class="fa fa-search-plus"></span>-->
								</span>
                                </button>
                                <button type="button" class="btn btn-primary iconfont icon-reduce" data-method="zoom"
                                        data-option="-0.1" title="缩小图片">
								<span class="docs-tooltip" data-toggle="tooltip" title=""
                                      data-original-title="$().cropper(&quot;zoom&quot;, -0.1)">
								  <!--<span class="fa fa-search-minus"></span>-->
								</span>
                                </button>
                                <button type="button" class="btn btn-primary iconfont icon-refresh" data-method="reset"
                                        title="重置图片">
									<span class="docs-tooltip" data-toggle="tooltip" title=""
                                          data-original-title="$().cropper(&quot;reset&quot;)"
                                          aria-describedby="tooltip866214">
									</span>
                                </button>
                            </div>
                            <div class="col-md-3">
                                <button class="btn btn-primary btn-block avatar-save iconfont icon-baocun" type="button"
                                        data-dismiss="modal"> 保存修改
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="loading" aria-label="Loading" role="img" tabindex="-1"></div>

<script type="text/javascript">
    //做个下简易的验证  大小 格式
    $('#avatarInput').on('change', function (e) {
        var filemaxsize = 1024 * 5;//5M
        var target = $(e.target);
        var Size = target[0].files[0].size / 1024;
        if (Size > filemaxsize) {
            alert('图片过大，请重新选择!');
            $(".avatar-wrapper").childre().remove;
            return false;
        }
        if (!this.files[0].type.match(/image.*/)) {
            alert('请选择正确的图片!')
        } else {
            var filename = document.querySelector("#avatar-name");
            var texts = document.querySelector("#avatarInput").value;
            var teststr = texts; //你这里的路径写错了
            testend = teststr.match(/[^\\]+\.[^\(]+/i); //直接完整文件名的
            filename.innerHTML = testend;
        }

    });
    //            var saveFile = function(data, filename){
    //                var save_link = document.createElementNS('http://www.w3.org/1999/xhtml', 'a');
    //                save_link.href = data;
    //                save_link.download = filename;
    //
    //                var event = document.createEvent('MouseEvents');
    //                event.initMouseEvent('click', true, false, window, 0, 0, 0, 0, 0, false, false, false, false, 0, null);
    //                save_link.dispatchEvent(event);
    //            };
    $(".avatar-save").on("click", function () {
        var img_lg = document.getElementById('imageHead');
        // 截图小的显示框内的内容
        html2canvas(img_lg, {
            allowTaint: true,
            taintTest: false,
            onrendered: function (canvas) {
                canvas.id = "mycanvas";
                //生成base64图片数据
                var dataUrl = canvas.toDataURL("image/jpeg");
                var base64code = dataUrl.split(',')[1];
                var data = {
                    "base64code": base64code,
                    "origan": dataUrl
                };

                $.ajax({
                    url: "/user/updatePic",
                    data: data,
                    type: "POST",
                    dataType: 'json',

                    success:function (data) {
                        if (data.result == "success") {
                            alert("success");
                            window.location.reload();
                        }else {
//                            alert("fail, error : " + data.message);
                        }
                    }
                });

                var newImg = document.createElement("img");
                document.getElementById("myAvatar").src = dataUrl;
                newImg.src = dataUrl;
                imagesAjax(dataUrl);
            }
        });
    });
    //
    //    function imagesAjax(src) {
    //        var data = {};
    //        data.img = src;
    //        data.jid = $('#jid').val();
    //        $.ajax({
    //            url: "/user/updatePic",
    //            data: data,
    //            type: "POST",
    //            dataType: 'json',
    //            success: function(re) {
    //                if(re.result == 'success') {
    //                    $('.user_pic img').attr('src',src );
    //                }
    //            }
    //        });
    //    }

    //    $(".avatar-save").on("click", function() {
    //        var img_lg = document.getElementById('imageHead');
    //        // 截图小的显示框内的内容
    //        html2canvas(img_lg, {
    //            allowTaint: true,
    //            taintTest: false,
    //            onrendered: function(canvas) {
    //                canvas.id = "mycanvas";
    //                //生成base64图片数据
    //                var origan = canvas.toDataURL("image/png");
    //                saveFile(origan,"1.png");
    //                var base64code = origan.split(',')[1];
    //                var data = {
    //                    "base64code": base64code,
    //                    "origan":origan
    //                };
    //
    //                $.ajax({
    //                    url: "/user/updatePic",
    //                    data: data,
    //                    type: "POST",
    //                    dataType: 'json'
    //                });
    //            }
    //        });
    //    });
</script>
<script src="../js/user.js"></script>
<!--修改头像end-->
</body>
</html>

