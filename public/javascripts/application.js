// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

// Append the function to the "document ready" chain
jQuery(function($) {
	
	$('#flash_notice').click(function(){
		$(this).slideUp();
	});
	
	$('div.plan-item').click(function(){
		
		var linkr = $(this).children('div.linkr');
		var edit = $(linkr).children('a').first();
		window.location = $(edit).attr('href');
	});
	
	//alle externe links afvangen en window location zetten
	$('a').click(function(){
		window.location = $(this).attr('href');
		return false;
	});
	
})

