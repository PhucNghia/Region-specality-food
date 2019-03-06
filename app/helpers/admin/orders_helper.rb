module Admin::OrdersHelper
  def order_detail order
    OrderDetail.find_by order_id: order.id
  end
end
