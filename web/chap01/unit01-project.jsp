<%--
  Created by IntelliJ IDEA.
  User: lake0019
  Date: 2019-10-19
  Time: 오후 6:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/unit_join" method="post" name="joinForm">
        <table>
            <tbody>
            <tr>
                <td>Name</td>
                <td><input name="realName" type="text"></td>
            </tr>
            <tr>
                <td>Social Security Number</td>
                <td><input name="securityNumberFirst" type="text">&nbsp; - &nbsp;<input name="securityNumberSecond" type="text"></td>
            </tr>
            <tr>
                <td>ID</td>
                <td><input id="userName" name="userName" type="text"></td>
            </tr>
            <tr>
                <td>password</td>
                <td><input id="password" name="password" type="password">
                </td>
            </tr>
            <tr>
                <td>Password Confirm</td>
                <td><input id="passwordConfirm" name="passwordConfirm" type="password"></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input id="emailFirst" name="emailFirst" type="text">
                    @
                    <input id="emailSecond" name="emailSecond" type="text">
                </td>
            </tr>
            <tr>
                <td>Zip Code</td>
                <td><input id="zipCode" name="zipCode" type="text"></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><input id="addressFirst" name="addressFirst" type="text">
                    &nbsp;
                    <input id="addressSecond" name="addressSecond" type="text"></td>
            </tr>
            <tr>
                <td>HandPhone Number</td>
                <td><input id="handPhoneNumber" name="handPhoneNumber" type="text"></td>
            </tr>
            <tr>
                <td>Job</td>
                <td>
                    <select id="job" name="job" size='4'>
                        <option value="student">student</option>
                        <option value="computer">computer</option>
                        <option value="service">service</option>
                        <option value="press">press</option>
                        <option value="soldier">soldier</option>
                        <option value="education">education</option>
                    </select>
                </td>
            </tr>
            </tbody>
        </table>
        <input onclick="return check();" type="submit">
    </form>
<script>
    function check() {
        if (document.joinForm.realName.value === '') {
            alert("이름을 적어주세요.");
            document.joinForm.realName.focus();

            return false;
        } else if (document.joinForm.securityNumberFirst.value === '' || document.joinForm.securityNumberSecond.value === '') {
            alert("주민번호를 적어주세요.");
            if (document.joinForm.securityNumberFirst.value === '')
                document.joinForm.securityNumberFirst.focus();
            else
                document.joinForm.securityNumberSecond.focus();


            return false;
        } else if(document.joinForm.userName.value === '') {
            alert("아이디를 입력해주세요");
            document.joinForm.userName.focus();

            return false;
        } else if (document.joinForm.password.value === '' || document.joinForm.passwordConfirm.value === '') {
            alert("패스워드를 입력해주세요");
            if (document.joinForm.password.value === '')
                document.joinForm.password.focus();
            else
                document.joinForm.passwordConfirm.focus();

            return false;
        } else if (document.joinForm.emailFirst.value === '' || document.joinForm.emailSecond.value === '') {
            alert("이메일을 입력해주세요.");
            if (document.joinForm.emailFirst.value === '')
                document.joinForm.emailFirst.focus();
            else
                document.joinForm.emailSecond.focus();


            return false;
        } else if (document.joinForm.zipCode.value === '') {
            alert("우편 번호를 적어주세요.");
            document.joinForm.zipCode.focus();

            return false;
        } else if(document.joinForm.addressFirst.value === '' || document.joinForm.addressSecond.value === '') {
            alert("주소를 적어주세요.")
            if(document.joinForm.addressFirst.value === '')
                document.joinForm.addressFirst.focus();
            else
                document.joinForm.addressSecond.focus();

            return false;
        }else if (document.joinForm.handPhoneNumber.value === '') {
            alert("핸드폰 번호를 적어주세요.");
            document.joinForm.handPhoneNumber.focus();

            return false;
        } else if (document.joinForm.job.value === '') {
            alert("직업을 선택해주세요.");
            document.joinForm.job.focus();

            return false;
        } else {}

        if(isNaN(document.joinForm.securityNumberFirst.value) || isNaN(document.joinForm.securityNumberSecond.value)) {
            alert("숫자를 입력해주세요.");
            if(isNaN(document.joinForm.securityNumberFirst.value))
                document.joinForm.securityNumberFirst.focus();
            else
                document.joinForm.securityNumberSecond.focus();

            return false;
        }

        if(document.joinForm.password.value !== document.joinForm.passwordConfirm.value) {
            alert("패스워드가 다릅니다. 다시 적어주세요.");

            document.joinForm.password.value = "";
            document.joinForm.passwordConfirm.value = "";

            document.joinForm.password.focus();

            return false;
        }
    }
</script>


</body>
</html>
