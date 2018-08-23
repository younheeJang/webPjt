<%@page import="oracle.net.aso.s"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="memberone.*" %>
<%-- <jsp:useBean id="dao" class="memberone.StudentDAO" /> --%>
<%
StudentDAO dao = StudentDAO.getInstance();
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>memberOut</title>
</head>
<%
String id = (String)session.getAttribute("loginID");
String pass = request.getParameter("pass");
int check=dao.deleteMember(id, pass);
if(check==1){
	session.invalidate();	
%>
<meta http-equiv="Refresh" content="3;url=login.jsp">
<body>
<center>
	<font size="5" face="궁서체">
		member infor deleted...<br>
		Goodbye and Next you try to join,
		with lot consideration plz<br>
		move to loginPage in3s.
	</font>
</center>
<%}else{ %>
<script type="text/javascript">
	alert("pass is not right");
	history.go(-1);
</script>
<%} %>
</body>
</html>