<%@ page import="cn.aa.userinbox.FileService" %>
<%@ page import="cn.aa.userinbox.FileServiceImpl" %>
<%@ page import="cn.aa.userinbox.Userbox" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 86135
  Date: 2021/11/10
  Time: 22:34
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


    <script>
        function jump(v){
            /*alert(v);*/
            window.location.href="/InboxtextServlet?v="+v;
            /*window.location.href="../usermain/userinboxtext.jsp";*/
        }
    </script>
    <script type="text/javascript">
        function jump1(v){
            /*var f=document.forms[0];
            f.action="/DeleteServlet";
            f.submit(v);*/
            window.alert("确认删除？")
            /*alert("删除成功");*/
            window.location.href="../DeleteServlet?v=?"+v;
        }
    </script>


    <title>Title</title>
</head>
    <body>
    <%
        FileService fs= new FileServiceImpl();
        ArrayList<Userbox> arr = fs.getAllinfo();

        request.setAttribute("arr",arr);
        /*System.out.println(arr);*/
    %>
        <div>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>编号</th>
                        <th>是否阅读</th>
                        <th>发件人</th>
                        <th>主题</th>
                        <th>查看内容</th>
                        <th>删除邮件</th>
                    </tr>
                </thead>
                <tbody >
                <c:forEach items="${arr}" var="item">
                    <tr >
                        <td>1</td>
                        <td>2</td>
                        <td>${item.getAcceptuser()}</td>
                        <td>${item.getTheme()}}}</td>
                        <td><input type="button" value="查看" onclick="jump(${item.getZizeng()})"></td>
                        <td><input type="submit" value="删除" onclick="jump1(${item.getZizeng()})"></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
