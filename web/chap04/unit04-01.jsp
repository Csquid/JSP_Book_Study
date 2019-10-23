<%--
  Created by IntelliJ IDEA.
  User: KMCU
  Date: 2019-10-23
  Time: 오전 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    Context Path: <%= request.getContextPath() %> <br>
    Method Style: <%= request.getMethod() %> <br>
    Request URI : <%= request.getRequestURI() %> <br>
    Request URL : <%= request.getRequestURL() %> <br>
    Server Name : <%= request.getServerName() %> <br>
    Protocol    : <%= request.getProtocol() %> <br>
</body>
</html>
