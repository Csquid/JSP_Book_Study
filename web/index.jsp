<%--
  Created by IntelliJ IDEA.
  User: KMCU
  Date: 2019-10-17
  Time: 오후 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  * Servlet file 호출 * <br>
  <!-- MyServlet -->
  <a href="MyServlet">MyServlet 호출</a><br>

  <!-- unit01 -->
  <a href="unit">unit 호출</a><br>

  <!-- unit02_lifeCycle -->
  <a href="lifeCycle">Life Cycle 호출</a><br><br>

  <!-- unit03_form -->
  <form method="get" action="unit03">
    <input type="submit" value="get 방식으로 호출하기">
  </form>
  <form method="post" action="unit03">
    <input type="submit" value="post 방식으로 호출하기">
  </form>

  <!-- unit04_param -->
  <form method="get" action="unit04">
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
        <td><input type="submit" value="전송"></td>
      </tr>
    </table>
  </form>



  </body>
</html>
