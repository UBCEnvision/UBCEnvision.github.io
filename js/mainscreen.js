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

				// else 
				// {
				// 	$("#navbar").fadeOut();
				// }
			});
	});
});
//this function tracks the direction of the scroll wheel. thus determining scoll direction
//the else statement is null rightnow because it conflicts with the mousemove event handler below
// due to this conflict the need to track mousewheel is near useless.
$(function() {

$(window).on('wheel', function(e) {
	var delta = e.originalEvent.deltaY;
		if (delta < 0) {//$('body').text('up');
			$("#navbar").fadeIn();
		}
		// else {//$('body').text('down');
		// 	$("#navbar").fadeOut();
		// }

		//return false; // this line is only added so the whole page won't scroll in the demo
	});
});
//the idle function enables the navbr to fadeout allowing the user to read from a larger screen
//on Active works as well as the function below
$(document).idle({
  onIdle: function(){
    $("#navbar").fadeOut();
  },
  //  onActive: function(){
  //   $("#navbar").fadeIn();
  // },
  events: 'mouseover mouseout',
  idle: 1000
});

//this tracks when the mouse has moved and fades in the navbar. 
// there is a conflict because whenthe page is scrolled, the mouse has "moved" preventing the fadeout in the else statement
$(document).ready(function(){
	$(document).mousemove(function(){
		$("#navbar").fadeIn();
		});
});