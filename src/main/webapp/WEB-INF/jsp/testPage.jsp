<%--
  Created by IntelliJ IDEA.
  User: maxleo
  Date: 17-9-21
  Time: 上午9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TestPage</title>
</head>
<body>
<input type="text" id="code">
<button id="submit">提交</button>

<script src="../assets/js/jquery.min.js"></script>

<script type="text/javascript">
    $(function () {
        $("#submit").click(function () {
            var code = $("#code").val();

            if (1 == 2) {

            }
            else {
                var data = {
                    "code":code
                };

                $.ajax({
                    type:'post',
                    url:'/test/getLocation',
                    dataType:'json',
                    data:data,

                    success:function (data) {
                        if (data.result == "success") {
                            var location = data.location;
                            alert(location);
                        }else {
                            alert("fail, error : " + data.message);
                        }
                    }
                });
            }
        });
    })
</script>

</body>
</html>
