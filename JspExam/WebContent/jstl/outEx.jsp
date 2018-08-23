<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page import="java.io.IOException, java.io.FileReader" %>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title></title>
</head>
<body>
<%
FileReader reader = null;
try{
String path = request.getParameter("path");
reader = new FileReader(getServletContext().getRealPath(path));
%>	
<pre>
source code :<%=path %>
<c:out value="<%=reader %>" escapeXml="true" />
</pre>
<%
}catch(IOException ie){
%>
error:<%=ie.getMessage()%>
<% 	
	}finally{
		if(reader != null)
			try{
				reader.close();
			}catch(IOException ii){ii.printStackTrace();}
	}
%>
</body>
</html>