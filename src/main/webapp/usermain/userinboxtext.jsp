<%@ page import="cn.aa.userinbox.FileService" %>
<%@ page import="cn.aa.userinbox.FileServiceImpl" %>
<%@ page import="cn.aa.userinbox.Userbox" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 86135
  Date: 2021/11/13
  Time: 14:58
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






    <title>Title</title>
</head>
<body>

    <%
        FileService fs= new FileServiceImpl();
        ArrayList<Userbox> arr1 = fs.getalltext();
        request.setAttribute("arr1",arr1);
        System.out.println("++++++++++++"+arr1);
        String accept = null;
        String theme = null;
        String text = null;

        for (int i = 0; i < arr1.size(); i++){
            System.out.println(arr1.get(i).getAcceptuser());
            accept = arr1.get(i).getAcceptuser();
        }

        for (int i = 0; i < arr1.size(); i++){
            System.out.println(arr1.get(i).getTheme());
            theme = arr1.get(i).getTheme();
        }

        for (int i = 0; i < arr1.size(); i++){
            System.out.println(arr1.get(i).getText());
            text = arr1.get(i).getText();
        }

    %>



    <div class="form-group">
        <label  class="col-sm-1 control-label">发件人:</label>
        <div class="col-sm-11">
            <input type="email" class="form-control" id="acceptuser" placeholder="收件人" pattern=".+@wxt.com" name="addressee" disabled="disabled" value="<%=accept%>">
        </div>
    </div>
    <div class="form-group">
        <label  class="col-sm-1 control-label">主题:</label>
        <div class="col-sm-11"  >
            <input type="text" class="form-control" id="theme" placeholder="主题" name="theme" disabled="disabled" value="<%=theme%>">
        </div>
        <div class="form-group">
            <label for="emailtxt" class="col-sm-1 control-label" id="emailtxt" >正文:</label>
            <div class="col-sm-11">
                <textarea autofocus="autofocus" id="emailtext" class="form-group" rows="15" cols="100" name="emailtext" disabled="disabled" ></textarea>
            </div>
        </div>
    </div>

</body>
<script>
    document.getElementById("emailtext").value="<%=text%>"
</script>
</html>
