<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
click the send btn after input data in form
<form action="viewParameter.jsp" method="post">
name:<input type="text" name="name" size="10"><br><br>
address:<input type="text" name="address" size="50"><br><br>
favorite pet:<input type="checkbox" name="pet" value="dog">dog
				<input type="checkbox" name="pet" value="cat">cat
				<input type="checkbox" name="pet" value="pig">pig
				<br><br>
				<input type="submit" value="send">
</form>
</body>
</html>