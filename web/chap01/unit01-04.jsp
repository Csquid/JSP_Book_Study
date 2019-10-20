<%--
  Created by IntelliJ IDEA.
  User: lake0019
  Date: 2019-10-20
  Time: 오전 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- unit04_param -->
<form method="get" action="/unit04" name="frm">
    <table>
        <tr>
            <td>ID: </td>
            <td><input type="text" name="id"></td>
        </tr>
        <tr>
            <td>나 &nbsp; 이: </td>
            <td><input type="text" name="age"></td>
        </tr>
        <tr>
            <td><input type="submit" value="전송"onclick="return check()"></td>
        </tr>
    </table>
</form>

</body>
</html>
