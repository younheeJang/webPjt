<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<b>Using request.getParameter() method</b><br>
<%=request.getParameter("name") %>
<%=request.getParameter("address") %>
<br><br>

<b>Using request.getParameterValues() method</b><br>
<%
String[] values=request.getParameterValues("pet");
if(values != null){
	for(int i=0; i<values.length; i++){
	%>
		<%=values[i] %>	
	<%
	}
}
%>
<br><br>
<b>Using request.getParameterNames() method</b><br>
<%
Enumeration enumData=request.getParameterNames();
while(enumData.hasMoreElements()){
	String name=(String)enumData.nextElement();
%>
<%=name %>
<%	
}
%>
<br><br>

<b>Using request.getParameterMap() method</b><br>
<%
Map parameterMap=request.getParameterMap();
String[] nameParam=(String[])parameterMap.get("name");
if(nameParam != null){
%>	
	<%=nameParam[0]%>	
<%
}
%>

</body>
</html>