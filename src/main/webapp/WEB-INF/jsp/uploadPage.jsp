<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>文件上传下载</title>
</head>
<body>
<form action="http://localhost:8080/file/upload" method="post" enctype="multipart/form-data">
    选择文件:<input type="file" name="file" width="120px" multiple="multiple">
    <input type="submit" value="上传">
</form>
<hr>
<form action="http://localhost:8080/uploadDemo/rest/file/down" method="get">
    <input type="submit" value="下载">
</form>
</body>
</html>