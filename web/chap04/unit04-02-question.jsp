<%--
  Created by IntelliJ IDEA.
  User: KMCU
  Date: 2019-10-23
  Time: 오전 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>설문 조사</h2>
<form action="unit04-02-answer.jsp" method="post">
    <table>
        <tr>
            <td>이름: </td>
            <td><input type="text" name="name" size="20"></td>
        </tr>
        <tr>
            <td>성별: </td>
            <td>
                <input type="radio" name="gender" value="male" checked> 남자
                <input type="radio" name="gender" value="female"> 여자
            </td>
        </tr>
        <tr>
            <td>좋아하는 계절: </td>
            <td>
                <input type="checkbox" name="season" value="1"> 봄
                <input type="checkbox" name="season" value="2" checked> 여름
                <input type="checkbox" name="season" value="3"> 가을
                <input type="checkbox" name="season" value="4"> 겨울
            </td>
        </tr>
        <tr align="center">
            <td><input type="submit" value="전송"></td>
            <td><input type="reset" value="취소"></td>
        </tr>
    </table>
</form>
</body>
</html>
