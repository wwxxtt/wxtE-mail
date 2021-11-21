<%--
  Created by IntelliJ IDEA.
  User: 86135
  Date: 2021/11/3
  Time: 21:35
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
    <style>
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
    </style>
</head>
<body>
<div style="margin: 150px">
    <jsp:include page="login1.jsp"/>

    <div id="cont" >


        <form action="loginServlet?type=trueLogin" method="post">
            <div>
                <label for="userName">
                    邮箱：
                </label>
                <input type="text" name="userName" id="userName" pattern=".+@wxt.com"/>
            </div>
            <div>
                <label for="userPwd">
                    密码：
                </label>
                <input type="password" name="userPwd" id="userPwd"/><br>
                <span id="msg" style="font-size:12px;color: red"></span><br/>
                <button type="submit" id="loginBtn">登录</button>
                <button type="button" id="zhuce" onclick="{location.href='/register.jsp'}">注册</button>
            </div>
        </form>
            <%--<h4 style="color: red;text-align: center">错误信息:${message}</h4>--%>
        <%
            String message = (String)request.getAttribute("message");
            if (message != null){
        %>
        <h4 style="color: red;text-align: center">出错信息:${message}</h4>
        <%
            }
        %>
        <%--<a href="loginServlet">Hello Servlet</a><br>--%>




    </div>
</div>
</body>

<%--<script type="text/javascript" src="../js/jquery-3.4.1.js"></script>
<script type="text/javascript">

    $("#loginBtn").click(function (){
        var uname = $("#userName").val();
        var upwd = $("#userPwd").val();
        if(isEmpty(uname)){
            $("#msg").html("用户账户不可为空!");
            return;
        }
        if(isEmpty(upwd)){
            $("#msg").html("用户密码不可为空!");
            return;
        }
        $("#loginForm").submit();
    });

    function  isEmpty(str){
        if (str == null || str.trim() == ""){
            return true;
        }
        return false;
    }


</script>--%>

</html>
