$(document).on('turbolinks:load', function() {
  $(document).on('click', '.remove-comment', function(){
    var product_id = $(this).attr('data-product-id');
    var comment_id = $(this).attr('data-comment-id');
    delete_comment(product_id, comment_id);
  });

  $(document).on('click', '.reply-comment', function(){
    var parent_id = $(this).attr('data-parent-id');
    var user_name = $(this).closest('article').find('.comment-author h4').html();
    $('#comment-form #comment_parent_id').val(parent_id);
    $('#comment-form #content').html('@' + $.trim(user_name) + ' ');
  });
  var comment_ids = gon.comment_ids;
  for(index = 0; index < comment_ids.length; index++){
    mention_user(comment_ids[index], gon.mention_usernames);
  }
});

function delete_comment(product_id, comment_id){
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
        type: "DELETE",
        url: "/products/" + product_id + "/comments/" + comment_id
      });
    }
    else {
      swal.close();
    }
  });
}

function mention_user(comment_id, mention_usernames){
  var comment_content = $('.comment-content-' + comment_id + ' p');
  var content = comment_content.text();
  var check = false;
  for(i = 0; i < content.length; i ++){
    if(content[i] == '@' && (content[i - 1] == ' ' || i == 0)){
      var user_tag = '';
      check = false;
      mention_usernames = mention_usernames.split(',');
      for(j = 0; j < mention_usernames.length; j++){
        k = 2;
        while(k <= content.length){
          user_tag = content.slice(i + 1, k);
          if(user_tag.toLowerCase() == mention_usernames[j].toLowerCase()){
            user_tag = mention_usernames[j]
            check = true;
            break;
          }
          else
            k++;
        }
        if(check)
          break;
        else
          check = false;
      }
      if(check){
        content = content.substr(0, i) + '<a href="javascript:void(0)" class="user_tag">' + user_tag + '</a>' +
          content.substr(i + user_tag.length + 1);
        break;
      }
    }
  };
  comment_content.html('').append(content);
}
