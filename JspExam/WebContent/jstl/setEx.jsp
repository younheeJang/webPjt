<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <jsp:useBean id="vo" class="jstl.MemberVO" />



<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title></title>
</head>
<body>

<c:set target="${vo}" property="name" value="hong gil dong"></c:set>

<c:set target="${vo}" property="email">
hong@naver.com
</c:set>

<c:set var="age" value="30" />
<c:set target="${vo}" property="age" value="${age}" />

<h3>member infor</h3>
<ul>
<li>name:${vo.name}</li>
<li>email:${vo.email}</li>
<li>age:${vo.age}</li>

</ul>
</body>
</html>