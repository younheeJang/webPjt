<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>exception occured...!</title>
</head>
<body>
	<table border='1'>
		<tr>
			<td>exception occured during processing your request to our server,<br> <br>
		
				we're telling you so sorry for your inconveniece,<br> <br>
		
				and we'll be back ASAP with page clear from error like this...<br> <br>
			</td>
		</tr>
		
		<tr>		
			<td>	error type:<b><%=exception.getClass().getName()%></b> </td>
		</tr>
		<tr>
		<td>error message:<b><%=exception.getMessage()%></b></td>
		</tr>
	</table>
</body>
</html>