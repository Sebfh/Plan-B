// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

// Append the function to the "document ready" chain
jQuery(function($) {
	TestJquery = function(message) {
		alert(message);
	}
	
	$('#flash_notice').click(function(){
		$(this).slideUp();
	});
	
	//alle externe links afvangen en window location zetten
	$('a').click(function(){
		window.location = $(this).attr('href');
		return false;
	});
})

