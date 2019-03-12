module Admin
  class AdminBaseController < ApplicationController
    before_action :authenticate_user!
    before_action :verify_admin!

    include AdminBaseHelper
    include ProductsHelper
    include OrdersHelper

    layout "admin/layouts/application_admin"

    private

    def verify_admin!
      unless current_user.role.name == "admin"
      # return if manager_scope? current_user
      # flash[:danger] = t "unauthorize"
        redirect_to root_path
      end
    end
  end
end
