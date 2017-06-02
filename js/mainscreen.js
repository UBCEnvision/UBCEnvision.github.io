/*$(document).ready(function () {  
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
});*/

$(".navbar-fixed-top").autoHidingNavbar()
$(".navbar-fixed-top").autoHidingNavbar("setShowOnBottom()", false)

//Doc idle test


/*$(".navbar-fixed-top").autoHidingNavbar();
$(".navbar-fixed-top").autoHidingNavbar('setShowOnBottom', false);*/

// Hide Header on on scroll down
/*var didScroll;
var lastScrollTop = 0;
var delta = 5;
var navbarHeight = $('nav').outerHeight();

$(window).scroll(function(event){
    didScroll = true;
});

setInterval(function() {
    if (didScroll) {
        hasScrolled();
        didScroll = false;
    }
}, 250);

function hasScrolled() {
    var st = $(this).scrollTop();
    
    // Make sure they scroll more than delta
    if(Math.abs(lastScrollTop - st) <= delta)
        return;
    
    // If they scrolled down and are past the navbar, add class .nav-up.
    // This is necessary so you never see what is "behind" the navbar.
    if (st > lastScrollTop && st > navbarHeight){
        // Scroll Down
        $('nav').removeClass('nav-down').addClass('nav-up');
    } else {
        // Scroll Up
        if(st + $(window).height() < $(document).height()) {
            $('nav').removeClass('nav-up').addClass('nav-down');
        }
    }
    
    lastScrollTop = st;
}*/

/*$(document).idle({

  onIdle: function(){
    $("#navbar").fadeOut();
  },
  idle: 1000

});*/