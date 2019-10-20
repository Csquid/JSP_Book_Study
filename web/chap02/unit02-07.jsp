<%--
  Created by IntelliJ IDEA.
  User: lake0019
  Date: 2019-10-20
  Time: 오후 5:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Calendar date = Calendar.getInstance();
    SimpleDateFormat today = new SimpleDateFormat("yyyy년 MM월 dd일");
    SimpleDateFormat now = new SimpleDateFormat("hh시 mm분 ss초");
    System.out.println(date);
%>
오늘은 <b><%=today.format(date.getTime())%> </b> 입니다. <br>
지금 시각은 <b> <%= now.format(date.getTime())%> </b> 입니다.
</body>
</html>
