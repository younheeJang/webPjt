<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="memberone.*"%>
<%-- <jsp:useBean id="dao" class="memberone.StudentDAO" /> --%>
<%
StudentDAO dao = StudentDAO.getInstance();
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MEMBER INFOR MODIFICATION FORM</title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/script.js"></script>
</head>
<%
 String loginID = (String) session.getAttribute("loginID");
StudentVO vo = dao.getMember(loginID);
%>
<body>
 <form action="modifyProc.jsp" name="regForm" method="post">
  <table border="1">
   <tr>
    <td>input modifying infor</td>
   </tr>
   <tr>
    <td align="center">ID:</td>
    <td>
     <%=vo.getId() %>
    </td>
   </tr>
   <tr>
    <td>PASS:</td>
    <td>
     <input type="password" name="pass"
     value="<%=vo.getPass() %>" />
    </td>
   </tr>
   <tr>
    <td>re-PASS:</td>
    <td>
     <input type="password" name="repass"
     value="<%=vo.getPass() %>" />
    </td>
   </tr>
   <tr>
    <td align="center">NAME:</td>
    <td>
     <%=vo.getName() %>
    </td>
   </tr>
   <tr>
    <td align="center">TEL:</td>
    <td>
     <input type="text" name="phone1" size="4" 
     value="<%=vo.getPhone1() %>" />
     <input type="text" name="phone2" size="5" 
     value="<%=vo.getPhone2() %>" />
     <input type="text" name="phone3" size="5" 
     value="<%=vo.getPhone3() %>" />
    </td> 
   </tr>
   <tr>
    <td align="center">EMAIL:</td>
    <td>
     <input type="text" name="email" 
     value="<%=vo.getEmail() %>" />
    </td>
   </tr> 
   <tr>
    <td align="center">addressNum</td>
    <td>
     <input type="text" name="zipcode" 
     value="<%=vo.getZipcode() %>" />
     <input type="button" name="search" 
     onclick="zipCheck()" />
    </td>
   </tr>
   <tr>
    <td align="center">address1</td>
    <td>
     <input type="text" name="address1" 
     value="<%=vo.getAddress1() %>" />
    </td>
   </tr>
   <tr>
    <td align="center">address2</td>
    
    <td>
     <input type="text" name="address2" 
     value="<%=vo.getAddress2() %>" />
    </td>
   </tr>
   <tr>
    <td colspan="2" align="center">
    <input type="button" value="MODIFICATION"
     onclick="updateCheck()" />&nbsp;&nbsp;
     <input type="button" value="CANCEL"
     onclick="javascript:window.location='login.jsp'" />
    </td>
   </tr>
  </table>
 </form>
</body>
</html> 