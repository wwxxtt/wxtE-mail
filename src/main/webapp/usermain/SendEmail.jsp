<%--
  Created by IntelliJ IDEA.
  User: 86135
  Date: 2021/11/11
  Time: 17:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>


    <title>Title</title>
</head>
<body>
    <form action="/SendemailServlet" method="post" >
        <div class="form-group">
            <label for="acceptuser" class="col-sm-1 control-label">收件人:</label>
            <div class="col-sm-11">
                <input type="email" class="form-control" id="acceptuser" placeholder="收件人" pattern=".+@wxt.com" name="addressee">
            </div>
        </div>
        <div class="form-group">
            <label for="theme" class="col-sm-1 control-label">主题:</label>
            <div class="col-sm-11">
                <input type="text" class="form-control" id="theme" placeholder="主题" name="theme">
            </div>
            <div class="form-group">
                <label for="emailtxt" class="col-sm-1 control-label" id="emailtxt" >正文:</label>
                <div class="col-sm-11">
                    <textarea autofocus="autofocus" id="emailtext" class="form-group" rows="15" cols="100" name="emailtext"></textarea>
                </div>
            </div>
            <div class="col-sm-4"></div>
            <input type="button" value="存为草稿" >
            <input type="submit" value="发送邮件" >

        </div>
    </form>
</body>
</html>
