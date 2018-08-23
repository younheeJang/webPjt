 
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>MEMBER INFOR MODIFICATION FORM</title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/script.js"></script>
</head>
<body>
 <form action="member.mdo?cmd=modifyProc" name="regForm" method="post">
  <table border="1">
   <tr>
    <td colspan="2" align="center">input modifying infor</td>
   </tr>
   <tr>
    <td align="center">ID:</td>
    <td>
     <input type="hidden" name="id" value="${id }">
     <c:out value="${id }" />
    </td>
   </tr>
   <tr>
    <td>PASS:</td>
    <td>
     <input type="password" name="pass"
     value="${pass }" />
    </td>
   </tr>
   <tr>
    <td>re-PASS:</td>
    <td>
     <input type="password" name="repass"
     value="${pass }" />
    </td>
   </tr>
   <tr>
    <td align="center">NAME:</td>
    <td>
     <input type="hidden" name="name" value="${name }">
     <c:out value="${name }" />
    </td>
   </tr>
   <tr>
    <td align="center">TEL:</td>
    <td>
    <select name="phone1">
     <option value="02"${phone1 eq '02' ? "selected='selected' " :'null' }>02</option>
     <option value="010"${phone1 eq '010' ? "selected='selected' " :'null' }>010</option>
     <option value="016"${phone1 eq '016' ? "selected='selected' " :'null' }>016</option>
    </select>&nbsp;&nbsp;
    <input type="text" name="phone2" size="5" value="${phone2 }">
    <input type="text" name="phone3" size="5" value="${phone3 }"> 
    </td> 
   </tr>
   <tr>
    <td align="center">EMAIL:</td>
    <td>
     <input type="text" name="email" 
     value="${email }" />
    </td>
   </tr> 
   <tr>
    <td align="center">addressNum</td>
    <td>
     <input type="text" name="zipcode" 
     value="${zipcode }" />
     <input type="button" name="search" 
     onclick="zipCheck()" />
    </td>
   </tr>
   <tr>
    <td align="center">address1</td>
    <td>
     <input type="text" name="address1" 
     value="${address1 }" />
    </td>
   </tr>
   <tr>
    <td align="center">address2</td>
    <td>
     <input type="text" name="address2" 
     value="${address2 }" />
    </td>
   </tr>
   <tr>
    <td colspan="2" align="center">
    <input type="button" value="MODIFICATION"
    onClick="updateCheck()" />&nbsp;&nbsp;
    <input type="button" value="CANCEL"
    onclick="javascript:window.location='member.mdo?cmd=login'" />
    </td>   
   </tr>
   
  </table>
 </form>
</body>
</html>
 
 