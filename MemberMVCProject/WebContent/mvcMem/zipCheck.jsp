<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- coding accept parameter's val, get data from database, and show -->
<!-- 1 -->
<%-- <jsp:useBean id="dao" class="memberone.StudentDAO" /> --%>


<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Search for addressNum</title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/script.js"></script>
<!-- 2 -->
</head>
<body bgcolor="#FFFFCC">
 <center>
  <b>Searching addressNum</b>
  <form action="member.mdo?cmd=zipCheck"
   method="post" name="zipForm">
   <table>
    <tr>
     <td>Dong:<input name="dong" type="text" /> <input
      type="button" value="Search" onclick="dongCheck()" />
     </td>
    </tr>
   </table>
    <input type="hidden" name="check" value="n">
  
  </form>
  <table>
   <!-- 3 -->
   <!-- coding for show data got -->
  <c:if test="${check eq 'n' }">
   <c:if test="${zipcodeList.isEmpty() }">
    <tr><td align="center">nothing searched</td></tr>
   </c:if>
    
   <c:if test="${!zipcodeList.isEmpty() }">
     <tr><td align="center"><br />
     ※ after seach, click addressNum below, end input process automatically.
     </td></tr> 
  <c:forEach var="vo" items="${zipcodeList }">
  <tr>
  <td align="left">
   <a href="javascript:sendAddress('${vo.getZipcode() }',
     '${vo.getSido() }','${vo.getGugun() }','${vo.getDong() }','${vo.getRi()}','${vo.getBunji() }')">    
     ${vo.getZipcode() }&nbsp;${vo.getSido() }&nbsp;
     ${vo.getGugun() }&nbsp;${vo.getDong() }&nbsp;${vo.getRi()}&nbsp;${vo.getBunji() }
     </a>
     
  </td>
  </tr>
  </c:forEach>
   </c:if>
</c:if>
  

   <tr>
    <td align="center">
    <a href="javascript:this.close()">close</a>
    </td>
   </tr>
  </table>
 </center>
</body>
</html> 
