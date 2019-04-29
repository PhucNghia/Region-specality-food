module Admin
  class OrderDetailsController < AdminBaseController
    before_action :load_order

    def index
      @order_details = @order.OrderDetails.all
      @order_user = User.find_by id: @order.user_id
      @total_quantity = @order_details.pluck(:quantity).inject{|sum, quantity| sum += quantity}
      @total_sale_price = @order_details.pluck(:sale_price).inject{|sum, sale_price| sum += sale_price}
    end

    private

    def load_order
      @order = Order.find_by id: params[:order_id]
      return if @order
      redirect_to root_path
    end
  end
end
