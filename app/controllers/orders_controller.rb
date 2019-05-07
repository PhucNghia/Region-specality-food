class OrdersController < ApplicationController
  before_action :verify_user!

  def index
    @orders = Order.by_user_id current_user.id
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new order_params
    if @order.save
      product_name = insert_order_detail
      unless product_name == true
        order_details = OrderDetail.where order_id: @order.id
        order_details.each{|order_detail| order_detail.destroy}
        @order.destroy
        flash[:danger] = t ".not_enough", product: product_name
        redirect_to booking_carts_path
      else
        update_product_quantities
        flash[:success] = t ".order_success"
        session[:cart] = nil
        redirect_to root_path
      end
    else
      flash.now[:danger] = t ".order_failed"
      respond_to do |format|
        format.js {render :new}
      end
    end
  end

  private

  def verify_user!
    unless current_user && current_user.role.name == "user"
      flash[:danger] = t ".unauthenticated"
      redirect_to new_user_session_path
    end
  end

  def order_params
    params[:order][:order_date] = Time.now.strftime("%d/%m/%Y %H:%M")
    params.require(:order).permit :user_id, :order_date, :receiver_name, :email, :phone, :receiver_address
  end

  def insert_order_detail
    session[:cart].each do |product|
      product_store = Product.find_by id: product.id
      return product.name if product.quantity > product_store.quantities
      OrderDetail.create!(order_id: @order.id, product_id: product.id, quantity: product.quantity, sale_price: (product.quantity* product.price))
    end
    true
  end

  def update_product_quantities
    order_details = OrderDetail.where order_id: @order.id
    order_details.each do |order_detail|
      product = Product.find_by id: order_detail.product_id
      new_quantity = product.quantities - order_detail.quantity
      product.update_columns quantities: new_quantity, status: new_quantity == 0 ? 0 : 1
      product.save
    end
  end
end
