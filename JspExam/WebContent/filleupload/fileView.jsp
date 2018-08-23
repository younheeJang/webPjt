<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.oreilly.servlet.MultipartRequest,
    com.oreilly.servlet.multipart.DefaultFileRenamePolicy,
    java.util.*, java.io.*"%>
   
    <%
 //variable for setting size of file and folder save file
 String realFolder = "";
 String saveFolder = "upload";
 String encType = "utf-8";
 int maxSize = 10 * 1024 * 1024;
 ServletContext context = getServletContext();
 realFolder = context.getRealPath(saveFolder);
 ArrayList saveFiles = new ArrayList();
 ArrayList origFiles =  new ArrayList();
 String paramUser = "";
 String paramTitle = "";
 String paramAbstract = "";
 
 try{
  MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType,
    new DefaultFileRenamePolicy());
    
  paramUser = multi.getParameter("txtUser");
  paramTitle = multi.getParameter("txtTitle");
  paramAbstract = multi.getParameter("txtAbstract");
  
  Enumeration files = multi.getFileNames();
  //getFileNames() : get name set tag as file attribute
  
  while(files.hasMoreElements()){
   
   String name =(String)files.nextElement();
   saveFiles.add(multi.getFilesystemName(name));
   origFiles.add(multi.getOriginalFileName(name));
  }
  %>

 
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title>FILE INFORMATION</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
 <table width="75%" border="1" align="center" cellpadding="0"
  cellspacing="1" bordercolor="#660000" bgcolor="#ffff99">
  <tr>
   <td width="10%" bgcolor="#FFCC00">
    <div align="right"><strong>user</strong></div></td>
   <td width="30%"><%=paramUser %></td>
   <td width="10%" bgcolor="#FFCC00">
    <div align="right"><strong>title</strong></div></td>
   <td width="30%"><%=paramTitle %></td>
  </tr>
  
  <tr>
   <td width="10%" bgcolor="#FFCC00">
    <div align="right"><strong>abstract</strong></div></td>
   <td width="50%" colspan="3">
    <textarea rows="5" cols="50">
     <%=paramAbstract%>
    </textarea>
   </td>
  </tr>
  
  <tr><td colspan="4" bgcolor="#ffffff">&nbsp;</td></tr>
  
  <tr>
   <td colspan="4"><strong>file uploaded</strong></td>
  </tr>
  
  <%for(int i= 0; i<saveFiles.size(); i++){ %>
  <tr bgcolor="#FFCC00">
   <td colspan="4">
    <a href="<%="/JspExam/"+saveFolder+"/"+saveFiles.get(i)%>">
     <strong><%=origFiles.get(i) %></strong>   
    </a>
   
   </td>
  </tr>
  <%} %>
 </table>
</body>
</html>
 

<%
 } catch (IOException ii) {
  ii.printStackTrace();
 } catch (Exception ee) {
  ee.printStackTrace();
 }
%> 
