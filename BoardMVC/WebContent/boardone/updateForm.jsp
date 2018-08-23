<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="boardone.BoardDAO"%>
<%@ page import="boardone.BoardVO"%>
<%@ include file="view/color.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>update messages</title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/script.js"></script>
</head>
<%
 int num = Integer.parseInt(request.getParameter("num"));
 String pageNum = request.getParameter("pageNum");
 try {
  BoardDAO dbPro = BoardDAO.getInstance();
  BoardVO article = dbPro.updateGetArticle(num);
%>
<body bgcolor="<%=bodyback_c%>">
 <center>
  <b>update message</b>
  <form action="updateProc.jsp?pageNum=<%=pageNum%>" name="writeForm"
   method="post" onsubmit="return writeSave()">
   <table width="400" border="1" cellpadding="0" cellspacing="0"
    align="center" bgcolor="<%=bodyback_c%>">
   
    <tr>
     <td width="70" bgcolor="<%=value_c%>" align="center">writer</td>
     <td width="330"><input type="text" size="12" maxlength="12"
      name="writer" value="<%=article.getWriter()%>"> <input
      type="hidden" name="num" value="<%=article.getNum()%>"></td>
    </tr>
    <tr>
    <td width="70" bgcolor="<%=value_c%>" align="center">email</td>
    <td width="330"><input type="text" size="30" maxlength="30"
     name="email" value="<%=article.getEmail() %>"></td>
   </tr>
    <tr>
     <td width="70" bgcolor="<%=value_c%>" align="center">title</td>
     <td width="330">
     <input type="text" size="50" maxlength="50"
     name="subject" value="<%=article.getSubject() %>">
     </td>
    </tr>
    <tr>
     <td width="70" bgcolor="<%=value_c%>" align="center">content</td>
     <td width="330"><textarea rows="13" cols="50" name="content">
     <%=article.getContent() %>
     </textarea>
     </td>
    </tr>
    <tr>
     <td width="70" bgcolor="<%=value_c%>" align="center">pass</td>
     <td width="330"><input type="password" size="10"
      maxlength="10" name="pass"></td>
    </tr>
    
    <tr>
     <td colspan="2" bgcolor="<%=value_c%>" align="center">
       <input type="submit" value="update">
       <input type="reset" value="re-write">
       <input type="button" value="view list" 
       onclick="document.location.href='list.jsp?pageNum=<%=pageNum%>">
     </td>
    
    </tr>
  </form>
 </center>
 <%
  } catch (Exception e) {
  }
 %>

</body>
</html>