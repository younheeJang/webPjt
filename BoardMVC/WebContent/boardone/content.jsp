<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="boardone.BoardDAO"%>
<%@ page import="boardone.BoardVO"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ include file="view/color.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
</head>
<%
int num =Integer.parseInt(request.getParameter("num"));
String pageNum = request.getParameter("pageNum");

SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd HH:mm");

try{
	BoardDAO dbPro = BoardDAO.getInstance();
	BoardVO article = dbPro.getArticle(num);
	
	int ref=article.getRef();
	int step = article.getStep();
	int depth = article.getDepth();

%>
<body bgcolor="<%=bodyback_c%>">
	<center>
		<b>view content</b>
		<form action="">
			<table width="500" border="1" cellspacing="0" cellpadding="0"
    bgcolor="<%=bodyback_c%>" align="center">
    <tr height="30">
     <td align="center" width="125" bgcolor="<%=value_c%>">article
      number</td>
     <td align="center" width="125" bgcolor="<%=value_c%>"><%=article.getNum()%></td>
     <td align="center" width="125" bgcolor="<%=value_c%>">readcount</td>
     <td align="center" width="125" bgcolor="<%=value_c%>"><%=article.getReadcount()%></td>
    </tr>
    <tr height="30">
     <td align="center" width="125" bgcolor="<%=value_c%>">writer</td>
     <td align="center" width="125" bgcolor="<%=value_c%>"><%=article.getWriter()%></td>
     <td align="center" width="125" bgcolor="<%=value_c%>">regDate</td>
     <td align="center" width="125" bgcolor="<%=value_c%>"><%=sdf.format(article.getRegdate())%></td>
    </tr>
    
    <tr height="30">
     <td align="center" width="125" bgcolor="<%=value_c%>">title</td>
     <td align="center" width="375" bgcolor="<%=value_c%>" colspan="3"><%=article.getSubject()%></td>
    </tr>
    
    <tr height="30">
     <td align="center" width="125" bgcolor="<%=value_c%>">content</td>
     <td align="left" width="375" colspan="3"><pre><%=article.getContent()%></pre></td>
    </tr>
    
    <tr height="30">
     <td colspan="4" bgcolor="
     <%=value_c%>" align="right">
      <input type="button" value="modify" 
      onclick="document.location.href='updateForm.jsp?num=<%=article.getNum()%>&pageNum=<%=pageNum%>'">&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="button" value="delete" 
      onclick="document.location.href='deleteForm.jsp?num=<%=article.getNum()%>&pageNum=<%=pageNum%>'">&nbsp;&nbsp;&nbsp;&nbsp;
    
    <input type="button" value="reply"
    onclick="document.location.href='writeForm.jsp?num=<%=article.getNum()%>&ref=<%=ref%>&step=<%=step%>&depth=<%=depth%>'">
    &nbsp;&nbsp;&nbsp;&nbsp;
      <input type="button" value="list" 
      onclick="document.location.href='list.jsp?pageNum=<%=pageNum%>'">
     </td> 
    </tr>
   </table> 
			<%}catch(Exception e){} %>
		</form>
	</center>
</body>
</html>