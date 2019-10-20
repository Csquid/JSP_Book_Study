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
<!-- unit07_checkbox_form -->
<form action="/unit07" method="get">
    <input type="checkbox" name="item" value="신발">신발
    <input type="checkbox" name="item" value="가방">가방
    <input type="checkbox" name="item" value="벨트">벨트 <br>
    <input type="checkbox" name="item" value="모자">모자
    <input type="checkbox" name="item" value="시계">시계
    <input type="checkbox" name="item" value="쥬얼리">쥬얼리 <br>
    <input type="submit" value="submit">
</form>
</body>
</html>
