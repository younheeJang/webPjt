function writeSave(){
	
	if(document.writeForm.writer.value==""){
		  alert("input writer");
		  document.writeForm.writer.focus();
		  return false;
		 }
		 if(document.writeForm.email.value==""){
		  alert("input email");
		  document.writeForm.email.focus();
		  return false;
		 }
		 if(document.writeForm.subject.value==""){
		  alert("input title");
		  document.writeForm.subject.focus();
		  return false;
		 }
		 if(document.writeForm.content.value==""){
		  alert("input content");
		  document.writeForm.content.focus();
		  return false;
		 }
		 if(document.writeForm.pass.value==""){
		  alert("input pass");
		  document.writeForm.pass.focus();
		  return false;
		 } 
}

function searchCheck(){

	if(searchForm.keyWord.value == ""){
        
		alert("input search text.");
		searchForm.keyWord.focus();
        return false;
    }
         
}
