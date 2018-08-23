<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>memberOut</title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/script.js"></script>
</head>
<body onload="begin()">
 <form action="member.mdo?cmd=deleteProc" name="myForm" method="post"
 onsubmit="return checkIt()">
  <table width="260" border="1" align="center">
   <tr>
    <td colspan="2" align="center"><b>memberOut</b></td>
   </tr>
   <tr>
    <td width="150"><b>input pw</b></td>
    <td width="110"><input type="password" name="pass" size="15" />
    </td>
   </tr>
   <tr>
    <td colspan="2" align="center">
    <input type="submit" value="memberOut" />
    <input type="button" value="CANCEL"
    onclick="javascript:window.location='member.mdo?cmd=login'" />   
    
    </td>
   </tr>
  </table>
 </form>
</body>
</html>
 