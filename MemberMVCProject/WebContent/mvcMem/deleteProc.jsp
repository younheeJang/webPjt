<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="mvcMem.model.StudentDAO"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>memberOut</title>
</head>
<meta http-equiv="Refresh" content="3;url=member.mdo?cmd=login">
<body>
<div align="center">
<c:set var="result" value="${result }" />
<c:if test="${result eq 0 }">
<script type="text/javascript">
alert("pass not same");
history.go(-1);
</script>
</c:if>
 <font size="5" face="궁서체">
 member infor deleted...<br>
 Goodbye and Next you try to join,
 with lot consideration plz.<br>
 move to loginPage in 3s.
 </font>
</div>
</body>
</html> 