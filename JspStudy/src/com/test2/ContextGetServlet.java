package com.test2;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet("/ContextGet")
public class ContextGetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=(String)getServletContext().getAttribute("name");
		int age=(Integer)getServletContext().getAttribute("age");
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head><title>application of attribute values in setting and getting them</title></head>");
		out.println("<body>");
		out.println("name:"+name+"<br>");
		out.println("age:"+age+"<br>");
		out.println("</body>");
		out.println("</html>");
		System.out.println("Extension");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

}
