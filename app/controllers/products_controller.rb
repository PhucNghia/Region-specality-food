class ProductsController < ApplicationController
  before_action :load_products, only: %i(show)

  def index
    @products = Product.order('region_id asc').page(params[:page]).per_page 4
    most_bought_product
  end

  def show
    @comment = Comment.new
    @comments = @product.comments.without_parent.infor_comment.created_desc

    user_ids = @product.comments.pluck(:user_id).uniq
    @mention_usernames = User.by_id(user_ids).pluck(:name).join(',')

    gon.comment_ids = @product.comments.pluck(:id)
    gon.mention_usernames = @mention_usernames

    most_bought_product
  end

  private

  def load_products
    @product = Product.find_by id: params[:id]
    return if @product
    flash[:danger] = t ".not_found"
    redirect_to root_path
  end

  def most_bought_product
    most_bought = OrderDetail.limit(6).pluck(:product_id)
    most_bought = most_bought + Product.limit(6 - most_bought.length).pluck(:id) if most_bought.length < 6
    @most_bought_products = Product.where(id: most_bought)
  end
end
