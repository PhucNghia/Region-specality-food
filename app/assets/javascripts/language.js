$(document).on('turbolinks:load', function(){
  $('.languages li').click(function(e){
    language = $(this).attr('data-lang');
    $.ajax({
      url: '/languages/set_language',
      method: 'POST',
      data: {
        'language': language
      }
    })
  });
});
