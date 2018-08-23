<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, jdbc.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DBConnection through Bean</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<h2>SCRIPT DATABASE CONNECT</h2>
	<h2>MEMBER INFOR</h2>
	<table bordercolor="#0000ff" border="1">
		<tr>
			<td><strong>ID</strong></td>
			<td><strong>PASSWD</strong></td>
			<td><strong>NAME</strong></td>
			<td><strong>MEM_NUM1</strong></td>
			<td><strong>MEM_NUM2</strong></td>
			<td><strong>E_MAIL</strong></td>
			<td><strong>PHONE</strong></td>
			<td><strong>ZIPCODE/ADDRESS</strong></td>
			<td><strong>JOB</strong></td>
		</tr>
	<jsp:useBean id="dao" class="jdbc.tempMemberDAO" scope="page" />
	<%
	
		Vector<tempMemberVO> vlist= dao.getMemberList();
		int count=vlist.size();
		for(int i =0; i<vlist.size(); i++){
			tempMemberVO vo=vlist.elementAt(i);			
	%>
	<tr>
		<td><%=vo.getId() %></td>
		<td><%=vo.getPasswd() %></td>
		<td><%=vo.getName() %></td>
		<td><%=vo.getMem_num1() %></td>
		<td><%=vo.getMem_num2() %></td>
		<td><%=vo.getEmail() %></td>
		<td><%=vo.getPhone() %></td>
		<td><%=vo.getZipcode() %>/<%=vo.getAddress() %></td>
		<td><%=vo.getJob() %></td>
		<%
	}
		 %>
	</tr>
	</table><br>
	total records:<%=count %>
	
</body>
</html>