function idCheck(id){
 if(id == ""){
  alert("input your id");
  document.regForm.id.focus();
 }else{
  url="member.mdo?cmd=idCheck&id="+id;
  window.open(url, "post", "width=300,height=150");
 }
}
function zipCheck(){
 url="member.mdo?cmd=zipCheck&check=y";
 window.open(url, "post", "toolbar=no,width=500, height=300,"+
   "directories=no, status=yes, scrollbars=yes, menubar=no");
 
}
function dongCheck(){
 
 if(document.zipForm.dong.value==""){
  alert("input dong");
  document.zipForm.dong.focus();
  return;  
 }
 document.zipForm.submit();
}
function sendAddress(zipcode, sido, gugun, dong, ri, bunji){
 var address=sido+" "+gugun+" "+dong+" "+ri+" "+bunji;
 opener.document.regForm.zipcode.value=zipcode;
 opener.document.regForm.address1.value=address;
 self.close();
}
function inputCheck(){
 if(document.regForm.id.value==""){
  alert("input id");
  document.regForm.id.focus();
  return;
 }
 if(document.regForm.pass.value==""){
  alert("input pw");
  document.regForm.pass.focus();
  return;
 }
 if(document.regForm.repass.value==""){
  alert("check pw");
  document.regForm.repass.focus();
  return;
 }
 if(document.regForm.pass.value != document.regForm.repass.value ){
  alert("pw not same");
  document.regForm.repass.focus();
  return;
 }
 if(document.regForm.name.value==""){
  alert("input name");
  document.regForm.name.focus();
  return;
 }
 if(document.regForm.phone1.value==""){
  alert("check telecom num");
  document.regForm.phone1.focus();
  return;
 }
 if(document.regForm.phone2.value==""){
  alert("check tel1 num");
  document.regForm.phone2.focus();
  return;
 }
 if(document.regForm.phone3.value==""){
  alert("check tel2 num");
  document.regForm.phone3.focus();
  return;
 }
 if(document.regForm.email.value==""){
  alert("input email");
  document.regForm.email.focus();
  return;
 }
 //check whether email type vaild or nor
 var str=document.regForm.email.value;
 
 var atPos=str.indexOf('@');
 var atLastPos=str.indexOf('@');
 var dotPos=str.indexOf('.');
 var spacePos=str.indexOf(' ');
 var commaPos=str.indexOf(',');
 var eMailSize=str.length;
 
 if(atPos > 1 && atPos == atLastPos && dotPos > 3 
   && spacePos == -1 && commaPos ==-1 
   && atPos + 1 < dotPos && dotPos +1 < eMailSize);
 else{
  alert("email type missed, please re-input");
  document.regForm.email.focus();
 return;
 }
 if(document.regForm.zipcode.value==""){
  alert("input addressNum");
  document.regForm.zipcode.focus();
  return;
 }
 if(document.regForm.address1.value==""){
  alert("input address1");
  document.regForm.address1.focus();
  return;
 }
 if(document.regForm.address2.value==""){
  alert("input address2");
  document.regForm.address2.focus();
  return;
 }
 document.regForm.submit();
 
}
 function updateCheck(){
  if(document.regForm.id.value==""){
   alert("input id");
   document.regForm.id.focus();
   return;
  }
  if(document.regForm.pass.value==""){
   alert("input pw");
   document.regForm.pass.focus();
   return;
  }
  if(document.regForm.repass.value==""){
   alert("check pw");
   document.regForm.repass.focus();
   return;
  }
  if(document.regForm.pass.value != document.regForm.repass.value ){
   alert("pw not same");
   document.regForm.repass.focus();
   return;
  }
  if(document.regForm.name.value==""){
   alert("input name");
   document.regForm.name.focus();
   return;
  }
  if(document.regForm.phone1.value==""){
   alert("check telecom num");
   document.regForm.phone1.focus();
   return;
  }
  if(document.regForm.phone2.value==""){
   alert("check tel1 num");
   document.regForm.phone2.focus();
   return;
  }
  if(document.regForm.phone3.value==""){
   alert("check tel2 num");
   document.regForm.phone3.focus();
   return;
  }
  if(document.regForm.email.value==""){
   alert("input email");
   document.regForm.email.focus();
   return;
  }
  //check whether email type vaild or nor
  var str=document.regForm.email.value;
  
  var atPos=str.indexOf('@');
  var atLastPos=str.indexOf('@');
  var dotPos=str.indexOf('.');
  var spacePos=str.indexOf(' ');
  var commaPos=str.indexOf(',');
  var eMailSize=str.length;
  
  if(atPos > 1 && atPos == atLastPos && dotPos > 3 
    && spacePos == -1 && commaPos ==-1 
    && atPos + 1 < dotPos && dotPos +1 < eMailSize);
  else{
   alert("email type missed, please re-input");
   document.regForm.email.focus();
  return;
  }
  if(document.regForm.zipcode.value==""){
   alert("input addressNum");
   document.regForm.zipcode.focus();
   return;
  }
  if(document.regForm.address1.value==""){
   alert("input address1");
   document.regForm.address1.focus();
   return;
  }
  if(document.regForm.address2.value==""){
   alert("input address2");
   document.regForm.address2.focus();
   return;
  }
  document.regForm.submit();
  
 function begin(){
  document.myForm.pass.focus();
    
 }
 
 function checkIt(){
  if(!document.myForm.pass.value){
   alert("the pass not same");
   document.myForm.pass.focus();
   return false;
  }
  
 }
} 