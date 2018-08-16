function required(){

var empt_name = document.forms["form1"]["name"].value;
var empt_email = document.forms["form1"]["email"].value;
var empt_saran = document.forms["form1"]["saran"].value;

	// validasi kosong
	if (empt_name == "" ){
		alert("Nama Wajib diisi");
		alert("Email Wajib diisi");
		return false;
	}

	if(empt_email == ""){
		alert("Email Wajib diisi");
		return false;
	}
	
	if(empt_saran == ""){
		alert("Saran Wajib diisi");
		return false;
	}
	
	// validasi email
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	if(email.value.match(mailformat)){
		document.form1.email.focus();
		return true;
	}
	else{
		alert("You have entered an invalid email address!");
		document.form1.email.focus();
		return false;
	}


	// validasi kosong
	if((empt_email != "") && (empt_name != "") && (empt_saran != "")){

	
	alert('Terima Kasih atas saran Anda ^_^');
	return true; 
	}





  
}