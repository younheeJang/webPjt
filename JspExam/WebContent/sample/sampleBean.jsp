<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("utf-8");
    //String message=request.getParameter("message");
    %>
    <jsp:useBean id="msg" class="sample.SampleData"></jsp:useBean>
	<jsp:setProperty property="message" name="msg"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<h1>result value on beans</h1>
<hr><br>
<font size="4">
message:<jsp:getProperty property="message" name="msg"/>
</font>

</body>
</html>