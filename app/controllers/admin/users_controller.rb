module Admin
  class UsersController < AdminBaseController
    before_action :load_user, only: %i(show edit update destroy)

    def index
      @users = User.order('id asc').page(params[:page]).per_page 8
    end

    def show; end

    def new
      @user = User.new
      respond_to do |format|
        format.js
      end
    end

    def create
      @user = User.new user_params
      if @user.save
        flash[:success] = "Them thanh cong"
        redirect_to admin_users_path
      else
        flash.now[:danger] = "Them that bai"
        respond_to do |format|
          format.js {render :new}
        end
      end
    end

    def edit; end

    def update
      if @user.update_attributes user_params
        flash[:success] = t ".update_success"
        redirect_to admin_users_path
      else
        flash.now[:danger] = t ".update_failed"
        respond_to do |format|
          format.js {render :edit}
          format.html {redirect_back fallback_location: admin_users_path}
        end
      end
    end

    def destroy
      if @user.destroy
        flash[:success] = t ".destroy_success"
      else
        flash[:danger] = t ".destroy_failed"
      end
      redirect_to admin_users_path
    end

    private

    def load_user
      @user = User.find_by id: params[:id]
      return if @user
      flash[:danger] = t "users.show.not_found"
      redirect_to root_path
    end

    def user_params
      params.require(:user).permit :name, :username, :email, :birthday, :phone, :address,
       :password, :password_confirmation, :role_id
    end
  end
end
