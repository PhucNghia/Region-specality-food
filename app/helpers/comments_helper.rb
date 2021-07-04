module CommentsHelper
  def check_user_comment user_id
    return true if user_id == current_user.id || current_user.role.id == 1
  end

  def replies comment
  	Comment.within_parent(comment.id).created_desc.infor_comment
  end

  def count_comment product
  	Comment.by_product_id(product.id).count
  end
end
