$(document).on('turbolinks:load', function(){
  $('.languages ul li').click(function(e){
    language = $(this).attr('data-lang');
    $.ajax({
      url: '/languages/set_language',
      method: 'POST',
      data: {
        'language': language
      }
    }).done(function(result) {
      window.location.reload();
    });
  });
});
