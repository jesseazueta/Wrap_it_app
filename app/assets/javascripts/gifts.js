var html = ['<a class="delete" href="#">Delete</a>', '<a class="wrap-it" href="*">Wrap-It!</a>']
$('a.delete').on('click', function(event) {
  $(this).parents('li').remove()
});

$('a.wrap-it').on('click', function(event){
  $(this).parents('li').
})
