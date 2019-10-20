<%--
  Created by IntelliJ IDEA.
  User: lake0019
  Date: 2019-10-20
  Time: 오후 4:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    int global_cnt = 0;
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        int local_cnt = 0;

        out.print("<br> local_cnt: ");
        out.print(++local_cnt);

        out.print("<br> global_cnt: ");
        out.print(++global_cnt);
    %>
</body>
</html>
