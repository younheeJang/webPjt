<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title>file select page</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

$(function{
	var fileCount=1;
	$('#btnAdd').click(function(){
		fileCount++;
		var addElement='file'+fileCount;
		addElement+=
			':<input type="file" name="uploadFiles"><br>';
			$('input[type="submit"]').before(addElement);
			return false;
	})
})

</script>

</head>
<body>
	<form action="upload.do" method="post" enctype="multipart/form-data">
		<button id="btnAdd">+</button>
		<button id="btnMinus">-</button>
		<br>file1:<input type="file" name="uploadFiles"><br>
		<input type="submit" value="upload">
	</form>
</body>
</html>