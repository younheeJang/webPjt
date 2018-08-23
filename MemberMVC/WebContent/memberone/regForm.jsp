<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register Form</title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/script.js"></script>
</head>
<body>
<form action="regProc.jsp" method="post" name="regForm">
 <table border="1">
  <tr>
   <td colspan="2" align="center">input infor to join</td>
  </tr>
  
  <tr>
   <td align="right">ID:</td>
   <td>
    <input type="text" name="id" />&nbsp;
    <input type="button" value="check dual val" 
    onClick="idCheck(this.form.id.value)" />
   </td>
  </tr>
  <tr>
   <td align="right">pass:</td>
   <td>
    <input type="password" name="pass" />
   </td>
  </tr>
 
  <tr>
   <td align="right">check pass:</td>
   <td>
    <input type="password" name="repass" />
   </td>
  </tr>
  <tr>
   <td align="right">name:</td>
   <td>
    <input type="text" name="name" />
   </td>
  </tr>
  <tr>
   <td align="right">tel:</td>
   <td>
    <select name="phone1">
     <option value="02">02</option>
     <option value="010">010</option>
     <option value="011">011</option>
     <option value="016">016</option>
     <option value="017">017</option>
     <option value="018">018</option>
     <option value="019">019</option>
    </select>
    <input type="text" name="phone2" size="5" />
    <input type="text" name="phone3" size="5" />
   </td>
  </tr>
  <tr>
   <td align="right">email:</td>
   <td>
    <input type="text" name="email" />
   </td>
  </tr>
  <tr>
   <td align="right">address num:</td>
   <td>
    <input type="text" name="zipcode" />
    <input type="button" value="search" onclick="zipCheck()" />
   </td>
  </tr>
  <tr>
   <td align="right">address1:</td>
   <td>
    <input type="text" name="address1" size="50" />
   </td>
  </tr>
  <tr>
   <td align="right">address2:</td>
   <td>
    <input type="text" name="address2" size="30" />
   </td>
  </tr>
  <tr>
   <td colspan="2" align="center">
    <input type="button" value="join" onClick="inputCheck()" />&nbsp;&nbsp;
    <input type="reset" value="reinput" />
   </td>
  </tr>
  
  
  
  
 </table>
</form>
</body>
</html>