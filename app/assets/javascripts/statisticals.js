$(document).on('turbolinks:load', function() {
  var statistical = $('input.statistical').val();
  if (statistical == "true"){
    $.ajax({
      type: "POST",
      url: "statisticals/",
      data: {
        quantity: 1
      }
    });
  }
});