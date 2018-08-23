<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>bulletin board</title>
<link rel="stylesheet" type="text/css" href="css/board1.css">
<script type="text/javascript" src="script/board1.js"></script>
</head>
<body>
<div id="wrap" align="center">
		<h1>enrollment</h1>
		<form name="frm" method="post" action="Board1Servlet">
			<input type="hidden" name="command" value="board1_write">
			<table>
			<tr>
			<th>writer</th>
			<td><input type="text" name="name">*</td>
			</tr>
			
			<tr>
			<th>pass</th>
			<td><input type="password" name="pass">*</td>
			</tr>
			
			<tr>
			<th>email</th>
			<td><input type="text" name="email"></td>
			</tr>
			
			<tr>
			<th>title</th>
			<td><input type="text" size="70" name="title">*</td>
			</tr>
			
			<tr>
			<th>content</th>
			<td><textarea cols="70" rows="15" name="content"></textarea></td>
			</tr>
			</table>
			<br>
			<input type="submit" value="enrollment" onclick="return board1Check()">
			<input type="reset" value="re-write">
			<input type="button" value="list" 
			onclick="location.href='Board1Servlet?command=board1List'">	
		</form>
	</div>
</body>
</html>