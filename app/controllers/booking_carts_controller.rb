class BookingCartsController < ApplicationController
  before_action :get_booking_cart, only: %i(index update destroy)
  before_action :load_products, :init_cart, only: %i(create update destroy)
  # before_action :authenticate_user!, only: %i(update_info_user)
  before_action :load_users, only: %i(update_info_user order)

  def index
  end

  def create
    if @index_product
      session[:cart][@index_product].quantity = params[:quantity].to_i
    else
      @product.quantity = params[:quantity].to_i
      session[:cart] << @product
    end
    redirect_to booking_carts_path
  end

  def update
    session[:cart][@index_product].quantity = params[:quantity].to_i
    respond_to do |format|
      format.js
    end
  end

  def destroy
    session[:cart].delete_at(@index_product)
    if session[:cart].empty?
      flash[:danger] = t ".empty_cart"
      redirect_to root_path
    end
    respond_to do |format|
      format.js
    end
  end

  def update_info_user
    respond_to do |format|
      format.js
    end
  end

  def order
    if update_user
      insert_order
      insert_order_detail
      session[:cart] = nil
      flash[:success] = t ".order_success"
      redirect_to root_path
    end
  end

  private

  def init_cart
    session[:cart] = [] unless session[:cart]
    @index_product = session[:cart].find_index(@product)
  end

  def load_products
    @product = Product.find_by id: params[:id]
    return if @product
    redirect_to root_path
  end

  def get_booking_cart
    @booking_carts = session[:cart]
    if @booking_carts.nil? || @booking_carts.empty?
      flash[:danger] = t ".empty_cart"
      redirect_to root_path
    end
  end

  def load_users
    if current_user.nil?
      redirect_to new_user_session_path
    else
      @user = User.find_by id: current_user.id
    end
  end

  def update_user
    @user.ignore_valid_pass = true
    unless @user.update_attributes user_params
      flash.now[:danger] = t ".update_failed"
      respond_to do |format|
        format.js {render :update_info_user}
      end
      return false
    else
      return true
    end
  end

  def user_params
    params.require(:user).permit :name, :email, :phone, :address
  end

  def insert_order
    @order = Order.create!(user_id: current_user.id, order_date: Time.now.strftime("%d/%m/%Y %H:%M"))
  end

  def insert_order_detail
    session[:cart].each do |product|
      OrderDetail.create!(order_id: @order.id, product_id: product.id, quantity: product.quantity, sale_price: (product.quantity* product.price))
    end
  end
end
