class UsersController < ApplicationController
  before_action :load_user, only: %i(update)

  def edit; end

  def update
    @user.ignore_valid_pass = true
    if @user.update_attributes user_params
      flash[:success] = t ".update_success"
      redirect_to order_path
    else
      flash.now[:danger] = t ".update_failed"
      respond_to do |format|
        format.js {render 'booking_carts/update_info_user'}
      end
    end
  end

  private

  def load_user
    @user = User.find_by id: params[:id]
    return if @user
    flash[:danger] = t "users.show.not_found"
    redirect_to root_path
  end

  def user_params
    params.require(:user).permit :name, :email, :phone, :address
  end
end
