# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$("document").ready ->
	$("#button").clicktoggle(
		() ->
			$("#button").animate({ left: 270 }, 'slow')
			$("#button").addClass("close")
			$("#menu").animate({ left: 0 }, 'slow')
			return
		() ->
			$("#button").animate({ left: 20 }, 'slow')
			$("#button").removeClass("close")
			$("#menu").animate({ left: -250 }, 'slow')
			return
	)
	return