<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<h1>LogIn</h1>
<form action="/Login" method="get">
<fieldset>
	<legend>LogIn</legend>
	<ul>
		<li>
			<label for="userid">id</label>
			<input type="text" name="userid">
		</li>
		<li>
			<label for="passwd">pw</label>
			<input type="password" name="passwd">
		</li>
		<li>
			<input type="submit" value="login">
		</li>
	</ul>
</fieldset>
</form>

</body>
</html>