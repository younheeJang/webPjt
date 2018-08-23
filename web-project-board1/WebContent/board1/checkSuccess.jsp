<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<script type="text/javascript">
		if (window.name == "update") {
			window.opener.parent.location.href = "Board1Servlet?command=board1_update_form&num=${param.num}";
		} else if (window.name == 'delete') {
			alert('deleted');
			window.opener.parent.location.href = "Board1Servlet?command=board1_delete&num=${param.num}";
		}
		window.close();
	</script>
</body>
</html>