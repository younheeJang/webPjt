<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="loginID" value="${sessionScope.loginID }"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Log in</title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<c:choose>
	<c:when test="${loginID ne null }">
		<table width="300" border="1">
			<tr>
				<th colspan="3">
					<c:out value="${loginID }"/>님 환영합니다.
				</th>
			</tr>
			<tr>
				<td align="center" width="100">
					<a href="member.mdo?cmd=modifyForm">회원정보수정</a>
				</td>
				<td align="center" width="100">
					<a href="member.mdo?cmd=deleteForm">회원탈퇴</a>
				</td>
				<td align="center" width="100">
					<a href="member.mdo?cmd=logout">로그아웃</a>
				</td>
			</tr>
		</table>
		</c:when>
<c:otherwise>
		<c:choose>
		<c:when test="${requestScope.check eq 0 }">
			<script>
				alert("비밀번호가 틀렸습니다.");
				history.go(-1);
			</script>
		</c:when>
		<c:when test="${requestScope.check eq -1 }">
			<script>
				alert("아이디가 존재하지 않습니다.");
				history.go(-1);
			</script>
		</c:when>
		<c:otherwise>
		<form action="member.mdo?cmd=loginProc" method="post">
			<table width="300" border="1">
				<tr>
					<th colspan="2">회원 로그인</th>
				</tr>
				<tr>
					<td width="100" align="right">아이디 : </td>
					<td width="200">&nbsp;&nbsp;
						<input type="text" name="id" size="20">
					</td>
				</tr>
				<tr>
					<td width="100" align="right">비밀번호 : </td>
					<td width="200">&nbsp;&nbsp;
						<input type="password" name="pass" size="20">
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="로그인">&nbsp;&nbsp;
						<input type="button" value="회원가입" 
						onclick="javascript:window.location='?cmd=regForm'">
					</td>
				</tr>
			</table>
		</form>
		</c:otherwise>
		</c:choose>
	</c:otherwise>
	</c:choose>
</body>
</html>