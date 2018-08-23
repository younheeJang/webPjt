 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="color.jsp" %>
    <%
    
   try{ 
    if(session.getAttribute("memId")==null){
      response.sendRedirect("sessionMemberLogIn.jsp");
     }
   }catch(Exception e){}
    
    %>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>check member as using cookie </title>
<link href="style.css" rel="stylesheet" type="text.css">
</head>
<body bgcolor="<%=bodyback_c %>>">
<form action="sessionLogOut.jsp" method="post">
<table width="300" border="1" align="center">
 <tr>
  <td align="center" bgcolor="<%=value_c%>">
   <b><%=session.getAttribute("memId") %></b>login.
  </td>
 </tr>
 
 <tr>
  <td align="center" bgcolor="<%=value_c %>">
   <input type="submit" value="logout">
  </td>
 </tr>
</table>
</form>
</body>
</html>
 