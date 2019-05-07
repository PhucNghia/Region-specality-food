module Admin
  class OrderDetailsController < AdminBaseController
    before_action :load_order

    def index
      @order_details = @order.OrderDetails.all
      sum = 0
      @order_details.each{|item| sum += item.quantity unless item.status == "cancel"}
      @total_quantity = sum
      sum = 0
      @order_details.each{|item| sum += item.sale_price unless item.status == "cancel"}
      @total_sale_price = sum
    end

    private

    def load_order
      @order = Order.find_by id: params[:order_id]
      return if @order
      redirect_to root_path
    end
  end
end
