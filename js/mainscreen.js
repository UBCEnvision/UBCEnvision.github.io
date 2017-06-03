$(document).ready(function () {  
	// hide .navbar first
		$("#navbar").hide();

		// fade in .navbar
		$(function () {
			$(window).scroll(function () {
	            // set distance user needs to scroll before we fadeIn navbar
				if ($(this).scrollTop() > 100) 
				{
					$("#navbar").fadeIn();
				} 

				else 
				{
					$("#navbar").fadeOut();
				}
			});
	});
});
//Doc idle test
$(document).idle({
  onIdle: function(){
    $("#navbar").fadeOut();
  },
  idle: 1000
});

$(document).ready(function(){
	$("#sequel").click(function(){
		alert("no we will never be there");
	});
});
$(document).ready(function(){
	$(document).mousemove(function(){
		$("#navbar").fadeIn();
		});
});
