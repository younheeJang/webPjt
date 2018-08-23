<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title></title>
</head>
<body>
<p>operator and inner object</p>
<table border="1">
<tr><td><b>expression</b></td><td><b>value</b></td></tr> 
<tr><td><b>\${2+5}</b></td><td><b>${2+5}</b></td></tr> 
<tr><td><b>\${4/5}</b></td><td><b>${4/5}</b></td></tr> 
<!-- <tr><td><b>\${5 div 6}</b></td><td><b>${5 div 6}</b></td></tr>  -->
<tr><td><b>\${5 % 7}</b></td><td><b>${5 % 7}</b></td></tr> 
<tr><td><b>\${5 mod 7}</b></td><td><b>${5 mod 7}</b></td></tr> 
<tr><td><b>\${5 < 7}</b></td><td><b>${5 < 7}</b></td></tr> 
<tr><td><b>\${5 gt 7}</b></td><td><b>${5 gt 7}</b></td></tr> 
<tr><td><b>\${5 le 7}</b></td><td><b>${5 le 7}</b></td></tr> 
<tr><td><b>\${(5 > 3)?5:3}</b></td><td><b>${(5 > 3)?5:3}</b></td></tr> 
</table>
</body>
</html>