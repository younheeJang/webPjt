<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="boardone.BoardDAO"%>
<%@ page import="java.sql.Timestamp"%>
<%
 request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="article" scope="page" class="boardone.BoardVO">
 <jsp:setProperty name="article" property="*" />
</jsp:useBean>
<%
 article.setRegdate(new Timestamp(System.currentTimeMillis()));
 //current hour and date
 article.setIp(request.getRemoteAddr()); //글의 작성한 곳의 아이피를 가져 옴
 
 BoardDAO dbPro=BoardDAO.getInstance(); //싱글톤 패턴
 dbPro.insertArticle(article);
 //디비에 데이터 추가하고 리스트 페이지 보여줌
 response.sendRedirect("list.jsp");
 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>