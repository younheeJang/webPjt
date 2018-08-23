 
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ page import="logon.LogonDBBean"%>
<%
 request.setCharacterEncoding("utf-8");
%>
<%
 String id = request.getParameter("id");
 String passwd = request.getParameter("passwd");
 LogonDBBean manager = LogonDBBean.getInstance();
 int check = manager.userCheck(id, passwd);
 //1 -1 0
 if (check == 1) {
 session.setAttribute("memId", id);
  response.sendRedirect("sessionLogInConfirm.jsp");
  
 }else if(check==0){
  %>  
 <!-- passwd not same  -->
 <script type="text/javascript">
alert("passwd not same");
history.go(-1);
</script>
  <%
 }else{
  %>
  <!-- id not exists -->
  <script type="text/javascript">
alert("id not exists");
history.go(-1);
</script>
  <%} %>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
</body>
</html>
 
 
 
 
 
 
 
 