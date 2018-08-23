<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="view/color.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>bulletain board</title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/script.js"></script>
</head>
<%
 int num = 0, ref = 1, step = 0, depth = 0;
  try{
   if(request.getParameter("num") != null){
    num=Integer.parseInt(request.getParameter("num"));
    ref=Integer.parseInt(request.getParameter("ref"));
    step=Integer.parseInt(request.getParameter("step"));
    depth=Integer.parseInt(request.getParameter("depth"));
   }
   
  
%> 
<body bgcolor="<%=bodyback_c%>">
	<center>
		<b>write</b>
	</center>
	<br>
	<form action="writeProc.jsp" name="writeForm" method="post"
		onsubmit="return writeSave()">
	
<input type="hidden" name="num" value="<%=num%>">
   <input type="hidden" name="ref" value="<%=ref%>">
    <input type="hidden" name="step" value="<%=step%>">
     <input type="hidden" name="depth" value="<%=depth%>"> 
     
		<table width="400" border="1" cellpadding="0" cellspacing="0"
			align="center" bgcolor="<%=bodyback_c%>">
			<tr>
				<td align="right" colspan="2" bgcolor="<%=value_c%>"><a
					href="list.jsp">list</a></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=value_c%>">name</td>
				<td width="330"><input type="text" size="12" maxlength="12"
					name="writer"></td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=value_c%>" align="center">email</td>
				<td width="330"><input type="text" size="12" maxlength="30"
					name="email"></td>
			</tr>
			 <tr>
    <td width="70" bgcolor="<%=value_c%>" align="center">title</td>
    <td width="330">
    <%if(request.getParameter("num")==null){%>
    <input type="text" size="50" maxlength="50"
     name="subject">
     <%}else{ %>
     <input type="text" size="50" maxlength="50"
     name="subject" value="[reply]">
     <%} %>
     </td>
   </tr> 
			<tr>
				<td width="70" bgcolor="<%=value_c%>" align="center">content</td>
				<td width="330"><textarea rows="13" cols="50" name="content"></textarea>
				</td>
			</tr>
			<tr>
				<td width="70" bgcolor="<%=value_c%>" align="center">pass</td>
				<td width="330"><input type="password" size="10" maxlength="10"
					name="pass"></td>
			</tr>
			<tr>
				<td colspan="2" bgcolor="<%=value_c%>" align="center"><input
					type="submit" value="write"> <input type="reset"
					value="re-write"> <input type="button" value="list"
					onclick="window.location='list.jsp'"></td>
			</tr>
		</table>
	</form>
<%}catch(Exception e){} %>
</body>
</html>
