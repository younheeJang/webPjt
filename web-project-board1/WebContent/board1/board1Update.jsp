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
<h1>update</h1>
<form action="Board1Servlet" name="frm" method="post">
<input type="hidden" name="command" value="board1_update">
<input type="hidden" name="num" value="${board1.num }">
<table>
<tr>
<th>writer</th>
<td><input type="text" size="12" name="name" value="${board1.name }">
*</td>
</tr>

<tr>
<th>pass</th>
<td><input type="password" size="12" name="pass">*
</td>
</tr>

<tr>
<th>email</th>
<td><input type="text" size="40" maxlength="50" name="email" value="${board1.email }">
</td>
</tr> 

<tr>
<th>title</th>
<td><input type="text" size="70" name="title" value="${board1.title }">
</td>
</tr>

<tr>
<th>content</th>
<td><textarea cols="70" rows="15" name="content">${board1.content }</textarea>
</td>
</tr>
</table>
<br>
<input type="submit" value="enrollment" onclick="return board1Check()">
<input type="reset" value="re-write">
<input type="button" value="list" onclick="location.href='Board1Servlet?command=board1List'"> 
</form>
</div>
</body>
</html>