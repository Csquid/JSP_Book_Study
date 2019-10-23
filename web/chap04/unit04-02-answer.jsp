<%--
  Created by IntelliJ IDEA.
  User: KMCU
  Date: 2019-10-23
  Time: 오전 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        b {
            font-size: 16pt;
        }
    </style>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");
    out.println("이름: <b>" + name + "</b><br>");

    String gender = request.getParameter("gender");
    out.println("성별: ");
    if(gender.equals("mail")) {
        out.println("<b>남자</b><br>");
    } else {
        out.println("<b>여자</b><br>");
    }

    String seasonArr[] = request.getParameterValues("season");
    out.println("당신이 좋아하는 계절은");
    for(String season: seasonArr) {
        int n = Integer.parseInt(season);
        switch(n) {
            case 1: out.println("<b> 봄 </b> 입니다.");
                break;
            case 2: out.println("<b> 여름 </b> 입니다.");
                break;
            case 3: out.println("<b> 가을 </b> 입니다.");
                break;
            case 4: out.println("<b> 겨울 </b> 입니다.");
                break;
        }
    }
%>

<br>
<b><a href='javascript:history.go(-1)'>다시 </a> </b>
</body>
</html>