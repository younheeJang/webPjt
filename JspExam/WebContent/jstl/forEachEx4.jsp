<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*" %>

<%

  HashMap<String, Object> mapData =
                                new HashMap<String, Object>();
       //    Date today = new Date();
             mapData.put("name", "홍길동");
             mapData.put("today", new java.util.Date());
%>

<c:set var="intArray" value="<%=new int[] {1,2,3,4,5}%>" />
<c:set var="map" value="<%=mapData %>" />


<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

<h3>1부터 100까지 홀수의 합계</h3>

<c:set var="sum" value="0"  /> 
<!--  sum = 0 -->
<c:forEach begin="1" end="100" step="2" var="i">

     <c:set var="sum" value="${sum+i }" />
 
 </c:forEach>

   결과 : ${sum }<br>
   
   
 <h3> int 형 배열 </h3>  
   
   <c:forEach var="i" items="${intArray }" begin="2" end="4" >
   [${i }]
   </c:forEach>
   
   <h3> Map </h3>
   
   <c:forEach var="i" items="${map }">
   ${i.key } = ${i.value }<br><br>
   </c:forEach>

</body>
</html>




 