package bbs;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.util.*;

@WebServlet("/VisitList") 
public class VisitList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		try {
			out.println("<html>");
			out.println("<head><title>list for visitors' record</title></head>");
			out.println("<body>");
			StringBuffer sql = new StringBuffer();
			sql.append("select NO, WRITER, MEMO, REGISDATE ");
			sql.append("from visit ");
			sql.append("order by no desc");

			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			String user = "scott";
			String password = "tiger";
			
				try {
					Class.forName("oracle.jdbc.driver.OracleDriver");
					con=DriverManager.getConnection(url, user, password);
					pstmt=con.prepareStatement(sql.toString());
					rs=pstmt.executeQuery();
					
					while(rs.next()) {
						int no=rs.getInt("no");
						String writer=rs.getString("writer");
						String memo=rs.getString("memo");
						java.sql.Date regisDate=rs.getDate("regisDate");
						
						out.println("<table width=500 border=1 align=center>");
						out.println("<tr>");
						out.println("<th width=50>number</th>");
						out.println("<td width=50 align=center>" + no + "</td>");
						out.println("<th width=70>writer</th>");
						out.println("<td width=180 align=center>" + writer + "</td>");
						out.println("<th width=50>date</th>");
						out.println("<td width=100 align=center>" + regisDate + "</td>");
						out.println("</tr>");

						out.println("<tr>");
						out.println("<th width=50>content</th>");
						out.println("<td colspan=5>&nbsp;" + "<textarea rows=3 cols=50>" + memo + "</textarea></td>");
						out.println("</tr>");

						out.println("</table>");
						out.println("<p>");
					}
					
				} catch (SQLException se) {
					se.printStackTrace();
				} catch (ClassNotFoundException ce) {
					ce.printStackTrace();
				}finally {
							
				try {
					if (pstmt != null)
						pstmt.close();			
				}catch (SQLException se) {
					se.printStackTrace();
				}
				try {
					if (con != null)
						con.close();			
				}catch (SQLException se) {
					se.printStackTrace();
				}
				}
				out.println("<p align=center>"+"<a href=/bbs/write.html>write</a></p>");
				out.println("</body>");
				out.println("</html>");
		}finally {
			out.close();
		}
		}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

}
