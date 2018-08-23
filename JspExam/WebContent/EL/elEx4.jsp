<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setAttribute("name", "hong gil dong");
    %>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title></title>
</head>
<body>
uri request:${pageContext.request.requestURI}<br>
request's name attribute:${requestScope.name}<br>
code parameter:${param.code}
</body>
</html>