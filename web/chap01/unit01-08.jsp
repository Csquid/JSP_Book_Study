<%--
  Created by IntelliJ IDEA.
  User: lake0019
  Date: 2019-10-20
  Time: 오전 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/unit08" method="get">
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
