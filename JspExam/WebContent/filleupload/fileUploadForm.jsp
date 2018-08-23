<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
 <div>
  <form action="fileUpload.jsp" method="post" 
  enctype="multipart/form-data">
   <table border="1">
    <tr>
     <td colspan="2" align="center">
      <h3>file upload</h3>
     </td>
    </tr>
    <tr>
     <td>uploader:</td>
     <td><input type="text" name="name"></td>
    </tr>
    <tr>
     <td>title:</td>
     <td><input type="text" name="subject"></td>
    </tr>
    <tr>
     <td>fileName1:</td>
     <td><input type="file" name="fileName1"></td>
    </tr>
    <tr>
     <td>fileName2:</td>
     <td><input type="file" name="fileName2"></td>
    </tr>
    <tr>
     <td colspan="2" align="center">
     <input type="submit" value="send"></td>
    </tr>
    
   </table>
  </form>
 </div>
</body>
</html> 