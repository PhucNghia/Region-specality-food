class BookingCartsController < ApplicationController
  before_action :get_booking_cart, only: %i(index update destroy)
  before_action :load_products, :init_cart, only: %i(create update destroy)

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
end
