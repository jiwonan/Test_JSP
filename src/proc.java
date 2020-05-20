import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/proc")
public class proc extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet()메소드 호출");
		doPost(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost() 호출");
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("irum");
		String id = request.getParameter("aid");
		String pass = request.getParameter("amho");
		String hobby[] = request.getParameterValues("hobby");
		String major = request.getParameter("major");
		String over = request.getParameter("overwatch");
		
		PrintWriter out = response.getWriter();
		out.println("<html><head></head>");
		out.println("<body>");
		
		out.println("이름 : "+ name +"<br>");
		out.println("ID : "+ id +"<br>");
		out.println("비밀번호 : "+ pass +"<br>");
		out.println("취미 : "+ Arrays.toString(hobby) +"<br>");
		out.println("과목 : "+ major +"<br>");
		out.println("좋아하는 영웅 : "+ over +"<br>");
		
		out.println("</body>");
		out.println("</html>");
	}
		
}
