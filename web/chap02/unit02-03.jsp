<%--
  Created by IntelliJ IDEA.
  User: lake0019
  Date: 2019-10-20
  Time: 오후 4:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    String str = "안녕하세요!";
    int a = 5, b = -5;

    public int abs(int n) {
        if (n < 0) {
            n = -n;
        }
        return n;
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        out.print(str + "<br>");
        out.print(a + "의 절대값: " + abs(a) + "<br>");
        out.print(b + "의 절대값: " + abs(b) + "<br>");

    %>
</body>
</html>
