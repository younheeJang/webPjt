package mvc.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.action.Action;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;

//@WebServlet("/ControlServlet")
public class ControlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");
		  String cmd = request.getParameter("cmd");
		  if (cmd != null) {
		   ActionFactory factory = ActionFactory.getInstance();
		   Action action = factory.getAction(cmd);
		   ActionForward af = action.execute(request, response);
		   if (af.isRedirect()) {
		    response.sendRedirect(af.getUrl());
		   } else {
		    RequestDispatcher rd = request.getRequestDispatcher(af.getUrl());
		    rd.forward(request, response);
		   }
		  } else {
		   response.setContentType("text/html;charset=utf-8");
		   PrintWriter out = response.getWriter();
		   out.println("<html>");
		   out.println("<head><title>Error</title></head>");
		   out.println("<body>");
		   out.println("<h4>not properly request</h4>");
		   out.println("<h4>http://localhost:9090/mvc/test.do?cmd=request keyword</h4>");
		   /*http://localhost:9090/mvc/test.do?cmd=index->proper request
		    http://localhost:9090/mvc/test.do ->not properly requested*/
		   out.println("</body>");
		   out.println("</html>");
		  }		
	}

}
