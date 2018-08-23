<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*, memberone.*" %>
<%-- <jsp:useBean id="dao" class="memberone.StudentDAO" /> --%>
<%
StudentDAO dao = StudentDAO.getInstance();
%> 
<%
request.setCharacterEncoding("utf-8");
String check=request.getParameter("check");
String dong=request.getParameter("dong");
Vector<ZipCodeVO> zipcodeList=dao.zipcodeRead(dong);
int totalList=zipcodeList.size();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search for addressNum</title>
<link href="../css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/script.js"></script>
</head>
<body  bgcolor="#FFFFCC">
<center>
  <b>Searching addressNum</b>
  <form action="zipCheck.jsp" method="post" name="zipForm">
   <table>
    <tr>
     <td>Dong:<input name="dong" type="text" /> <input
      type="button" value="Search" onclick="dongCheck()" />
     </td>
    </tr>
   </table>
    <input type="hidden" name="check" value="n">
  
  </form>
  <table>
   <!-- 3 -->
   <!-- coding for show data got -->
      <%
    if(check.equals("n")){
      %>
     
     <%
     if(zipcodeList.isEmpty()){
      %>
     
     <tr><td align="center">no results</td></tr>
       
     <% }else{  //if result exists print list  %>
     <tr><td align="center"><br />
     ※ after seach, click addressNum below, end input process automatically.
     </td></tr> 
     <!-- using for statement, print list -->
     <%
     for(int i=0; i<totalList; i++){
        ZipCodeVO vo = zipcodeList.elementAt(i);
        
        //NOT NULL
        String tempZipcode=vo.getZipcode();
        String tempSido=vo.getSido();
        String tempGugun=vo.getGugun();
        String tempDong=vo.getDong();
        String tempRi=vo.getRi();
        String tempBunji=vo.getBunji();
        //FOR NULL
        if(tempRi=="") tempRi=" ";
        if(tempBunji=="") tempBunji=" ";
     %>
     <tr><td>
     <a href="javascript:sendAddress('<%=tempZipcode %>',
     '<%=tempSido %>','<%=tempGugun %>','<%=tempDong %>',
     '<%=tempRi %>','<%=tempBunji %>')">
     
     <%=tempZipcode %>&nbsp;<%=tempSido %>&nbsp;
     <%=tempGugun %>&nbsp;<%=tempDong %>&nbsp;
     <%=tempRi %>&nbsp;<%=tempBunji %>&nbsp;
     
     </a><br>
     <%
     }//end for
     }//end else
      %>
     
    
    <%
    }//end if
   
   %>
   
   </td></tr>
   <tr>
    <td align="center">
    <a href="javascript:this.close()">close</a>
    </td>
   </tr>
  </table>
 </center>
</body>
</html>