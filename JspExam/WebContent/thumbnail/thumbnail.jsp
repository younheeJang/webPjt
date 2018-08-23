<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!-- thumbnail image, import related class like jai or graphic -->
<%@ page import="java.awt.Graphics2D"%>
<%@ page import="java.awt.image.renderable.ParameterBlock"%>
<%@ page import="java.awt.image.BufferedImage"%>
<%@ page import="javax.media.jai.JAI"%>
<%@ page import="javax.media.jai.RenderedOp"%>
<%@ page import="javax.imageio.ImageIO"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%
 String imagePath = request.getRealPath("upload");
 //real path set where really uploaded
 int size = 10 * 1024 * 1024;
 String filename = "";
 try {
  MultipartRequest multi = new MultipartRequest(request, imagePath, size, "utf-8",
    new DefaultFileRenamePolicy());
  //image upload for thumbnail
  Enumeration files = multi.getFileNames();
  String file = (String) files.nextElement();
  filename = multi.getFilesystemName(file);
 } catch (Exception e) {
  //exception for size of image
  e.printStackTrace();
 }
 ParameterBlock pb = new ParameterBlock();
 //save image in ParameterBlock class to convert   
 pb.add(imagePath + "/" + filename);
 //save image block uploaded image
 RenderedOp rOp = JAI.create("fileload", pb);
 //option that use codec from JAI
 BufferedImage bi = rOp.getAsBufferedImage();
 //save image loaded, in buffer class with bi
 BufferedImage thumb = new BufferedImage(100, 100, BufferedImage.TYPE_INT_RGB);
 //create image buffer, and draw buffer size in 100*100
 Graphics2D g = thumb.createGraphics();
 g.drawImage(bi, 0, 0, 100, 100, null);
 //ddraw thumbnail image fitting regulated buffSize 100*100
 
 File file = new File(imagePath + "/sm_" + filename);
  //image create, set file name to print
 
 ImageIO.write(thumb, "jpg", file);
  //set file type as jpg
  
%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>thumbnail</title>
</head>
<body>
-original image-<br>
<img src="/JspExam/upload/<%=filename%>"><p>
-thumbnail image-<br>
<img src="/JspExam/upload/sm_<%=filename%>">
</body>
</html> 