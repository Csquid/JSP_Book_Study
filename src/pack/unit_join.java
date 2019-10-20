package pack;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "unit_join", value ="/unit_join")
public class unit_join extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Test");
        response.setContentType("text/html; charset=UTF-8");

        String userRealName = request.getParameter("realName");
        String[] securityNumber = new String[]{
                request.getParameter("securityNumberFirst"),
                request.getParameter("securityNumberSecond")
        };

        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String[] email = new String[]{
                request.getParameter("emailFirst"),
                request.getParameter("emailSecond")
        };

        String zipCode = request.getParameter("zipCode");
        String address = request.getParameter("address");
        String handPhoneNumber = request.getParameter("handPhoneNumber");
        String job = request.getParameter("job");

        PrintWriter out = response.getWriter();
        out.print("<html><body>");
        out.println("당신이 입력한 정보입니다.");
        out.println("이름: <b>" + userRealName + "</b><br>");
        out.println("주민 번호: <b>" + securityNumber[0] + " - " + securityNumber[1] + "</b> <br>");
        out.println("아이디: <b>" + userName + "</b><br>");
        out.println("패스워드: <b>" + password + "</b><br>");
        out.println("이메일: <b>" + email + "</b></br>");
        out.println("우편번호: <b>" + zipCode + "</b><br>");
        out.println("주소: <b>" + address + "</b><br>");
        out.println("핸드폰 번호: <b>" + handPhoneNumber + "</b><br>");
        out.println("직업: <b>" + job + "</b><br>");
        out.print("</body></html>");
        out.close();
    }

}
