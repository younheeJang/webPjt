<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String pageTitle=(String)request.getAttribute("PAGETITLE");
String contentPage=request.getParameter("CONTENTPAGE");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><%=pageTitle %></title>
</head>
<body>
<table width="400" border="1" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan="2"><jsp:include page="/temp/module/top.jsp" flush="false"></jsp:include></td>
	</tr>
	<tr>
		<td width="100" valign="top">
		<jsp:include page="/temp/module/left.jsp" flush="false"></jsp:include></td>
		<td width="300" valign="top">
		<jsp:include page="<%=contentPage %>"></jsp:include>
		</td>
	</tr>
	<tr>
		<td colspan="2"><jsp:include page="/temp/module/bottom.jsp" flush="false"></jsp:include></td>
	</tr>
</table>
</body>
</html>