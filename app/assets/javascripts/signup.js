$(document).ready(function() {
		$("#toggle-signup").click(function() {
		$('#login-wrapper').hide();
		$('#signup-wrapper').show();
	});

	$("#toggle-login").click(function() {
		$('#signup-wrapper').hide();
		$('#login-wrapper').show();
	});
});
