$(document).on('turbolinks:load', function() {
  var previous;
  $('.order_status').on('focus', function() {
    previous = $(this).val();
  }).change(function() {
    var order_id = $(this).parents('tr').find('#order-id a').html().substr(1);
    var status = $(this).val();
    change_status($(this), previous, order_id, status);
  });
});

function change_status(object, previous, order_id, status) {
  swal({
    title: I18n.t('confirm_change'),
    icon: 'warning',
    buttons: {
      cancel: {
        text: I18n.t('cancel'),
        value: null,
        visible: true,
      },
      confirm: {
        text: I18n.t('ok'),
        value: true,
        visible: true,
      }
    },
  }).then(function (isConfirm) {
    if (isConfirm) {
      $.ajax({
        url: '/admin/orders/' + order_id,
        type: 'patch',
        data: {
          status: status
        }
      });
    }
    else {
      object.val(previous);
      swal.close();
    }
  });
}
