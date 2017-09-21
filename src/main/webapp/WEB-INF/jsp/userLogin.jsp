<%--
  Created by IntelliJ IDEA.
  User: maxleo
  Date: 17-9-12
  Time: 下午4:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <link rel="stylesheet" href="../assets/css/mycss.css" />
    <link rel="stylesheet" href="../assets/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../assets/fonts/iconfont.css">
    <title>优购房登陆</title>
</head>

<body>
<div class="my-logo">
    <a href="/"><img src="../assets/images/logo.png"/></a>
</div>
<div class="content">
    <div class="login-all" >
        <div class="loginDiv ">
            <div class="login-info ">
                <h4 >欢迎登录</h4>
                <div class="input-group username">
                    <span class="input-group-addon iconfont icon-yonghu"></span>
                    <input id="IdStr" type="text" class="form-control " placeholder="邮箱/手机号/用户名" >
                </div>
                <div class="input-group password">
                    <span class="input-group-addon  iconfont icon-suo "></span>
                    <input id="passWord" type="password" class="form-control" placeholder="请输入密码" >
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox"> 自动登陆
                    </label>
                </div>
                <button id="login" type="button" class="btn btn-default login-btn ">登陆</button>

                <div class="login-bottom">
                    <a>忘记登录密码</a>
                    <a class="register" href="/user/toRegister" >免费注册</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script src="../assets/js/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#login").click(function () {
            var email = $("#IdStr").val();
            var password = $("#passWord").val();

            if (1 == 2) {

            }
            else {
                var data = {
                    "email": email,
                    "password":password
                };

                $.ajax({
                    type:'post',
                    url:'/user/login',
                    dataType:'json',
                    data:data,

                    success:function (data) {
                        if (data.result == "success") {
                            alert("success");
                            top.location = '/index/show';
                        }else {
                            alert("fail, error : " + data.message);
                        }
                    }
                });
            }
        });
    })
</script>
</html>
