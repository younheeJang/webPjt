<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ page import="org.apache.commons.fileupload.FileUpload"%>
<%@ page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page import="org.apache.commons.fileupload.FileItem"%>
<%@ page import="java.io.File"%>
<%@ page import="java.io.BufferedInputStream"%>
<%@ page import="java.io.BufferedOutputStream"%>
<%@ page import="java.io.FileOutputStream"%>
<%@ page import="java.io.IOException"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>process file upload</title>
</head>
<body>
 <%
  if (FileUpload.isMultipartContent(request)) {
   String temporaryDir = "C:\\temp";
   DiskFileUpload fileUpload = new DiskFileUpload();
   fileUpload.setSizeMax(10 * 1024 * 1024);
   fileUpload.setSizeThreshold(1024 * 100);
   java.util.List fileItemList = fileUpload.parseRequest(request);
   for (int i = 0; i < fileItemList.size(); i++) {
    FileItem fileItem = (FileItem) fileItemList.get(i);
    if (fileItem.isFormField()) {
 %>
 form parameter :
 <%=fileItem.getFieldName()%>=
 <%=fileItem.getString()%><br>
 <%
  } else {
 %>
 file:<%=fileItem.getFieldName()%>=(<%=fileItem.getName()%>bytes)
 <br>
 <%
  if (fileItem.isInMemory()) {
 %>
 "save memory"
 <br>
 <%
  } else {
 %>
 "save to disc"
 <br>
 <%
  }
 %>
 <%
  String filepath = application.getRealPath("upload");
     if (fileItem.getSize() > 0) {
      int idx = fileItem.getName().lastIndexOf("\\");
      if (idx == -1) {
       idx = fileItem.getName().lastIndexOf("/");
      }
      String fileName = fileItem.getName().substring(idx + 1);
      try {
       File uploadFile = new File(filepath, fileName);
       fileItem.write(uploadFile);
      } catch (IOException ex) {
       ex.printStackTrace();
      }
     }
    }
   }
  } else {
 %>
 encoding type is not multipart/form-data
 <%
  }
 %>
</body>
</html>