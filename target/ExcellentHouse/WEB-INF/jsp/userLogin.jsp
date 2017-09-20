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
    <title>优购房-用户登录</title>
</head>
<body>
<input id="IdStr" type="text" class="form-control" placeholder="用户名/邮箱/手机号">
<br>
<input id="passWord" type="password" class="form-control" placeholder="密码">
<br>
<button id="login" class="btn btn-default regedit-btn agreebtn">login</button>
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
