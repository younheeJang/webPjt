<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="memberone.*" %>
<%-- <jsp:useBean id="dao" class="memberone.StudentDAO" /> --%>
<%
StudentDAO dao = StudentDAO.getInstance();
%>
<%
 String id=request.getParameter("id");
 boolean check=dao.idCheck(id);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/script.js"></script>
</head>
<body bgcolor="#FFFFCC">
<br>
<center>
<b><%=id %></b>
<%
 if(check){
  out.println("already exists<br><br>");
 }else{
  out.println("could be used<br><br>");
 }
%>
<a href="#" onclick="javascript:self.close()">close</a>
</center>
</body>
</html>