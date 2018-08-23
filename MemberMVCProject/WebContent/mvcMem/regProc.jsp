<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/script.js"></script>
</head>
<body bgcolor="#FFFFCC">

<c:set var="flag" value="${flag }" />
<br><br>
<center>
<c:choose>
<c:when test="${flag }">
<b>welcome to join us</b>
<a href="member.mdo?cmd=login">login</a>
</c:when>
<c:otherwise>
<b>re-input plz</b>
<a href="member.mdo?cmd=regForm">re-input</a>
</c:otherwise>
</c:choose>
</center>
</body>
</html>