<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
    <%
    	request.setCharacterEncoding("utf-8");
    %>
   <%@ page import="memberone.*"%>
<%-- <jsp:useBean id="dao" class="memberone.StudentDAO" /> --%>
<%
StudentDAO dao = StudentDAO.getInstance();
%> 
    <jsp:useBean id="vo" class="memberone.StudentVO">
    	<jsp:setProperty name="vo" property="*" />
    </jsp:useBean>
    <%
    	String loginID = (String)session.getAttribute("loginID");
    	vo.setId(loginID);
    	dao.updateMember(vo);
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PROCESS MODIFICATION END</title>
</head>
<meta http-equiv="Refresh" content="3;url=login.jsp">

<body>
	<center>
	<font size="5" face="궁서체">
		modificatiion ends<br><b>as your request</b><br>
		move login Page in 3s...
	</font>
	</center>
</body>
</html>