<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
    <%
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=null;
    Statement stmt=null;
    ResultSet rs=null;
    
    String id="",
    			passwd="",
    			name="",
    			mem_num1="",
    			mem_num2="",
    			e_mail="",
    			phone="",
    			zipcode="",
    			address="",
    			job="";
    
    int count=0;
    
    String url="jdbc:oracle:thin:@localhost:1521:orcl";
    String user="scott";
    String password="tiger";
    String sql="select * from tempmember";
    
    try{
    	con=DriverManager.getConnection(url, user, password);
    	stmt=con.createStatement();
    	rs=stmt.executeQuery(sql);
    	%>
    			
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP DATABASE CONNECT</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<h2>SCRIPT DATABASE CONNECT</h2>
<h2>MEMBER INFOR</h2>

<table bordercolor="#0000ff" border="1">
<tr>
<td><strong>ID</strong></td>
<td><strong>PASSWD</strong></td>
<td><strong>NAME</strong></td>
<td><strong>MEM_NUM1</strong></td>
<td><strong>MEM_NUM2</strong></td>
<td><strong>E_MAIL</strong></td>
<td><strong>PHONE</strong></td>
<td><strong>ZIPCODE/ADDRESS</strong></td>
<td><strong>JOB</strong></td>
</tr>
<%
if(rs != null){
while(rs.next()){
	id=rs.getString("id");
	passwd=rs.getString("passwd");
	name=rs.getString("name");
	mem_num1=rs.getString("mem_num1");
	mem_num2=rs.getString("mem_num2");
	e_mail=rs.getString("e_mail");
	phone=rs.getString("phone");
	zipcode=rs.getString("zipcode");
	address=rs.getString("address");
	job=rs.getString("job");
%>
<tr>
<td><%=id %></td>
<td><%=passwd %></td>
<td><%=name %></td>
<td><%=mem_num1 %></td>
<td><%=mem_num2 %></td>
<td><%=e_mail %></td>
<td><%=phone %></td>
<td><%=zipcode %>/<%=address %></td>
<td><%=job %></td>
<%
count++;
}	
}
%>
</tr>	
</table><br>
total records:<%=count %>
<%	
}catch(SQLException se){
	se.printStackTrace();
}catch(Exception e){
	e.printStackTrace();
}finally{
	if(rs != null)try{rs.close();}catch(SQLException se){}
	if(stmt != null)try{stmt.close();}catch(SQLException se){}
	if(con != null)try{con.close();}catch(SQLException se){}
}

%>


</body>
</html>