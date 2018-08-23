<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
          <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%
    int score = 85;
    request.setAttribute("score", score);
    %>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title></title>
</head>
<body>
<c:choose>
<c:when test="${score ge 90 }">
	your score 'A'
</c:when>
<c:when test="${score ge 80 }">
	your score 'B'
</c:when>
<c:when test="${score ge 70 }">
	your score 'C'
</c:when>
<c:when test="${score ge 60 }">
	your score 'D'
</c:when>
<c:otherwise>
your score 'F'

</c:otherwise>
</c:choose>
</body>
</html>