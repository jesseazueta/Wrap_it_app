$(document).on('turbolinks:load', function() {
	$('.add-friend').click(function(){
		var newFriendId = $(this).attr('data-user-id');
		var currentUser = $('#back-to-profile').attr('data-current-user-id');
		$.post('/friendships', { friendship: { user_id: currentUser, friend_id: newFriendId } });
	})
});