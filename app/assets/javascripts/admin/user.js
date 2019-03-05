$(document).on('turbolinks:load', function() {
  $('.delete-user').on('click', function() {
    var id = $(this).attr('data-id');
    swal({
      title: I18n.t('confirm_destroy'),
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
          url: '/admin/users/' + id,
          type: 'DELETE'
        });
      }
      else {
        swal.close();
      }
    });
  });
});
