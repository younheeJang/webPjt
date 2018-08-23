<%-- <%@page import="boardone.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="boardone.BoardDAO"%>
<%@ page import="boardone.BoardVO"%>
<%@ page import="java.sql.Timestamp"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.*"%>
<%@ include file="view/color.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
	String pageNum = request.getParameter("pageNum");
%>

<jsp:useBean id="article" class="boardone.BoardVO">
	<jsp:setProperty name="article" property="*" />
</jsp:useBean>

<%
    SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd HH:mm");
    String keyField = null;
   	String keyWord = null;
   	
   	List<BoardVO> articleList = null;
	BoardDAO dbPro = BoardDAO.getInstance();
	
		articleList = dbPro.getSearchList(keyField, keyWord);
		
		
   String pageNum = request.getParameter("pageNum");
 
   
   response.sendRedirect("list.jsp"); 
  
   
  

	if(request.getParameter("keyField") !=null){
		keyField = request.getParameter("keyField");
		keyWord = request.getParameter("keyWord");

		request.getSession().setAttribute("keyField", keyField);
		request.getSession().setAttribute("keyWord", keyWord);

	}else if(request.getSession().getAttribute("keyField") != null){
		keyField = (String)request.getSession().getAttribute("keyField");
		keyWord = (String)request.getSession().getAttribute("keyWord");
	}



    %>
    
	<%
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		request.setCharacterEncoding("UTF-8");
		String keyField = request.getParameter("keyField");
		String keyWord = request.getParameter("keyWord");
		BoardDAO dao = BoardDAO.getInstance();
		List<BoardVO> articleList = dao.getSearchList(keyField, keyWord);

		//ArrayList<MemberVO> list = dao.getMemberlist();
	%>

    
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title></title>
</head>

<body bgcolor="<%=bodyback_c%>">


<center>
	<table border="1" width="700" cellpadding="0" cellspacing="0"
		align="center">
		<tr height="30" bgcolor="<%=value_c%>">
			<td align="center" width="50">num</td>
			<td align="center" width="250">title</td>
			<td align="center" width="100">writer</td>
			<td align="center" width="150">date</td>
			<td align="center" width="50">search</td>
			<td align="center" width="100">ip</td>
		</tr>
		<%
			for (int i = 0; i < articleList.size(); i++) {
				article = (BoardVO) articleList.get(i);
		%>
		<tr>
			<td align="center" width="50"><%=article.getNum()%></td>
			<td align="center" width="250"><%=article.getSubject()%></td>
			<td align="center" width="100"><%=article.getWriter()%></td>
			<td align="center" width="150"><%=sdf.format(article.getRegdate())%></td>
			<td align="center" width="50"><%=article.getReadcount()%></td>
			<td align="center" width="100"><%=article.getIp()%></td>

		</tr>

		<%
			}
		%>
		
		
		</table>
		<form action="searchProc.jsp?pageNum=<%=pageNum%>" name="searchForm"
			method="post" onsubmit="return searchCheck()" >
			<input type="hidden" name="searchflag" value="true"> <select
				name="keyField">
				<option value="0">---select---</option>
				<option value="title">title</option>
				<option value="content">content</option>
				<option value="writer">writer</option>
			</select> &emsp; <input type="text" name="keyWord">&emsp; <input
				type="submit" value="search" onclick="searchCheck()">
		</form>
		
		</center>
		
</body>
</html> --%>