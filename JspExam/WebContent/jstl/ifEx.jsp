<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title></title>
</head>
<body>
<c:if test="${param.type eq 'guest' }">
welcome and plz join us to our HP
</c:if>
<c:if test="${param.type eq 'member' }">
welcome again
we promise more benefit and service ever
</c:if>
<c:if test="${param.type eq 'manager' }">
administration group
</c:if>
</body>
</html>