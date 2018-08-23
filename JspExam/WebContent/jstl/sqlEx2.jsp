<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource dataSource="jdbc/mydb" var="ds" scope="application" />
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<!-- update field value -->
 <sql:update dataSource="jdbc/mydb">
 update tempmember set passwd=? where id=?
 
 <sql:param value="${3456 }" />
 <sql:param value="${'aaaa' }" />
 </sql:update>
 
  <sql:query var="rs" dataSource="jdbc/mydb">
 select * from tempmember
 </sql:query>
 <table border="1">
  <!-- print filed name -->
  
  <tr>
   <c:forEach var="columnName" items="${rs.columnNames}">
    <th><c:out value="${columnName}" /></th>
   </c:forEach>
  </tr>
  <c:forEach var="row" items="${rs.rowsByIndex }">
   <tr>
    <c:forEach var="column" items="${row }" varStatus="i">
     <td><c:if test="${column != null }">
       <c:out value="${column }" />
      </c:if></td>
    </c:forEach>
   </tr>
  </c:forEach>
 
 </table>
</body>
</html>
 