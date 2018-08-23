<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<c:set var="str1" value="use Functions <tag>" />
<c:set var="str2" value="use" />
<c:set var="tokens" value="1,2,3,4,5,6,7,8,9,10" />
length(str1):${fn:length(str1) }<br><br>
toUpperCase(str1):${fn:toUpperCase(str1) }<br><br>
toLowerCase(str1):${fn:toLowerCase(str1) }<br><br>
substring(str1, 3, 6):${fn:substring(str1, 3, 6) }<br><br>
substringAfter(str1, str2):${fn:substringAfter(str1, str2) }<br><br>
</body>
</html> 