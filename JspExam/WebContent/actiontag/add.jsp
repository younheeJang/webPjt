<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="actiontag.Customer"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="customer" class="actiontag.Customer" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="customer" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<ul>
		<li>name: <jsp:getProperty property="name" name="customer" />
		</li>
		<li>email: <jsp:getProperty property="email" name="customer" />
		</li>
		<li>phone: <jsp:getProperty property="phone" name="customer" />
		</li>
	</ul>

</body>
</html>