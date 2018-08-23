<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
 <%@ page import="memberone.*"%>
<%-- <jsp:useBean id="dao" class="memberone.StudentDAO" /> --%>
<%
StudentDAO dao = StudentDAO.getInstance();
%> 
<jsp:useBean id="vo" class="memberone.StudentVO" />
<jsp:setProperty property="*" name="vo"/>
<%
boolean flag=dao.memberInsert(vo);
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
<br><br>
<center>
<%
if(flag){
	out.println("<b>congratulations for join</b><br>");
	out.println("<a href='login.jsp'>login</a>");
}else{
	out.println("<b>congratulations for join</b><br>");
	out.println("<a href='login.jsp'>login</a>");
}
%>
</center>
</body>
</html>