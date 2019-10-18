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
  <form method="get" action="unit04" name="frm">
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

  <!-- unit05_login_form -->
  <form method="get" action="unit05">
    <label for="userid">ID : </label>
    <input type="text" name="id" id="userid"> <br>

    <label for="userpw">PW : </label>
    <input type="password" name="pwd" id="userpw"> <br>
    <input type="submit" value="login">
  </form>

  <!-- unit06_radio_form -->
  <form action="unit06" method="get">
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

  <!-- unit07_checkbox_form -->
  <form action="unit07" method="get">
    <input type="checkbox" name="item" value="신발">신발
    <input type="checkbox" name="item" value="가방">가방
    <input type="checkbox" name="item" value="벨트">벨트 <br>
    <input type="checkbox" name="item" value="모자">모자
    <input type="checkbox" name="item" value="시계">시계
    <input type="checkbox" name="item" value="쥬얼리">쥬얼리 <br>
    <input type="submit" value="submit">
  </form>

  <form action="unit08" method="get">
        <span style="float: left; margin-right: 20px;">
            <label for="job">직업</label>
            <select name="job" id="job" size="1">
                <option value="">select</option>
                <option value="student">student</option>
                <option value="computer">computer</option>
                <option value="service">service</option>
                <option value="press">press</option>
                <option value="soldier">soldier</option>
                <option value="education">education</option>
            </select>
        </span>

    <label for="interest" style="float: left;">관심 분야</label>
    <select name="interest" id="interest" size='5' multiple="multiple">
      <option value="espresso">espresso</option>
      <option value="roastion">roastion</option>
      <option value="green_beans">green_beans</option>
      <option value="beans">beans</option>
      <option value="hand_drip">hand_drip</option>
    </select>
    <br><br>
    <input type="submit" value="submit" style="float:left; margin-right: 50px">
  </form>

  <script>
    function check() {
      if(document.frm.id.value === "") {
        alert("아이디를 입력해주세요.");
        document.frm.id.focus();
        return false;
      } else if(document.frm.age.value === "") {
        alert("나이를 입력해주세요.");
        document.frm.age.focus();
        return false;
      } else if(isNaN(document.frm.age.value)) {
        alert("숫자를 적어주세요.");
        document.frm.age.focus();
        return false;
      }
    }
  </script>
  </body>
</html>
