<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>memberOut</title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/script.js"></script>
</head>
<body onload="begin()">
<form action="deleteProc.jsp" name="myForm" method="post"
onsubmit="return checkIt()">
	<table width="260" border="1" align="center">
	<tr>
	<td colspan="2" align="center"><b>memberOut</b></td>
	</tr>
	<tr>
	<td width="150"><b>input pw</b></td>
	<td width="110"><input type="password" name="pass" size="15" /></td>
	</tr>
	<tr>
	<td colspan="2" align="center">
	<input type="submit" value="memberOut" />
	<input type="button" value="CANCEL" 
	onclick="javascript:window.location='login.jsp'" />
	</td>
	</tr>
	
	</table>

</form>
</body>
</html>