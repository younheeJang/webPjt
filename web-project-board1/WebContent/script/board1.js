function board1Check(){
	if(document.frm.name.value.length==0){
		alert("input writer");
		return false;
	}
	if(document.frm.pass.value.length==0){
		alert("input pass");
		return false;
	}
	if(document.frm.title.value.length==0){
		alert("input title");
		return false;
	}
return true;
}

function board1LoginCheck(){
	if(document.frm.id.value.length==0){
		alert("input id");
		return false;
	}
	if(document.frm.pass.value.length==0){
		alert("input pass");
		return false;
	}
return true;
}

function open_win(url, name){
	window.open(url, name, "width=500, height=230");	
}

function passCheck(){
		if(document.frm.pass.value.length==0){
			alert("input pass");
			return false;
		}
return true;
}

