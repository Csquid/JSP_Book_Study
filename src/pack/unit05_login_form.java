package pack;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "unit05", value="/unit05")
public class unit05_login_form extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String id = request.getParameter("id");
        String pwd = request.getParameter("pwd");

        PrintWriter out = response.getWriter();
        out.print("<html><body>");
        out.println("당신이 입력한 정보입니다. <br>");
        out.println("아이디: ");
        out.println(id);
        out.println("<br> 비밀번호: ");
        out.println(pwd);

        //자바 스크립트로 이전 페이지로 이동하는 링크를 만들어 줌
        out.println("<br><a href='javascript:history.go(-1)'> 다시</a>");
        out.print("</body></html>");
        out.close();
    }
}