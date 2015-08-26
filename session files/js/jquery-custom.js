/*windows 8 phone fix*/
(function() {
	if ("-ms-user-select" in document.documentElement.style && navigator.userAgent.match(/IEMobile\/10\.0/)) {
		var msViewportStyle = document.createElement("style");
		msViewportStyle.appendChild(
			document.createTextNode("@-ms-viewport{width:auto!important}")
		);
		document.getElementsByTagName("head")[0].appendChild(msViewportStyle);
	}
})();

// Jquery with no conflict
jQuery(document).ready(function($) {
	//social
	$('header .social a.social-toggle').click(function() {
		if ($('header .social').hasClass('down')) $('header .social').removeClass('down');
		else $('header .social').addClass('down');
	});
	
	/* custom thumbnail caption hover animation*/
	/*
	$('.thumbcaption').hover(function() {$(this).children('span').animate({bottom:"0"}, {easing:"easeInOutCubic", duration: 500});},
		function() {$(this).children('span').animate({bottom:"-100"}, {easing:"easeInOutCubic", duration: 500});});
	*/
		
	$(".community-list").on( "mouseover", ".thumbcaption", function() {
		$(this).children('span').animate({bottom:"0"}, {easing:"easeInOutCubic", duration: 500});
	});
	$(".community-list").on( "mouseout", ".thumbcaption", function() {
		$(this).children('span').animate({bottom:"-100"}, {easing:"easeInOutCubic", duration: 500});
	});
	
});