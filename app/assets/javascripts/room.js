$(function() {
$('.room_thumbnail').on("click", function(){
$('#new_room_image').attr('src', $(this).attr('src')).addClass('main_image');
$('#room_room_image').attr('value',$(this).attr('src'));
$(this).css('opacity', '1.0')
$(this).siblings().css('opacity','0.5')
});
});

