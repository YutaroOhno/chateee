$(function() {
$('.room_thumbnail').on("click", function(){
$('#new_room_image').attr('src', $(this).attr('src')).addClass('main_image');
});
});

