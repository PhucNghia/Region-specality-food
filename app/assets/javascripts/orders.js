$(document).on('turbolinks:load', function() {
  $(document).on('click', '.cancel-product', function() {
    var order_detail_id = $(this).attr('data-order-detail-id');
    var order_id = $(this).attr('data-order-id')
    change_status(order_detail_id, order_id);
  });
});

function change_status(order_detail_id, order_id) {
  swal({
    title: I18n.t('confirm_change'),
    icon: 'warning',
    buttons: {
      cancel: {
        text: I18n.t('cancel'),
        value: null,
        visible: true
      },
      confirm: {
        text: I18n.t('ok'),
        value: true,
        visible: true
      }
    },
  }).then(function (isConfirm) {
    if (isConfirm) {
      $.ajax({
        url: '/order_details/' + order_detail_id,
        type: 'patch',
        data: {
          order_id: order_id
        }
      });
    }
    else {
      object.val(previous);
      swal.close();
    }
  });
}
