module Admin
  class AdminBaseController < ApplicationController
    before_action :verify_admin!
    layout "application_admin"

    private

    def verify_admin!
      # return if manager_scope? current_user
      # flash[:danger] = t "unauthorize"
      # redirect_to root_path
    end
  end
end
