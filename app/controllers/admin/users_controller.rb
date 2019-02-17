module Admin
  class UsersController < AdminBaseController
    before_action :load_user, only: %i(edit update destroy)

    def index
      @users = User.all
    end

    private

    def load_user
      @user = User.find_by id: params[:id]
      return if @user
      flash[:danger] = t "users.show.not_found"
      redirect_to root_path
    end
  end
end
