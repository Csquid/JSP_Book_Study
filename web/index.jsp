<%@ page import="java.io.IOException" %><%--
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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    <style>
        .monkey-dropdown {
            display: inline;
            margin-right: 10px;
        }

        .row {
            margin-left: 0px;
        }
    </style>
</head>
<body>
<div style="margin-top: 30px; margin-left: 30px; padding: 20px;">
    <h2 style="margin-top: 0px;">JSP&Servlet</h2>
    <p style="COLOR: #007bff; margin-bottom: 8px;"><b>ただ 信じた 道を まっすぐに 進むだけさ</b></p>
    <div class="row">
        <div class="dropdown monkey-dropdown ">
            <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-toggle="dropdown">Chap01
                <span class="caret"></span>
            </button>
            <div class="dropdown-menu">
                <a href="chap01/unit01-01.jsp" class="dropdown-item">unit01</a>
                <a href="chap01/unit01-02.jsp" class="dropdown-item">unit02</a>
                <a href="chap01/unit01-03.jsp" class="dropdown-item">unit03</a>
                <a href="chap01/unit01-04.jsp" class="dropdown-item">unit04</a>
                <a href="chap01/unit01-05.jsp" class="dropdown-item">unit05</a>
                <a href="chap01/unit01-06.jsp" class="dropdown-item">unit06</a>
                <a href="chap01/unit01-07.jsp" class="dropdown-item">unit07</a>
                <a href="chap01/unit01-08.jsp" class="dropdown-item">unit08</a>
                <a href="chap01/unit01-project.jsp" class="dropdown-item">unit_project</a>
            </div>
        </div>
        <div class="dropdown monkey-dropdown ">
            <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-toggle="dropdown">Chap02
                <span class="caret"></span>
            </button>
            <div class="dropdown-menu">
                <%!
                    JspWriter out;

                    private String setNumber(int nNum) throws IOException {
                        if (nNum >= 10 ? false : true) {
                            //out.print('0' + nNum);
                            return "0" + nNum;
                        } else {
                          return Integer.toString(nNum);
                        }
                    }
                %>
                <%
                    for (int i = 1; i <= 7; i++) {
                      out.println("<a href='chap02/unit02-" + setNumber(i) + ".jsp' class='dropdown-item'> unit" + setNumber(i) + "</a>");
                    }
                %>
                <a href="chap02/unit02-08-main.jsp" class="dropdown-item">unit08</a>
            </div>
        </div>
    </div>

</div>
</body>
</html>
