
$(document).ready(function(){

	$("#display").click(function(){
		$.ajax({
			type: "GET",
			// here will be but the url to the main server
			// but for now localhost is the server so....
			url: "server.php",
			dataType: "html",
			success: function(response){
				$("#responsecontainer").html(response);
				console.log("Data successfully returned.");
			}
		});
	});
});