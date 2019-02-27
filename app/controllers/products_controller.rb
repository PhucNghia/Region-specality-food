class ProductsController < ApplicationController
  before_action :load_products, only: %i(show)

  def index
    @products = Product.all
  end

  def show
  end

  private

  def load_products
    @product = Product.find_by id: params[:id]
    return if @product
    flash[:danger] = "Not found product!"
  end
end
