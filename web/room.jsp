<%@ page import="java.util.List" %>
<%@ page import="java.io.File" %>
<%@ page import="com.apk.down.model.ResultModel" %><%--
  Created by IntelliJ IDEA.
  User: bighero
  Date: 2019/4/2
  Time: ����1:14
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
    <!-- ����3��meta��ǩ*����*������ǰ�棬�κ��������ݶ�*����*������� -->
    <!-- ���� Bootstrap -->
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
        <th>����</th>
        <th>��������</th>
        <th>������</th>
        <th>��ʼʱ��</th>
        <th>����ʱ��</th>
        <th>�λ���</th>
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
