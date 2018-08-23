<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.io.*"%>
<%
 String fileName = request.getParameter("filename");
 String savePath = "upload";
 ServletContext context = getServletContext();
 String sDownloadPath = context.getRealPath(savePath);
 String sFilePath = sDownloadPath + "\\" + fileName;
 byte[] b = new byte[8192];
 FileInputStream in = new FileInputStream(sFilePath);
 String sMineType = getServletContext().getMimeType(sFilePath);
 if (sMineType == null) 
  sMineType = "application/octet-stream";
  response.setContentType(sMineType);
  //search what kind of brouser user use
  String agent = request.getHeader("User-Agent");
  boolean ieBrowser = (agent.indexOf("MSIE") > -1 || agent.indexOf("Trident") > -1);
  if (ieBrowser) {
   fileName = URLEncoder.encode(fileName, "UTF-8").replaceAll("\\+", "%20");
  } else {
   fileName = new String(fileName.getBytes("UTF-8"), "UTF-8");
  }
  response.setHeader("Content-Disposition", "attachment;filename=" + fileName);
  ServletOutputStream out2 = response.getOutputStream();
  int numRead;
  while ((numRead = in.read(b, 0, b.length)) != -1) {
   out2.write(b, 0, numRead);
  }
  out2.flush();
  out2.close();
  in.close();
 
%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
</body>
</html> 