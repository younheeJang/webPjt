<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title></title>
</head>
<body>

<div class="container">
 
 
 <div class="row">
 <label for="firstname">Name:</label>
 <span>${loggedInUser.firstName}:${loggedInUser.lastName}</span>
 </div>
 
 <div class="row">
 <label for="image">Name:</label>
 <img alt="" src="@{*{image}}" style="width:150px; height:150px; ">
 </div>
 
 <br>
 
 <a href="/login" class="btn btn-info btn-lg" >
  <span class="glyphicon glyphicon-chevron-left"></span> Login using  other social Providers</a>
 
</div>

</body>
</html>