$(document).ready(function () {
			$("#cancel").css({"display":"none"});
			$("#change_detail").css({"display":"none"});
			$("#firstname_us").attr("readonly",true);
			$("#lastname_us").attr("readonly",true);
			$("#avt_url").attr("readonly",true);
			$("#email_us").attr("readonly",true);
			$("#phone_us").attr("readonly",true);
			$("#password_us").attr("readonly",true);
			$("#bir_us").attr("readonly",true);
			$("#add_us").attr("readonly",true);
	        $('#editfname').click(function(){
				$("#firstname_us").attr("readonly",false);
				$("#change_detail").css({"display":"inline-block"});
				$("#firstname_us").attr("required","required");
				$("#cancel").css({"display":"inline-block"});
			});
			$('#editphone').click(function(){
				$("#phone_us").attr("readonly",false);
				$("#change_detail").css({"display":"inline-block"});
				$("#phone_us").attr("required","required");
				$("#cancel").css({"display":"inline-block"});
			});
			 $('#editbir').click(function(){
				$("#bir_us").attr("readonly",false);
				$("#change_detail").css({"display":"inline-block"});
				$("#cancel").css({"display":"inline-block"});
			});
			  $('#editadd').click(function(){
				$("#add_us").attr("readonly",false);
				$("#change_detail").css({"display":"inline-block"});
				$("#add_us").attr("required","required");
				$("#cancel").css({"display":"inline-block"});
			});
			$('#editlname').click(function(){
				$("#lastname_us").attr("readonly",false);
				$("#change_detail").css({"display":"inline-block"});
				$("#lastname_us").attr("required","required");
				$("#cancel").css({"display":"inline-block"});
			});
			$('#editemail').click(function(){
				$("#email_us").attr("readonly",false);
				$("#email_us").attr("required","required");
				$("#change_detail").css({"display":"inline-block"});
				$("#cancel").css({"display":"inline-block"});
			});
			$('#editpass').click(function(){
				$("#password_us").attr("readonly",false);
				$("#password_us").attr("required","required");
				$("#change_detail").css({"display":"inline-block"});
				$("#cancel").css({"display":"inline-block"});
			});
			$('#editavt').click(function(){
				$("#change_detail").css({"display":"inline-block"});
				$("#my_file").click();
				$("#avt_url").value = $("#my_file").files;
				$("#cancel").css({"display":"inline-block"});
			});
		
    	});
		var input = document.querySelector('#my_file');
		var preview = document.querySelector('.preview');
		input.addEventListener('change',updateImageDisplay);
		function updateImageDisplay() {
		  while(preview.firstChild) {
		    preview.removeChild(preview.firstChild);
		  }

		  var curFiles = input.files;
	  		var reader = new window.FileReader();
	       	var blob = new Blob(input.files, { type: 'text/plain' });
			reader.readAsDataURL(blob);   
			reader.onloadend = function() {
			    document.getElementById('avt_url').value= reader.result;                
			}
		  if(curFiles.length === 0) {
		    document.getElementById('avt_url').value= 'No files currently selected for upload';
		  } else {
		    var list = document.createElement('ol');
		    preview.appendChild(list);
		    for(var i = 0; i < curFiles.length; i++) {
		      var listItem = document.createElement('li');
		      if(validFileType(curFiles[i])) {
		        var image = document.createElement('img');
		        image.src = window.URL.createObjectURL(curFiles[i]);
		        listItem.appendChild(image);

		      } else {
		        document.getElementById('avt_url').value = 'File name ' + curFiles[i].name + ': Not a valid file type. Update your selection.';
		      }

		      list.appendChild(listItem);
		    }
		  }
		}
		var fileTypes = [
		  'image/jpeg',
		  'image/pjpeg',
		  'image/png'
		]

		function validFileType(file) {
		  for(var i = 0; i < fileTypes.length; i++) {
		    if(file.type === fileTypes[i]) {
		      return true;
		    }
		  }

		  return false;
		}