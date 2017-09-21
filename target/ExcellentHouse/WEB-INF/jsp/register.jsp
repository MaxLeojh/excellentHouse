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
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <link rel="stylesheet" href="../assets/css/bootstrap.css" />
    <link rel="stylesheet" href="../assets/css/regedit.css" />
    <link rel="stylesheet" type="text/css" href="../assets/fonts/iconfont.css">
    <script type="text/javascript" src="../assets/js/myJS.js"></script>
    <title>注册-优购房</title>
</head>
<body>
<div class="container">
    <div class="logo">
        <div class="logo"><a href="/"><img src="../assets/images/logo.png" /></a></div>
    </div>
    <div  class="head-riht">
        <span class="login">我已注册，马上<a href="/user/toLogin" >登录</a></span>
    </div>
</div>

<div class="container mycontent" >

    <h4 class="title">
        邮箱注册
    </h4>
    <div class=" setting" >
        <!--设置用户信息-->

        <div class="input-group input-group-lg my-input ">
            <span class="input-group-addon iconfont icon-yonghu"></span>
            <input id="username" type="text" class="form-control "  onblur="check_username()" maxlength="16" placeholder="用户名">
            <span id="username-correct" class="mycheck iconfont icon-icon" > </span>
            <span id="username-error" class="my-error iconfont icon-cha">用户名长度在3-16字符 </span>
        </div>
        <div class="input-group input-group-lg my-input">
            <span class="input-group-addon  iconfont icon-youxiang "></span>
            <input id="email" type="email" class="form-control"  onblur="check_email()" placeholder="邮箱">
            <span id="email-correct" class="mycheck iconfont icon-icon" > </span>
            <span id="email-error" class="my-error iconfont icon-cha"   >邮箱格式不正确 </span>
        </div>
        <div class="input-group input-group-lg my-input">
            <span class="input-group-addon  iconfont icon-suo "></span>
            <input id="password" type="password" class="form-control "onblur="check_password()" placeholder="密码">
            <span id="password-correct" class="mycheck iconfont icon-icon"> </span>
        </div>
        <div class="input-group input-group-lg my-input">
            <span class="input-group-addon  iconfont icon-suo "></span>
            <input id="confirm-password" type="password" class="form-control"onblur="check_password()" placeholder="确认密码">
            <span id="confirm-password-correct" class="mycheck iconfont icon-icon"> </span>
            <span id="password-error" class="my-error iconfont icon-cha"   >两次密码不一致 </span>
        </div>

        <div class="input-group input-group-lg  my-input">
            <span class="input-group-addon  iconfont icon-yanzhengma "></span>
            <input id="verCode" type="text" class="form-control" placeholder="验证码"  onkeyup="value=value.replace(/[^\w\.\/]/ig,'')">
            <span class="input-group-addon  iconfont  ">验证码图片</span>
            <span class="mycheck iconfont icon-icon"> </span>
        </div>


        <div class="checkbox " style="margin-left: 32%" >
            <input type="checkbox" checked style="height: 15px" >
            <a >《优购房章程》</a>
        </div>
        <a class="regedit-btn" href="regedit-phone.html">使用手机注册>></a>
        <button id="register" class="btn btn-default regedit-btn agreebtn">立即注册</button>
    </div>
</div>

<div class="bottomLine" style="margin:0 auto;width:700px;height: 35px;">
			<span style="float: left;word-spacing:0.52rem;    text-align: center;    width: 100%;">关于我们 | 联系我们 | 帮助中心
			</span>
</div>


<div  class="my-input">
    <p style="font-size: 12px;float: left; line-height: 10px;">© &nbsp;优购网 版权所有 ，并保留所有权利  <span  style="margin-left: 30px;"> Tel ：123</span><span  style="margin-left: 20px;">E-mai：yougoufang@163.com</span>  </p>
</div>

<script src="../assets/js/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#register").click(function () {
            var name = $("#username").val();
            var password = $("#password").val();
            var email = $("#email").val();
            var verCode = $("#verCode").val();
            var passwordConfirm = $("#confirm-password").val();

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
                            top.location = '/index/show';
                        } else {
                            alert(data.ECode);
                        }
                    }
                });
            }
        });
    })
</script>

</body>
</html>
