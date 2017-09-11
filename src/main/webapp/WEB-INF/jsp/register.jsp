<%--
  Created by IntelliJ IDEA.
  User: maxleo
  Date: 17-9-11
  Time: 下午3:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>register test</title>
</head>
<body>
<input type="text" class="form-control" id="username" placeholder="UserName">
<input type="email" class="form-control" id="email" placeholder="E-mail">
<input type="password" class="form-control" id="password" placeholder="Password">
<input type="text" class="form-control" id="verCode" placeholder="VerificationCode">

<button id="register" type="button" class="btn btn-primary btn-lg btn-block">Register</button>

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
                    "passWord":password,
                    "Email":email,
                    "verificationCode":verCode
                };

                $.ajax({
                    type:'post',
                    url:'/user/register',
                    dataType:'json',
                    data:data,

                    success:function (data) {
                        if (data.result == "success") {
                            alert("success");
                            top.location = '../back_index';
                        }else {
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
