<%--
  Created by IntelliJ IDEA.
  User: 86135
  Date: 2021/11/14
  Time: 12:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        /*
Author: @mrjopino
Name: Design Register
Description: Design register crazy!
*/
        @import url(https://fonts.googleapis.com/css?family=Titan+One);
        @import url(http://weloveiconfonts.com/api/?family=fontawesome);
        @import url(https://meyerweb.com/eric/tools/css/reset/reset.css);

        body {
            background: #1b1e24;
            background-image:-webkit-linear-gradient(right,#1b1e24,#1b1e24 50%,#1b1e24);
            background-image:-moz-linear-gradient(right,#1b1e24,#1b1e24 50%,#1b1e24);
            background-image:-o-linear-gradient(right,#1b1e24,#1b1e24 50%,#1b1e24);
            background-image:-ms-linear-gradient(right,#1b1e24,#1b1e24 50%,#1b1e24);
            background-image:linear-gradient(to left,#1b1e24,#1b1e24 50%,#1b1e24);
            text-align: center;
            font-family: Arial, sans-serif;
            font-size: 14px;
            line-height: 1.5em;
        }

        [class*="fontawesome-"]:before {
            font-family: 'FontAwesome', sans-serif;
        }

        input {
            font-size: 1em;
            line-height: 1.5em;
            margin: 0;
            padding: 0;
            -webkit-appearance: none;
        }

        .Registro {
            margin: 50px auto;
            width: 242px;
        }

        .Registro span {
            color: hsl(5, 50%, 57%);
            display: block;
            height: 48px;
            line-height: 48px;
            position: absolute;
            text-align: center;
            width: 36px;
        }

        .Registro input {
            border: none;
            height: 48px;
            outline: none;
        }

        .Registro input[type="text"] {
            background-color: #fff;
            border-top: 2px solid #2c90c6;
            border-right: 1px solid #000;
            border-left: 1px solid #000;
            border-radius: 5px 5px 0 0;
            -moz-border-radius: 5px 5px 0 0;
            -webkit-border-radius: 5px 5px 0 0;
            -o-border-radius: 5px 5px 0 0;
            -ms-border-radius: 5px 5px 0 0;
            color: #363636;
            padding-left: 36px;
            width: 280px;
        }

        .Registro input[type="email"] {
            background-color: #fff;
            border-top: 2px solid #2c90c6;
            border-right: 1px solid #000;
            border-left: 1px solid #000;
            border-radius: 5px 5px 0 0;
            -moz-border-radius: 5px 5px 0 0;
            -webkit-border-radius: 5px 5px 0 0;
            -o-border-radius: 5px 5px 0 0;
            -ms-border-radius: 5px 5px 0 0;
            color: #363636;
            padding-left: 36px;
            width: 280px;
        }

        .Registro input[type="password"] {
            background-color: #fff;
            border-top: 2px solid #2c90c6;
            border-right: 1px solid #000;
            border-bottom: 2px solid #2c90c6;
            border-left: 1px solid #000;
            border-radius: 0 0 5px 5px;
            -moz-border-radius: 0 0 5px 5px;
            -webkit-border-radius: 0 0 5px 5px;
            -o-border-radius: 0 0 5px 5px;
            -ms-border-radius: 0 0 5px 5px;
            color: #363636;
            margin-bottom: 20px;
            padding-left: 36px;
            width: 280px;/*204*/
        }

        .Registro input[type="submit"] {
            background-color: #2c90c6;
            border: 1px solid #2c90c6;
            border-radius: 15px;
            -moz-border-radius: 15px;
            -webkit-border-radius: 15px;
            -ms-border-radius: 15px;
            -o-border-radius: 15px;
            color: #fff;
            font-weight: bold;
            line-height: 48px;
            text-align: center;
            text-transform: uppercase;
            width: 240px;
        }

        .Registro input[type="submit"]:hover {
            background-color: #2c70c6;
            box-shadow: 2px 2px 20px  #2c90c6, #fff 0 -1px 2px;
        }

        .texto {
            color: #2c90c6;
            font-size: 40px;
            margin: 2% auto;
            text-align: center;
            font-family: 'Titan One';
            text-shadow: 1px 2px 1px  rgba(0,0,0,.5);
            padding-top: 40px;
        }

        p:hover {
            text-shadow: 2px 2px 20px  #2c90c6, #fff 0 -1px 2px;
        }
    </style>


    <title>用户注册</title>
</head>
<body>
<!--
Design register pure CSS
Developed by @mrjopino
-->
    <p class="texto">Registro</p>
        <div class="Registro">
            <form method="post"  action="../registerServlet" name="myFrom">
                <%--<span class="fontawesome-user"></span>--%>
                    <input type="text" required placeholder="请输入用户昵称：" autocomplete="off"  name="Name" >
                <%--<span class="fontawesome-envelope-alt"></span>--%>
                    <input type="email" id="email" required placeholder="请输入注册邮箱：(...@wxt.com)" autocomplete="off" pattern=".+@wxt.com" name="Email" >
                <%--<span class="fontawesome-lock"></span>--%>
                    <input type="password" id="password" required placeholder="请输入邮箱密码:" autocomplete="off" name="Password">
                <input type="submit" value="Registrar" title="Registra tu cuenta">
            </form>
    </div>
</body>
</html>
