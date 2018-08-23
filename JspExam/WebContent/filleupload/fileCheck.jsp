<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
String subject= request.getParameter("subject");
String filename1= request.getParameter("filename1");
String filename2= request.getParameter("filename2");
String origfilename1= request.getParameter("origfilename1");
String origfilename2= request.getParameter("origfilename2");
%>

<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title></title>
</head>
<body>
uploader:<%=name %><br>
title:<%=subject %><br>
<%-- file1:<a href="/upload/<%=filename1%>"><%=origfilename1%></a>
file2:<a href="/upload/<%=filename2%>"><%=origfilename2%></a> --%>
file1:<a href="filedown.jsp?filename=<%=filename1%>"><%=origfilename1%></a>
file2:<a href="filedown.jsp?filename=<%=filename2%>"><%=origfilename2%></a> 
</body>
</html>