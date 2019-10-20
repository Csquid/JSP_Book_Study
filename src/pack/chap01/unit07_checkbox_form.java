package pack.chap01;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "unit07", value="/unit07")
public class unit07_checkbox_form extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");

        PrintWriter out = response.getWriter();
        out.print("<html><body>");

        String items[] = request.getParameterValues("item");

        if(items == null) {
            out.print("선택한 항복이 없습니다.");
        } else {
            out.println("당신이 선택한 항목입니다. <br>");

            for(String item : items) {
                out.print(item + " ");
            }
        }

        out.println("<br><a href='javascript:history.go(-1)'> 다시</a>");
        out.print("</body></html>");
        out.close();
    }
}
