<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		<h1>content</h1>
		<table>
			<tr>
				<th>writer</th><td>${board1.name }</td>
				<th>email</th><td>${board1.email }</td>
			</tr>
			
			<tr>
				<th>date</th><td><fmt:formatDate value="${board1.writedate}" /></td>
				<th>readcount</th><td>${board1.readcount}</td>
			</tr>
			
			<tr>
				<th>title</th><td colspan="3">${board1.title}</td>
			</tr>
			
			<tr>
				<th>content</th><td colspan="3"><pre>${board1.content }</pre></td>
			</tr>
			
		</table>
		<br>
		<input type="button" value="update" 
		onclick="open_win('Board1Servlet?command=board1_check_pass_form&num=${board1.num}','update')">
		<input type="button" value="delete"
		onclick="open_win('Board1Servlet?command=board1_check_pass_form&num=${board1.num}','delete')">
		<input type="button" value="list" 
		onclick="location.href='Board1Servlet?command=board1List'">
		<input type="button" value="enrollment"
		onclick="location.href='Board1Servlet?command=board1_write_form'">
			</div>	
</body>
</html>