<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ page import="boardone.BoardDAO"%>
<%@ page import="boardone.BoardVO"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ include file="view/color.jsp"%>
<%!/*수정1*/
 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
 int pageSize = 5; //한 페이지에 보여줄 게시물의 수%>
<%
 /*수정2*/
 String pageNum = request.getParameter("pageNum");
 //search add content
 String searchWhat = request.getParameter("searchWhat");
 //get searchWhat(writer, title, content.)
 String searchText = request.getParameter("searchText");
 //get searchText
 //value got convert to korean
 if (searchText != null) {
  searchText = new String(searchText.getBytes("utf-8"), "utf-8");
 }
 if (pageNum == null) {
  pageNum = "1"; //페이지 넘버가 없으니 현재 페이지를 1함
 }
 int currentPage = Integer.parseInt(pageNum);
 //현재 페이지의 번호
 //출력할 행의 수 계산
 int startRow = (currentPage - 1) * pageSize + 1;
 //한페이지 이상일 때 페이지 크기에 따라 행의 페이지로 나눔
 //특정페이지로 이동할 경우는 출력할 페이지를 계산하여 이동함
 int endRow = currentPage * pageSize;//1*5
 int count = 0;
 int number = 0;
 List<BoardVO> articleList = null;
 BoardDAO dbPro = BoardDAO.getInstance();
 //if not search, show all list, if search show contents searched
 if (searchText == null) {
  count = dbPro.getArticleCount();//전체글수
  if (count > 0) {
   articleList = dbPro.getArticles(startRow, endRow);/*수정3*/
  }
 } else {
  count = dbPro.getArticleCount(searchWhat, searchText);
  if (count > 0) {
   articleList = dbPro.getArticles(startRow, endRow, searchWhat, searchText);
  }
 }
 /*number=count;*/
 /*수정4*/
 number = count - (currentPage - 1) * pageSize;//현재 페이지의 출력된 카운트 번호
%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="<%=bodyback_c%>">
 <center>
  <b>LIST(all:<%=count%>)
  </b>
  <table width="700">
   <tr>
    <td align="right" bgcolor="<%=value_c%>"><a
     href="writeForm.jsp">write</a></td>
   </tr>
  </table>
  <%
   if (count == 0) {
  %>
  <table width="700">
   <tr>
    <td align="center">no writes on board</td>
   </tr>
  </table>
  <%
   } else {
  %>
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
      BoardVO article = (BoardVO) articleList.get(i);
   %>
   <tr height="30">
    <td align="center" width="50"><%=number--%></td>
    <td width="250">
     <!-- 수정5 --> <%
  int wid = 0;
    if (article.getDepth() > 0) {
     wid = 5 * (article.getDepth());
 %> <img src="../img/level.gif" width="<%=wid%>" height="16"> <img
     src="../img /re.gif"> <%
  } else {
 %> <img src="../img/level.gif" width="<%=wid%>" height="16"> <%
  }
 %> <!-- 수정6 --> <a
     href="content.jsp?num=<%=article.getNum()%>&pageNum=<%=currentPage%>">
      <%=article.getSubject()%></a> <%
  if (article.getReadcount() >= 20) {
 %> <img src="../img/aa.gif" border="0" height="16"> <%
  }
 %>
    </td>
    <td align="center" width="100"><a
     href="mailto;<%=article.getEmail()%>"> <%=article.getWriter()%></a>
    </td>
    <td align="center" width="150"><%=sdf.format(article.getRegdate())%>
    </td>
    <td align="center"><%=article.getReadcount()%></td>
    <td align="center" width="50"><%=article.getIp()%></td>
   </tr>
   <%
    }
   %>
  </table>
  <%
   }
  %>
  <!-- 수정 7-->
  <%
   if (count > 0) {
    int pageBlock = 5;
    int imsi = count % pageSize == 0 ? 0 : 1;
    int pageCount = count / pageSize + imsi;
    int startPage = (int) ((currentPage - 1) / pageBlock) * pageBlock + 1;
    //시작페이지
    int endPage = startPage + pageBlock - 1;
    //끝 페이지
    if (endPage > pageCount)
     endPage = pageCount;
    if (startPage > pageBlock) {
     
     //page processing whether search or not 
     if(searchText==null){
     
  %>
  <a href="list.jsp?pageNUM=<%=startPage - pageBlock%>">[pre]</a>
  <%}else{ %>
  
  <a href="list.jsp?pageNUM=<%=startPage + pageBlock%>&searchWhat=<%=searchWhat%>&searchText=<%=searchText%>">[pre]</a>
  
  <%
   }
    }
    for (int i = startPage; i <= endPage; i++) {
 
     //whether search or not
     if(searchText==null){
     
     %>
     
  <a href="list.jsp?pageNum=<%=i%>">[<%=i%>]
  </a>
  <%}else{ %>
  <a href="list.jsp?pageNUM=<%=startPage + pageBlock%>&searchWhat=<%=searchWhat%>&searchText=<%=searchText%>">[<%=i%>]</a>
  
  <%
  }
  }
    if (endPage < pageCount) {
     if(searchText==null){
     
     %>
  <a href="list.jsp?pageNUM=<%=startPage - pageBlock%>">[next]</a>
  
  <%}else{ %>
  <a href="list.jsp?pageNUM=<%=startPage + pageBlock%>&searchWhat=<%=searchWhat%>&searchText=<%=searchText%>">[next]</a>
  
  <%
   }
   }
   }
  %>
  <form action="list.jsp">
   <select name="searchWhat">
    <option value="writer">writer</option>
    <option value="title">title</option>
    <option value="content">content</option>
   </select> <input type="text" name="searchText" /> <input type="submit"
    value="search">
  </form>

 </center>
</body>
</html> 