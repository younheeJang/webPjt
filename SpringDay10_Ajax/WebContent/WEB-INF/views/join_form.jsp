<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title>join form page</title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('#idDualCheck').click(function(){
			var inputId= $('input[name="memberId"]').val();
			if(inputId==""){
				alert('input id');
				return false;
			}
	
		$.ajax({
			
		})
		
		
		})
		
	})
</script>

</head>
<body>
<h1>join form</h1>
<form action="join.do" method="post">
ID:<input type="text" size="20" name="memberId">
<input type="button" id="idDualCheck"><br>
<div id="idCheckResult">need for id dual check</div>
PW:<input type="password" size="20" name="memberPw"><br>
PHONE:<input type="tel" size="20" name="phone"><br>
EMAIL:<input type="email" size="20" name="email" ><br>
 <input type="submit" value="join">

</form>
</body>
</html>