<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="memberone.*"%>
<%-- <jsp:useBean id="dao" class="memberone.StudentDAO" /> --%>
<%
StudentDAO dao = StudentDAO.getInstance();
%> 
    <%
    String id=request.getParameter("id");
    String pass=request.getParameter("pass");
	int check=dao.loginCheck(id, pass);
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<%
if(check==1){
	session.setAttribute("loginID", id);
	response.sendRedirect("login.jsp");
}else if(check==0){
%>
<script type="text/javascript">
alert("error in pass");
history.go(-1);
</script>
<%
} else{
%>
<script type="text/javascript">
alert("error in pass");
history.go(-1);
</script>
<%} %>
</body>
</html>