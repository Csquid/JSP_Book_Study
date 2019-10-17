package pack;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "lifeCycle", value="/lifeCycle")
public class unit02_lifeCycle extends HttpServlet {
    int initCount = 1;
    int doGetCount = 1;
    int destroyCount = 1;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        System.out.println("init 메소드는 첫 요청만 호출됨 :" + initCount++);
    }
    public void destroy() {
        System.out.println("destory 메소드는 톰캣이 종료될 때만 호출됨: " +  destroyCount++);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet 메소드가 요청대 마다 호출됨: " + doGetCount++);
    }
}
