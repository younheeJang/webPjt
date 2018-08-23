<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="actiontag.Customer, java.util.HashMap"%>
<%
 Customer customer = new Customer();
 customer.setName("손오공");
 customer.setEmail("son@naver.com");
 customer.setPhone("010-1234-1234");
 request.setAttribute("customer", customer);
 HashMap<String, String> map = new HashMap<String, String>();
 map.put("name", "소나타");
 map.put("maker", "현대");
 request.setAttribute("car", map);
%>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title></title>
</head>
<body>
 <ul>
  <li>name:${customer.name}</li>
  <li>email:${customer.email}</li>
  <li>tel:${customer.phone}</li>
 </ul>
 <br>
 <ul>
  <li>car:${car.name}</li>
  <li>company:${car.maker}</li>
 </ul>
</body>
</html>