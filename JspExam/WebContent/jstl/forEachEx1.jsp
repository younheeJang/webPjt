<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
              <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%
    String[] movieList={"TAITAN", "GOGILLA", "SPARUTACOOSE"};
    request.setAttribute("movieList", movieList);
    %>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title></title>
</head>
<body>
popular movie list:
<ul>
<c:forEach var="movie" items="${movieList }">
<li>${movie }</li>


</c:forEach>
</ul>
</body>
</html>