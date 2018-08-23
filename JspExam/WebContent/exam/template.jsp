<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String pagefile=request.getParameter("page");
if(pagefile != null){
	pagefile="newitem";
}
String pagefileex=".jsp";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<jsp:include page="top.jsp"></jsp:include>
		div>
		<div id="sidebar">
			<jsp:include page="left.jsp"></jsp:include>
		</div>
		<div id="contents">
			<jsp:include page="<%=pagefile+pagefileex %>"></jsp:include>
		</div>
		<div id="footer">
			<jsp:include page="bottom.jsp"></jsp:include>
		</div>	
	</div>
</body>

</html>