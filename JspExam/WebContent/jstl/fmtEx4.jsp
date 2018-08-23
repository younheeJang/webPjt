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
<c:set var="now" value="<%=new java.util.Date() %>" />
Korea KST:
<fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full" /><br><br>
UK GMT:
<fmt:timeZone value="GMT">
<fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full" />
</fmt:timeZone>
<br><br>
<%
String[] ids = java.util.TimeZone.getAvailableIDs();
for(String idsS : ids){
	out.println(idsS+"<br>");
	
}
%>
</body>
</html>