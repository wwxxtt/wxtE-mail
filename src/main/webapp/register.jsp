<%--
  Created by IntelliJ IDEA.
  User: 86135
  Date: 2021/11/8
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>


    <link href="favicon.ico" rel="shortcut icon">
    <title>login1</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/normalize.css">


    <style>
        #register1{
            text-align: center;
            padding: 15px;
            font-size: 30px;
            /*position:absolute;*/
        }

    </style>


    <%--<style>
        #cont div{
            text-align: center;
            padding: 15px;
        }
        #cont div:last-child input:first-child {
            margin-right: 50px;
        }
        #cont div:last-child input:last-child {
            margin-right: 30px;
        }
    </style>--%>





    <title>注册</title>
</head>
<body>


    <div   style="margin: 150px">
        <div id="register1">
            注册@wxt.com邮箱
        </div>
        <form class="form-horizontal" method="post"  name="myFrom" action="registerServlet">
        <div class="form-group" >
                <label for="inputEmailname3" class="col-sm-2 control-label"  >Name</label>
            <div class="col-sm-10" >
                <input type="text" class="form-control" id="inputEmailname3" placeholder="Name" style="width:300px"  name="Name">
            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" id="inputEmail3" placeholder="Email" style="width:300px" name="Email" pattern=".+@wxt.com">@wxt.com

            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="inputPassword3" placeholder="Password" style="width:300px" name="Password">
            </div>
        </div>
        <%--<div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <div class="checkbox">
                    <label>
                        <input type="checkbox"> Remember me
                    </label>
                </div>
            </div>
        </div>--%>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default" > 注册 </button>
            </div>
        </div>
    </div>
</form>


<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.18/assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.18/dist/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.18/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
<%
    String message = (String)request.getAttribute("message");
    if (message != null){
%>
<h4 style="color: red;text-align: center">出错信息:${message}</h4>
<%
    }
%>
</html>
