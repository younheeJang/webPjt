<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ include file="color.jsp"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>member check using cookie</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="<%=bodyback_c%>">
 <form action="cookieMemberLogInOk.jsp" method="post">
  <table width="300" border="1" align="center">
   <tr>
    <td bgcolor="<%=title_c%>" colspan="2">
    <div align="center">login</div>
    </td>
   </tr>
   
   <tr>
   <td width="100" bgcolor="<%=title_c%>">id</td>
   <td width="200" bgcolor="<%=title_c%>"> 
    <input type="text" name="id">
   </td>
   </tr>
   
   <tr>
   <td width="100" bgcolor="<%=title_c%>">pass</td>
   <td width="200" bgcolor="<%=title_c%>"> 
    <input type="password" name="passwd">
   </tr>
   
   
   <tr>
   <td colspan="2" align="center">
    <input type="submit" value="login">
    &nbsp;
    <input type="reset" value="re-write">  
   </td>
   
   </tr>
  </table>
 </form>
</body>
</html>
 
 
 
 
 
 