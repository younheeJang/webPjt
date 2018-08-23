<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
        <fmt:requestEncoding value="utf-8" />
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title></title>
</head>
<body>
parameter:<c:out value="${param.id }" />
<form action="fmtEx2.jsp" method="post">
<input type="text" name="id">
<input type="submit" value="confirm"> 

</form>
</body>
</html>