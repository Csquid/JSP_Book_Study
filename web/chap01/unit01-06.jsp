<%--
  Created by IntelliJ IDEA.
  User: lake0019
  Date: 2019-10-20
  Time: 오전 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- unit06_radio_form -->
<form action="/unit06" method="get">
    <label>gender: </label>
    <input type="radio" id="man" name="gender" value="man" checked> man
    <input type="radio" id="woman" name="gender" value="woman"> woman <br><br>

    <label>Email: </label>
    <input type="radio" id="yes" name="chk_mail" value="yes"> 수신
    <input type="radio" id="no" name="chk_mail" value="no"> 거부 <br><br>

    <label for="content"> 간단한 가입 인사를 적어주세요 ^o^ </label> <br>

    <textarea id="content" name="content" rows="3" cols="35"></textarea> <br>
    <input type="submit" value="submit">
</form>
</body>
</html>
