<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>文件上传下载</title>
</head>
<body>
选择文件:<input id="upfile" type="file" name="file" width="120px" multiple="multiple">
<form id="myForm" action="http://localhost:8080/file/upload" method="post" enctype="multipart/form-data">
    <%--选择文件:<input id="upfile" type="file" name="file" width="120px" multiple="multiple">--%>
    <input type="text" name="name">
    <input type="submit" value="上传" id="submit">
</form>

<!-- jQuery -->
<script src="../vendors/jquery/dist/jquery.min.js"></script>

<script type="text/javascript">
    $(function () {
        var ufile = $("#upfile");
        $("#myForm").append(ufile);
    })
</script>
</body>
</html>