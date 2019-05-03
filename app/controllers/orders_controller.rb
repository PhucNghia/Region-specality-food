class OrdersController < ApplicationController
  before_action :verify_user!

  def index
    @orders = Order.by_user_id current_user.id
  end

  private

  def verify_user!
    unless current_user && current_user.role.name == "user"
      redirect_to root_path
    end
  end
end
