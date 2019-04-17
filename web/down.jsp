<%@ page import="java.util.List" %>
<%@ page import="java.io.File" %><%--
  Created by IntelliJ IDEA.
  User: bighero
  Date: 2019/4/2
  Time: 下午1:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"

%>
<% List<File> apks = (List<File>) request.getAttribute("apks");%>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <!-- 引入 Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <title>APK Down</title>
  </head>

  <div align="center" style="width: 100%;align-content: center;text-align:center;margin:0 auto">
    <div style="height: 50px; background: #000;: ">
      <p style="color: antiquewhite;font-size: 25px;padding-top: 8px">APK 安装</p>
    </div>
    <table class="table table-striped">
      <thead>
      <tr>
        <th>名称</th>
        <th>操作</th>
      </tr>
      </thead>
      <tbody>
      <% for (File apk : apks) {
      %>
      <tr>
        <td> <%=apk.getName() %></td>
        <td><a href="/source/<%=apk.getName() %>" >下载</a></td>
      </tr>
      <%} %>

      </tbody>
    </table>
  </div>
  </body>
</html>
