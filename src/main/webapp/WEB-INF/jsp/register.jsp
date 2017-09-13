<%--
  Created by IntelliJ IDEA.
  User: maxleo
  Date: 17-9-11
  Time: 下午3:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no"/>
    <link rel="stylesheet" href="../assets/css/bootstrap.css"/>
    <link rel="stylesheet" href="../assets/css/regedit.css"/>
    <link rel="stylesheet" type="text/css" href="../assets/fonts/iconfont.css">

    <title>注册-优购房</title>
</head>
<body>

<div class="container">
    <div class="logo">
        <div class="logo"><img src="../assets/images/logo.png"/></div>
    </div>
    <div class="head-riht">
        <span class="login">我已注册，马上<a href="login.html">登录</a></span>
    </div>
</div>

<div class="container mycontent">

    <h4 class="title">
        邮箱注册
    </h4>
    <div class=" setting">
        <!--设置用户信息-->
        <div class="input-group input-group-lg my-input ">
            <span class="input-group-addon iconfont icon-yonghu"></span>
            <input id="username" type="text" class="form-control " placeholder="用户名">
        </div>
        <div class="input-group input-group-lg my-input">
            <span class="input-group-addon  iconfont icon-youxiang "></span>
            <input id="email" type="text" class="form-control" placeholder="邮箱">
        </div>
        <div class="input-group input-group-lg my-input">
            <span class="input-group-addon  iconfont icon-suo "></span>
            <input id="password" type="password" class="form-control " placeholder="密码">
        </div>
        <div class="input-group input-group-lg my-input">
            <span class="input-group-addon  iconfont icon-suo "></span>
            <input type="password" class="form-control" placeholder="确认密码">
        </div>

        <div class="input-group input-group-lg  my-input">
            <span class="input-group-addon  iconfont icon-yanzhengma "></span>
            <input id="verCode" type="text" class="form-control" placeholder="验证码">
            <span class="input-group-addon  iconfont  ">验证码图片</span>
        </div>


        <div class="checkbox " style="margin-left: 32%">
            <input type="checkbox" checked style="height: 15px">
            <a>《优购房章程》</a>
        </div>
        <a class="regedit-btn" href="regedit-phone.html">使用手机注册>></a>
        <button id="register" class="btn btn-default regedit-btn agreebtn">立即注册</button>
    </div>
</div>

<div class="bottomLine" style="margin:0 auto;width:700px;height: 35px;">
			<span style="float: left;word-spacing:0.52rem;    text-align: center;    width: 100%;">关于我们 | 联系我们 | 帮助中心
			</span>
</div>


<div class="my-input">
    <p style="font-size: 12px;float: left; line-height: 10px;">© &nbsp;优购网 版权所有 ，并保留所有权利 <span
            style="margin-left: 30px;"> Tel ：123</span><span style="margin-left: 20px;">E-mai：yougoufang@163.com</span>
    </p>
</div>

<script src="../assets/js/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#register").click(function () {
            var name = $("#username").val();
            var password = $("#password").val();
            var email = $("#email").val();
            var verCode = $("#verCode").val();

            if (1 == 2) {

            }
            else {
                var data = {
                    "userName": name,
                    "passWord": password,
                    "Email": email,
                    "verificationCode": verCode
                };

                $.ajax({
                    type: 'post',
                    url: '/user/register',
                    dataType: 'json',
                    data: data,

                    success: function (data) {
                        if (data.result == "success") {
                            alert("success");
                            top.location = '../back_index';
                        } else {
                            alert("fail");
                        }
                    }
                });
            }
        });
    })
</script>

</body>
</html>
