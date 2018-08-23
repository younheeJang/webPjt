<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>bulletin board</title>
<link rel="stylesheet" type="text/css" href="css/board1.css">
<script type="text/javascript" src="script/board1.js"></script>
</head>
<body>
	<div align="center">
		<h1>pass check</h1>
		<form action="Board1Servlet" name="frm" method="get">
			<input type="hidden" name="command" value="board1_check_pass">
			<input type="hidden" name="num" value="${param.num }">
			<table style="width: 80%">
				<tr>
					<th>pass</th>
					<td><input type="password" name="pass" size="20"></td>
				</tr>
			</table>
			<br>
			<input type="submit" value="check" onclick="return passCheck()">
			<br>${message }
		</form>
	</div>
</body>
</html>