<%--
  Created by IntelliJ IDEA.
  User: August
  Date: 2017/9/19
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <link rel="stylesheet" href="../assets/css/mycss.css" />
    <link rel="stylesheet" href="../assets/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../assets/fonts/iconfont.css">
    <title>优购房-管理员登陆</title>
</head>

<body>

<div class="my-logo">
    <img src="../assets/images/logo.png"/>
</div>
<div class="content">
    <div class="login-all" >
        <div class="loginDiv ">
            <div class="login-info ">
                <h4 >管理员登录</h4>
                <div class="input-group username">
                    <span class="input-group-addon iconfont icon-yonghu"></span>
                    <input id="name" type="text" class="form-control " placeholder="管理员帐号" >
                </div>
                <div class="input-group password">
                    <span class="input-group-addon  iconfont icon-suo "></span>
                    <input id="password" type="password" class="form-control" placeholder="密码" >
                </div>
                <button id="login" type="button" class="btn btn-default login-btn ">登陆</button>
            </div>
        </div>
    </div>
</div>
</body>
<script src="../assets/js/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#login").click(function () {
            var name = $("#name").val();
            var password = $("#password").val();

            if (1 == 2) {

            }
            else {
                var data = {
                    "name": name,
                    "password":password
                };

                $.ajax({
                    type:'post',
                    url:'/admin/login',
                    dataType:'json',
                    data:data,

                    success:function (data) {
                        if (data.result == "success") {
                            alert("success");
                            top.location = '/manageUser/list';
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
