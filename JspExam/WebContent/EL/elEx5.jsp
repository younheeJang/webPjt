<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title></title>
</head>
<body>
<form action="elEx5.jsp" method="post">
name:<input type="text" name="name" value="${param['name']}">
<input type="submit" value="confirm"> 
</form>
<p>name:${param.name}</p>
</body>
</html>