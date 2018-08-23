<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String loginID=(String)session.getAttribute("loginID");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Log in</title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<%
if(loginID != null){
%>
<table width="300" border="1">
	<tr>
		<td colspan="3" align="center">
		<%=loginID %>, welcome
		</td>
	</tr>
	<tr>
		<td align="center" width="100">
			<a href="modifyForm.jsp">memberInfor renewal</a>		
		</td>
		<td align="center" width="100">
			<a href="deleteForm.jsp">member out</a>		
		</td>
		<td align="center" width="100">
			<a href="logout.jsp">logout</a>		
		</td>
	</tr>
</table>
<%}else{ %>
	<form action="loginProc.jsp" method="post">
		<table width="300" border="1">
			<tr>
				<td colspan="2" align="center">member login</td>
			</tr>
			<tr>
				<td width="100" align="right">ID:</td>
				<td width="200">&nbsp;&nbsp;
					<input type="text" name="id" size="20" />
				</td>
			</tr>
			<tr>
				<td width="100" align="right">pass:</td>
				<td width="200">&nbsp;&nbsp;
					<input type="password" name="pass" size="20" />
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="login" />&nbsp;&nbsp;
					<input type="button" value="join" onClick="javascript:window.location='regForm.jsp' " /> 
				</td>
			</tr>
		</table>
	</form>
</body>
<%} %>
</html>