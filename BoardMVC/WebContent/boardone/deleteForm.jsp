<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="view/color.jsp"%>
<%
 int num = Integer.parseInt(request.getParameter("num"));
 String pageNum = request.getParameter("pageNum");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<link href="../css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/script.js"></script>
<body bgcolor="<%=bodyback_c%>">
 <center>
  <b>delete message</b><br>
  <form action="deleteProc.jsp?pageNum=<%=pageNum%>" name="delForm"
   method="post" onsubmit="return deleteSave()">
   <table border="1" align="center" cellspacing="0" cellpadding="0"
    width="360">
    <tr height="30">
     <td align="center" bgcolor="<%=value_c%>"><b>input pass</b></td>
    </tr>
    <tr height="30">
     <td align="center">pass: <input type="password" name="pass"
      size="8" maxlength="12"> <input type="hidden" name="num"
      value="<%=num%>">
     </td>
    </tr>
    <tr height="30">
     <td align="center" bgcolor="<%=value_c%>">
     <input type="submit" value="delete">
     <input type="button" value="view list"
      onclick="document.location.href='list.jsp?pageNum=<%=pageNum%>">
     </td>
    </tr>
   </table>
  </form>
 </center>

</body>
</html>