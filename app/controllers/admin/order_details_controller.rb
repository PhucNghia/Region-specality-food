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
      
      respond_to do |format|
        format.html
        format.js
        format.pdf do
          render pdf: "invoice",
          page_size: 'A4',
          template: "admin/order_details/index.html.erb",
          layout: "admin/layouts/pdf.html",
          orientation: "Landscape",
          lowquality: true,
          zoom: 1,
          dpi: 75
        end
      end
    end

    private

    def load_order
      @order = Order.find_by id: params[:order_id]
      return if @order
      redirect_to root_path
    end
  end
end
