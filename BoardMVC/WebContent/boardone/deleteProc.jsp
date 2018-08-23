<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="boardone.BoardDAO"%>
<%@ page import="java.sql.Timestamp"%>
<%
 request.setCharacterEncoding("utf-8");
%>
<%
 int num = Integer.parseInt(request.getParameter("num"));
 String pageNum = request.getParameter("pageNum");
 String pass = request.getParameter("pass");
 BoardDAO dbPro = BoardDAO.getInstance();
 int check = dbPro.deleteArticle(num, pass);
 if (check == 1) {
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8" http-equiv="Refresh" content="0;url=list.jsp?pageNum=<%=pageNum%>">
<title></title>
</head>
<body>
 <%
  } else {
 %>
 <script type="text/javascript">
  alert("pass not same");
  history.go(-1);
 </script>
 
 <%
  }
 %>

</body>
</html>