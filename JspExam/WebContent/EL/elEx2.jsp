<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="actiontag.Customer, java.util.HashMap"%>
    <%@page import="java.util.ArrayList"%>
<%
ArrayList<String> singer = new ArrayList<String>();
 singer.add("원더걸스");
 singer.add("소녀시대");
 request.setAttribute("singer", singer);
 Customer[] customer = new Customer[2];
 customer[0] = new Customer();
 customer[0].setName("사오정");
 customer[0].setEmail("sao@hanmail.net");
 customer[0].setPhone("010-2356-8765");
 customer[1] = new Customer();
 customer[1].setName("사오정");
 customer[1].setEmail("sao@hanmail.net");
 customer[1].setPhone("010-2356-8765");
 request.setAttribute("customer", customer);
%>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title></title>
</head>
<body>
 <ul>
  <li>${singer[0]},${singer[1]}</li>
 </ul>
 <ul>
  <li>name:${customer[0].name}</li>
  <li>email:${customer[0].email}</li>
  <li>tel:${customer[0].phone}</li>
 </ul>
 <ul>
  <li>name:${customer[1].name}</li>
  <li>email:${customer[1].email}</li>
  <li>tel:${customer[1].phone}</li>
 </ul>
</body>
</html>