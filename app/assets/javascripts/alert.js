$(document).on('turbolinks:load', function(){
  $('#alert-messages').fadeOut(7000);

  function resetAlert() {
    $('#alert-notification')
    .contents()
    .filter(function() {
      return this.nodeType === 3;
    }).remove();
    $('#alert-notification').removeClass('alert-success alert-danger');
  }

  function highlight_error() {
    $('.error').css('color', 'red');
    $('.error').parent().find('input').css('border', '1px solid red');
  }
});
