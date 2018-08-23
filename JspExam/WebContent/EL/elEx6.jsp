<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="elfunc" uri="/WEB-INF/tlds/el-functions.tld" %>
    <%
    java.util.Date today = new java.util.Date();
    request.setAttribute("today", today);
    %>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title></title>
</head>
<body>
today<b>${elfunc:dateFormat(today)}</b>
</body>
</html>