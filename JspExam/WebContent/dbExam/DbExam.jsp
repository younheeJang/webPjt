<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
MEMBER TABLE
<table width="100%" border="1">
<tr>
	<td>ID</td>
	<td>PW</td>
	<td>NAME</td>
	<td>EMAIL</td>
</tr>
<%
Class.forName("com.mysql.jdbc.Driver");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=null;
Statement stmt=null;
ResultSet rs=null;

try{
	String jdbcDriver="jdbc:mysql://localhost:3306/mydb";
	String dbUser="root";
	String dbPass="1234";
	String sql="select * from mytable order by id";
	con=DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	stmt=con.createStatement();
	rs=stmt.executeQuery(sql);
	
	while(rs.next()){
		%>
		<tr>
		<td><%=rs.getString("id") %></td>
		<td><%=rs.getString("password") %></td>
		<td><%=rs.getString("name") %></td>
		<td><%=rs.getString("email") %></td>
		</tr>
		<%
	
		
	}
	
}catch(SQLException se){
	se.printStackTrace();
}finally{
	if(rs != null)try{rs.close();}catch(SQLException se){}
	if(stmt != null)try{stmt.close();}catch(SQLException se){}
	if(con != null)try{con.close();}catch(SQLException se){}
	
}


%>

</table>
</body>
</html>