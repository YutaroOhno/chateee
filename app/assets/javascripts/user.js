$( function(){
$('.thumbnail').click(function(){
$('#main_image').attr('src', $(this).attr('src'));
$(this).css('opacity', '1.0')
$(this).siblings().css('opacity','0.5')
$('#user_image').attr('value', $(this).attr('src'))
});
});