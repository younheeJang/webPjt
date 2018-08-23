package login;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;




public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		try {
			HttpSession session=request.getSession(false);
			if(session != null) {
				String sessionId=session.getId();
				System.out.println("session id:"+sessionId);
				String user=(String)session.getAttribute("user");
				
				out.println("<html>");
				out.println("<body>");
				
					out.println("<table border='1' width='300'>");
						out.println("<tr>");
						out.println("<td>"+user+"</td>");
						out.println("</tr>");
						out.println("<tr>");
						out.println("<td align='center'>");
						out.println("<a href='#'>member infor</a>");
						out.println("<a href='Logout'>logout</a>");
						out.println("</td>"); 
						out.println("</tr>");						
					out.println("</table>");
				
				out.println("</html>");
				out.println("</body>");
			}else {
				out.println("<html>");
				out.println("<body>");
					
					out.println("<form method='post' action='LoginCheck'>");
					out.println("<table border='1' width='300'>");
					
					out.println("<tr>");
					out.println("<th width='100'>id</th>");
					out.println("<td width='200'>&nbsp;"+"<input type='text' name='id'></td>");
					out.println("</tr>");
					
					out.println("<tr>");
					out.println("<th width='100'>password</th>");
					out.println("<td width='200'>&nbsp;"+"<input type='password' name='pwd'></td>");
					out.println("</tr>");
						
					out.println("<tr>");
					out.println("<td align='center' colspan='2'>");
					out.println("<input type='button' value='join'>");
					out.println("<input type='submit' value='login'>");
					out.println("</td>");
					out.println("</tr>");

					out.println("</form>");
					out.println("</table>");
				
				out.println("</body>");
				out.println("</html>");
				
				
				
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

}
