$(document).on('turbolinks:load', function() {
	$('#purchased').click(function(){
		var purchase_status = $('#purchased').prop('checked');
		$.ajax({
			url: window.location.pathname ,
			method: 'PUT',
			data: {
				gift: {
					purchased: purchase_status			
				}
			}
		})
	});
});
// Updates purchased attribue on Gift objects when checkbox on show page, gifts/:id, is clicked.