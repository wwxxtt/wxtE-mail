<%@ page import="com.example.demo11.beans.enity.AdminDO" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.18/favicon.ico">
    <link rel="canonical" href="https://getbootstrap.com/docs/3.4/examples/dashboard/">


    <%--<script>
        // 计算页面的实际高度，iframe自适应会用到
        function calcPageHeight(doc) {
            var cHeight = Math.max(doc.body.clientHeight, doc.documentElement.clientHeight)
            var sHeight = Math.max(doc.body.scrollHeight, doc.documentElement.scrollHeight)
            var height  = Math.max(cHeight, sHeight)
            return height
        }
        //根据ID获取iframe对象
        var ifr = document.getElementById('main')
        ifr.onload = function() {
            //解决打开高度太高的页面后再打开高度较小页面滚动条不收缩
            ifr.style.height='0px';
            var iDoc = ifr.contentDocument || ifr.document
            var height = calcPageHeight(iDoc)
            if(height < 850){
                height = 850;
            }
            ifr.style.height = height + 'px'
        }
    </script>--%>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>


    <title>wxt.com</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.18/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.18/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.18/examples/dashboard/dashboard.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.18/assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.18/assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <%
                String uname =(String) session.getAttribute("username");
            %>>
            <a class="navbar-brand" href="#">欢迎<%=uname%>!<%
                System.out.print(uname);%></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Dashboard</a></li>
                <li><a href="#">Settings</a></li>
                <li><a href="#">Profile</a></li>
                <li><a href="#">Help</a></li>
            </ul>
            <form class="navbar-form navbar-right">
                <input type="text" class="form-control" placeholder="Search...">
            </form>
        </div>

    </div>

</nav>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li  class="nav-active"><a href="" >First </a></li>
                <li ><a href="../usermain/userInbox.jsp"  target="test">收件箱</a></li>
                <li><a href="https://www.baidu.com/" target="test">已发送</a></li>
                <li><a href="https://blog.csdn.net/qq_36362654/article/details/83474720" target="test">草稿箱</a></li>
            </ul>
            <ul class="nav nav-sidebar">
                <li><a href="../usermain/SendEmail.jsp" target="test">写邮件</a></li>
                <li><a href="">Nav item again</a></li>
                <li><a href="">One more nav</a></li>
                <li><a href="">Another nav item</a></li>
                <li><a href="">More navigation</a></li>
            </ul>
            <ul class="nav nav-sidebar">
                <li><a href="">Nav item again</a></li>
                <li><a href="">One more nav</a></li>
                <li><a href="/login.jsp" >用户退出<%session.invalidate();%></a></li>
            </ul>
        </div>
    </div>
    <div align="right">
        <iframe src="../usermain/fistpage.jsp" name="test" width="1260px" height="666.3px"></iframe>
    </div>

    <%--<div class="main_page">
        <iframe scrolling="no" id="main" name="main" frameborder="0"  src="../hhh/Fail-first.html" style="min-height:600px;width:100%;height:100%;"></iframe>
    </div>--%>

</div>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.18/assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.18/dist/js/bootstrap.min.js"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
<script src="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.18/assets/js/vendor/holder.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="https://cdn.jsdelivr.net/npm/@bootcss/v3.bootcss.com@1.0.18/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
<%--<script type="text/javascript">
    function changeFrameHeight(){undefined
        var iframe= document.getElementById("my_iframe");
        iframe.height= 0;   //这里必须要先设置成0，不然后面会有问题
        iframe.height=iframe.contentWindow.document.body.scrollHeight;
    }

    //监听浏览器窗口变换，这里采用jquery，不然在ie中会出现问题
    $(window).resize(function() {
        changeFrameHeight();
    });

</script>--%>
<script id="bian">
    $('#nav').find('li').click(function() {
        // 为当前点击的导航加上高亮，其余的移除高亮
        $(this).addClass('nav-active').siblings('li').removeClass('nav-active');
    });
</script>

</html>
