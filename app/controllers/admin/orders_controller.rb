module Admin
  class OrdersController < AdminBaseController
    before_action :load_order, only: [:update]

    def index
      @orders = Order.all
    end

    def update
      if @order.update_attributes status: params[:status].to_i
        flash.now[:success] = t ".update_success"
        @orders = Order.all
        respond_to do |format|
          format.js
        end
      end
    end

    private

    def load_order
      @order = Order.find_by id: params[:id]
      return if @order
      redirect_to root_path
    end
  end
end
