class ProductsController < ApplicationController
  before_action :load_products, only: %i(show)

  def index
    @products = Product.all
  end

  def show
    @comment = Comment.new
    @comments = @product.comments.without_parent.infor_comment.created_desc

    user_ids = @product.comments.pluck(:user_id).uniq
    @mention_usernames = User.by_id(user_ids).pluck(:name).join(',')

    gon.comment_ids = @product.comments.pluck(:id)
    gon.mention_usernames = @mention_usernames
  end

  private

  def load_products
    @product = Product.find_by id: params[:id]
    return if @product
    flash[:danger] = t ".not_found"
    redirect_to root_path
  end
end
