<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>www.jb51.net jQuery导航条点击后高亮显示</title>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <style>
        #nav li {float: left; width: 80px; text-align: center; list-style-type: none;}
        .nav-active {background: #ff47a5;}
        .nav-active a {color: #fff;text-decoration:none}
    </style>
</head>
<body>
<ul id="nav">
    <li class="nav-active"><a href="#bian"  >首页</a></li>
    <li><a href="#bian"  >Page1</a></li>
    <li><a href="#bian"  >Page2</a></li>
    <li><a href="#bian"  >Page3</a></li>
    <li><a href="#bian"  >Page4</a></li>
</ul>
<textarea disabled="disabled" id="emailtxt">aaaaaaa</textarea>
<script id="bian">
    $('#nav').find('li').click(function() {
        // 为当前点击的导航加上高亮，其余的移除高亮
        $(this).addClass('nav-active').siblings('li').removeClass('nav-active');
    });
</script>
<script>
    document.getElementById("emailtxt").value="fdsalkj"<%--<%=text%>--%>
</script>
</body>
</html>
