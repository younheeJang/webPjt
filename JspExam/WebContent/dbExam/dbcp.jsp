<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DBCP CONNECTION</title>
</head>
<body>
<%
Context init=new InitialContext();
DataSource ds=(DataSource)init.lookup("java:comp/env/jdbc/mydb");
Connection con = ds.getConnection();
out.println("database connection success");

%>
</body>
</html>