<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title></title>
</head>
<body>
Number:<fmt:formatNumber value="123456.789" type="number" /><br><br>
Currency:<fmt:formatNumber value="123456.789" type="currency" /><br><br>
Percent:<fmt:formatNumber value="123456.789" type="percent" /><br><br>
Pattern=".0":<fmt:formatNumber value="123456.789" pattern=".0" /><br><br>
<c:set var="now" value="<%=new java.util.Date() %>" />
<c:out value="${now }" />
date:<fmt:formatDate value="${now }" type="date" /><br><br>
time:<fmt:formatDate value="${now }" type="time" /><br><br>
both:<fmt:formatDate value="${now }" type="both" /><br><br>
</body>
</html>