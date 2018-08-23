<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*" %>
    <%@ page import="java.net.URL" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<%
String filePath="/message/notice.txt";
%>
<%=application.getRealPath(filePath) %>
<br><br>
<hr color="red">
<%=filePath %>content
<br>
<hr color="red">
<%
char[] buff= new char[128];
int len=-1;
try{
	
	InputStreamReader fr=new InputStreamReader(
			application.getResourceAsStream(filePath), "utf-8");
	while((len=fr.read(buff)) != -1){
		out.println(new String(buff, 0, len));
	}
	
}catch(IOException ie){
		out.println("exception:"+ie.getMessage());
}
%>
</body>
</html>