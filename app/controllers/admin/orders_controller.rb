module Admin
  class OrdersController < AdminBaseController
    before_action :load_order, only: [:update]

    def index
      @orders = Order.all
    end

    def update
      if @order.update_attributes status: params[:status].to_i
        update_order_details
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
      redirect_to admin_root_path
    end

    def update_order_details
      order_detail_ids = @order.OrderDetails.by_order_id(@order.id).pluck :id
      hash_status = order_detail_ids.map{|n| {status: params[:status].to_i}}
      OrderDetail.update order_detail_ids, hash_status
    end
  end
end
