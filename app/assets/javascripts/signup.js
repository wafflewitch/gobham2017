$(document).ready(function() {
		$("#toggle-signup").click(function() {
		$('#login-wrapper').hide();
		$('#signup-wrapper').show();
	});

	$("#toggle-login").click(function() {
		$('#signup-wrapper').hide();
		$('#login-wrapper').show();
	});
	$("div[data-link]").click(function() {
		window.location = $(this).attr("data-link")
	});
});
