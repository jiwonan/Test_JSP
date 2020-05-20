import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Start_03")
public class Start_03 extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=utf-8");
		
		try {
			PrintWriter out = resp.getWriter();
			
			out.println("<html>");
			out.println("<head><title>서블릿 연습</title></head>");
			out.println("<body>");
			out.println("<font color='red' size=6>안녕하세요? Servlet</font>");
			out.println("</body>");			
			out.println("</html>");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req,resp);
	}
}