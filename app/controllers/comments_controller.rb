class CommentsController < ApplicationController
  before_action :authenticate_user!, only: %i(create destroy)
  before_action :load_product, only: %i(new create edit update destroy)
  before_action :load_comment, only: %i(edit update destroy)

  def new
    @comment = Comment.new
  end

  def create
    @comment = current_user.comments.build comment_params
    if @comment.save
      @comments = @product.comments.without_parent.infor_comment.created_desc
      flash.now[:success] = t ".create_success"

      respond_to do |format|
        format.js
      end
    else
      flash.now[:danger] = t ".blank_content"
      render :new
    end
    mention_users
	end

  def edit
  end

  def update
    if @comment.update_attributes comment_params
      flash.now[:success] = t ".update_success"
      @comments = @product.comments.without_parent.infor_comment.created_desc
      respond_to do |format|
        format.js
      end
    else
      flash.now[:danger] = t ".blank_content"
      render :edit
    end
    mention_users
  end

  def destroy
    if @comment.destroy
      flash.now[:success] = t ".delete_success"
    end
    @comments = @product.comments.without_parent.infor_comment.created_desc
    respond_to do |format|
      format.js
    end
    mention_users
  end

  def comment_params
    params.require(:comment).permit :parent_id, :product_id, :content
  end

  def load_product
    @product = Product.find_by id: params[:product_id]
  end

  def load_comment
    @comment = Comment.find_by id: params[:id]
  end

  def mention_users
    user_ids = @product.comments.pluck(:user_id).uniq
    @mention_usernames = User.by_id(user_ids).pluck(:name).join(',')
    @comment_ids = @product.comments.pluck(:id).join(',')
  end
end
