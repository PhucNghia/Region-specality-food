class OrderDetailsController < ApplicationController
  before_action :load_order, only: [:index, :update]
  before_action :load_order_detail, only: [:update]

  def index
    load_order_details
  end

  def update
    if @order_detail.update_attributes status: "cancel"
      load_order_details
      update_order
      @orders = Order.by_user_id current_user.id
      flash.now[:success] = t ".update_success"
      respond_to do |format|
        format.js
      end
    else
      redirect_to root_path
    end
  end

  private

  def load_order_details
    @order_details = @order.OrderDetails.all
    @order_user = User.find_by id: @order.user_id
    sum = 0
    @order_details.each{|item| sum += item.quantity unless item.status == "cancel"}
    @total_quantity = sum
    sum = 0
    @order_details.each{|item| sum += item.sale_price unless item.status == "cancel"}
    @total_sale_price = sum
  end

  def load_order
    @order = Order.find_by id: params[:order_id]
    return if @order
    redirect_to root_path
  end

  def load_order_detail
    @order_detail = OrderDetail.find_by id: params[:id]
    return if @order_detail && @order_detail.status == "inprogress"
    redirect_to root_path
  end

  def update_order
    check = 0
    @order_details.pluck(:status).each do |status|
      if status == "cancel"
        check += 1
      end
    end
    if check == @order_details.length
      @order.update_attributes status: "cancel"
    end
  end
end
