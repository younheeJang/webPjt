<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>file upload</title>
</head>
<body>
 <form action="processFileUpload.jsp" method="post"
  enctype="multipart/form-data">
  file1:<input type="file" name="file1"> <br>
  file2:<input type="file" name="file2"> <br>
  file3:<input type="file" name="file3"> <br>
  parameter1:<input type="text" name="param1"><br>
  parameter2:<input type="text" name="param2"><br>
  parameter3:<input type="text" name="param3"><br> 
  <input type="submit" value="send">
 </form>
</body>
</html> 