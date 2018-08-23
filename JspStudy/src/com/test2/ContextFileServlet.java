package com.test2;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet("/ContextFile")
public class ContextFileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String readFile="WEB-INF/testFile.txt";
		
		InputStream is= getServletContext().getResourceAsStream(readFile);
		BufferedReader br=new BufferedReader(new InputStreamReader(is));
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html><head><title>read File</title></head>");
		out.println("<body>");
		String str=br.readLine();
		while(str != null) {
			out.println(str+"<br>");
			str=br.readLine();			
		}
		br.close();
		
		out.println("</body>");
		out.println("</html>");
		
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

}
