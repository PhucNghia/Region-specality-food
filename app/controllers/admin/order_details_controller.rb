module Admin
  class OrderDetailsController < AdminBaseController
    before_action :load_order, only: [:index]

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

    def report
      orders = Order.all
      @order_details = []
      orders.each do |order|
        order.OrderDetails.all.each do |o|
          if o.status == "success"
            o.created_at = order.order_date
            @order_details.push(o)
          end
        end
      end

      total_quantity = 0
      total_sale_price = 0

      @order_details.each do |item| 
        total_quantity += item.quantity
        total_sale_price += item.sale_price
      end
      @total_quantity = total_quantity
      @total_sale_price = total_sale_price
    end

    private

    def load_order
      @order = Order.find_by id: params[:order_id]
      return if @order
      redirect_to root_path
    end
  end
end
