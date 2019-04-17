<%@ page import="java.util.List" %>
<%@ page import="java.io.File" %>
<%@ page import="com.apk.down.model.ResultModel" %><%--
  Created by IntelliJ IDEA.
  User: bighero
  Date: 2019/4/2
  Time: 下午1:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java"

%>
<%
List<ResultModel> rooms = (List<ResultModel>) request.getAttribute("rooms");%>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <!-- 引入 Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <title>ROOM</title>
  </head>

  <div align="center" style="width: 100%;align-content: center;text-align:center;margin:0 auto">
    <div style="height: 50px; background: #000;: ">
      <p style="color: antiquewhite;font-size: 25px;padding-top: 8px">ROOM</p>
    </div>
    <table class="table table-striped">
      <thead>
      <tr>
        <th>日期</th>
        <th>会议主题</th>
        <th>会议室</th>
        <th>开始时间</th>
        <th>结束时间</th>
        <th>参会人</th>
      </tr>
      </thead>
      <tbody>
      <% for (ResultModel room  : rooms) {
      %>
      <tr>
        <td> <%=room.date %></td>
        <td> <%=room.topic %></td>
        <td> <%=room.name %></td>
        <td> <%=room.start_time %></td>
        <td> <%=room.end_time %></td>
        <td> <%= room.users %></td>
      </tr>
      <%} %>

      </tbody>
    </table>
  </div>
  </body>
</html>
