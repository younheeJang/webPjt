<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="java.util.ArrayList, jstl.MemberVO" %>
    <%
    MemberVO vo1 = new MemberVO("son o gong", "son@naver.com", 500);
    MemberVO vo2 = new MemberVO("sa o jeong", "sao@naver.com", 300);
    MemberVO vo3 = new MemberVO("jeo pal gye", "pal@naver.com", 150);
    ArrayList<MemberVO> memberList = new ArrayList<MemberVO>();
    memberList.add(vo1);
    memberList.add(vo2);
    memberList.add(vo3);
    request.setAttribute("memberList", memberList);
    %>
<!DOCTYPE>
<html>
<head>
<meta charset=UTF-8">
<title></title>
</head>
<body>
<h3>memberInformation</h3>
<table border="1" width="450">
<tr>
<th width="50">num</th>
<th width="100">name</th>
<th width="200">email</th>
<th width="100">age</th>
</tr>
<c:forEach var="member" items="${memberList }" varStatus="num">
<tr>
<td align="center">${num.count }</td>
<td align="center">${member.name}</td>
<td align="center">${member.email}</td>
<td align="center">${member.age}</td>
</tr>
</c:forEach>
</table>
</body>
</html>