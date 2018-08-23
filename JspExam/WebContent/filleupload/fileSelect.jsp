<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%!public String getParam(HttpServletRequest request, String paramName) {
  //request, paramName tossed , maintain current elements for form paramName
  if (request.getParameter(paramName) != null) {
   //when page first runs when not null, this page sended
   //return value of parameter when send
   return request.getParameter(paramName);
  } else {
   return "";
  }
 }%>
<%
 request.setCharacterEncoding("utf-8");
 int filecounter = 0;
 if (request.getParameter("addcnt") != null) {
  filecounter = Integer.parseInt(request.getParameter("addcnt"));
 }
%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function inputValue(form1, param, form2, idx) {
 var paramValue = form1.elements[idx].value;
 form2.elements[idx].value=paramValue;
 return;
}
function addFile(formName) {
 if(formName.addcnt.value==""){
 alert("click btn, after file's numbers to add");
 formName.addcnt.focus();
 return;
}
formName.submit();
}
function elementCheck(formName) {
 var paramIndex=1;
 for(idx=0; idx<formName.elements.length; idx++){
  if(formName.elements[idx].type=="file"){
  if(formName.elements[idx].value==""){
   
   var message = paramIndex+"th files information unloaded. \n select file upload";
  alert(message);
  formName.elements[idx].focus();
  return;
  }
  paramIndex++;
 }
}
formName.action="fileView.jsp";
formName.submit();
}
</script>
</head>
<body topmargin="100">
 <div align="center">
  <font color="#0000ff" size="2"> after input file counts for
   uploading variout files,<br> click check btn<br> when ends
   input, click done btn
  </font>
 </div>
 <br>
 <form name="frmName1" method="post">
  <table width="75%" border="1" align="center" cellpadding="0"
   cellspacing="1" bordercolor="#660000" bgcolor="#ffff99">
   <tr bgcolor="#FFCC00">
    <td width="10%"><div align="right">user</div></td>
    <td><input type="text" name="user"
     onkeyup="inputValue(this.form, user, frmName2, 0)"
     value="<%=getParam(request, "user")%>"></td>
    <td><input type="text" name="title"
     onkeyup="inputValue(this.form, title, frmName2, 1)"
     value="<%=getParam(request, "title")%>"></td>
   </tr>
   <tr bgcolor="#FFCC00">
    <td width="15%"><div align="right">Abstract</div></td>
    <td width="50%" colspan="3"><textarea cols="40" name="abstract"
      onkeyup="inputValue(this.form, abstract, frmName2, 2)"><%=getParam(request, "abstract")%></textarea>
    </td>
   </tr>
   <tr>
    <td colspan="4"><div align="center">
      <font size="-2">input file to add</font> <input type="text"
       name="addcnt"> <input type="button" value="check"
       onclick="addFile(this.form)">
     </div></td>
   </tr>
  </table>
 </form>
 <form name="frmName2" method="post" enctype="multipart/form-data">
  <table width="75%" border="1" align="center" cellpadding="1"
   cellspacing="1" bordercolor="#660000" bgcolor="#ffff99">
   <tr bgcolor="#FFCC00">
    <td width="40%">
    
    <input type="hidden" name="txtUser"
    value="<%=getParam(request, "user")%>"> 
    
    <input type="hidden" name="txtTitle"
    value="<%=getParam(request, "title")%>"> 
    
    <input type="hidden" name="txtAbstract"
    value="<%=getParam(request, "abstract")%>"> 
    
    <% for(int i=0; i<filecounter; i++){ %>
    <input type="file" size="50" name="selectFile<%=i%>"><br>
    <%} %>
    
    </td>
    
    <td>
    <input type="button" value="DONE"
    onclick="elementCheck(this.form)">
    </td>
   </tr>
  </table>
 </form>
</body>
</html> 