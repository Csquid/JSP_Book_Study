package pack.chap01;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "unit06", value="/unit06")
public class unit06_radio_form extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        String gender = request.getParameter("gender");
        String chk_mail = request.getParameter("chk_mail");
        String content = request.getParameter("content");

        PrintWriter out = response.getWriter();
        out.print("<html><body>");

        out.println("당신이 입력한 정보입니다. <br>");
        out.println("gender: ");
        out.println(gender);
        out.println("<br> chk_mail: ");
        out.println(chk_mail);
        out.println("<br> register greet: ");
        out.println(content);

        //자바 스크립트로 이전 페이지로 이동하는 링크를 만들어 줌
        out.println("<br><a href='javascript:history.go(-1)'> 다시</a>");
        out.print("</body></html>");
        out.close();
    }
}
