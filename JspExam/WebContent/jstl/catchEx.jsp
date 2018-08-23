<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title></title>
</head>
<body>
<c:catch var="ex">
name parameter value = <%=request.getParameter("name") %>
<br>
<%
if(request.getParameter("name").equals("test")){
%>
${param.name } is test.
<%} %>
</c:catch>
<br>

<c:if test="${ex != null }">
exceptiion occurs <br>
${ex }

</c:if>
</body>
</html>