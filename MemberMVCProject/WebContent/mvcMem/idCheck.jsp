<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mvcMem.model.StudentDAO"  %>
<%-- <jsp:useBean id="dao" class="memberone.StudentDAO" /> --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/script.js"></script>
</head>
<body bgcolor="#FFFFCC">
<br>
<center>
<b>${id }</b>
<c:if test="${check eq true }">
is already exists.<br><br>
</c:if>
<c:if test="${check ne true }">
is could be used.<br><br>
</c:if>
<a href="#" onclick="javascript:self.close()">close</a>
</center>
</body>
</html> 