<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>membership join page</title>
</head>
<body>
<form action="add.jsp" method="post">
 	<table border="1" width="300">
 		<tr>
 			<td width="100">name</td>
 			<td width="200">
 				<input type="text" name="name" size="25">
 			</td>
 		</tr>
 		<tr>
 			<td width="100">email</td>
 			<td width="200">
 				<input type="text" name="email" size="25">
 			</td>
 		</tr>
 		<tr>
 			<td width="100">phone</td>
 			<td width="200">
 				<input type="text" name="phone" size="25">
 			</td>
 		</tr>
 		<tr>
 			<td colspan="2" align="center">
 			<input type="submit" value="join">
 		</tr>
</table>
</form>
</body>
</html>