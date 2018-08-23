 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<c:forTokens var="car" 
items="lamborghini, perari, audi, benz, bmw, rangeover" delims=",">
car maker:<c:out value="${car }" /><br>
</c:forTokens>

<c:forTokens var="tokens" items="☆ㅁㅁ★☆ㅁㅁ★ ☆ㅁㅁ★☆ㅁㅁ ☆ㅁㅁ★☆ㅁ ☆ㅁㅁ★☆ ☆ㅁㅁ★ ☆ㅁㅁ ☆ㅁ ☆ " delims=" ">
<c:out value="${tokens }" /><br>
</c:forTokens>
<c:forTokens var="tokens" items="☆ ☆ㅁ ☆ㅁㅁ ☆ㅁㅁ★ ☆ㅁㅁ★☆ ☆ㅁㅁ★☆ㅁ ☆ㅁㅁ★☆ㅁㅁ ☆ㅁㅁ★☆ㅁㅁ★" delims=" ">
<c:out value="${tokens }" /><br>
</c:forTokens>
</body>
</html> 