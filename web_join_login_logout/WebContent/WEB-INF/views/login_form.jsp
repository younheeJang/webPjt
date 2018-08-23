<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title>login form page</title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<h1>login form page</h1>
<c:if test="${empty sessionScope.loginId }">
<form action="login.do" method="post">
ID:<input type="text" name="id"><br>
PW:<input type="password" name="pw"><br>
<input type="submit" value="login"> 
</form>
</c:if>

<c:if test="${not empty sessionScope.loginId}">
<h1>already logined</h1>
<a href="logout.do">[logout]</a>
</c:if>

</body>
</html>