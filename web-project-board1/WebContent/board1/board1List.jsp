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
</head>
<body>
	<div id="wrap" align="center">
		<h1>list</h1>
		<table class="list">
			<tr>
				<td colspan="5" style="border: white; text-align: right">
				<a href="Board1Servlet?command=board1_write_form">enrollment</a>
				</td>
			</tr>
			<tr><th>num</th><th>title</th><th>writer</th><th>date</th><th>readcount</th></tr>
			<c:forEach var="board1" items="${board1List }">
				<tr class="record">
					<td>${board1.num }</td>
					<td>
						<a href="Board1Servlet?command=board1_view&num=${board1.num }">${board1.title }</a>
					</td>
					<td>${board1.name }</td>
					<td><fmt:formatDate value="${board1.writedate}" /></td>
					<td>${board1.readcount }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>