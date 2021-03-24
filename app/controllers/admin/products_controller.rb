module Admin
  class ProductsController < AdminBaseController
    before_action :load_product, only: %i(show edit update destroy)
    skip_before_action :verify_authenticity_token, only: %i(create update)

    def index
      @products = Product.order('region_id asc').page(params[:page]).per_page 8
    end

    def show; end

    def new
      @product = Product.new
      @product.build_description
      respond_to do |format|
        format.js
      end
    end

    def create
      @product = Product.new product_params
      if @product.save
        flash[:success] = t ".create_success"
        redirect_to admin_products_path
      else
        flash[:danger] = t ".create_failed"
        respond_to do |format|
          format.js {render :new}
          format.html {redirect_back fallback_location: new_admin_product_path}
        end
      end
    end

    def edit; end

    def update
      params[:product].except(:image) if params[:product][:image].nil?
      if @product.update_attributes product_params
        flash[:success] = t ".update_success"
        redirect_to admin_products_path
      else
        flash.now[:danger] = t ".update_failed"
        respond_to do |format|
          format.js {render :edit}
          format.html {redirect_back fallback_location: admin_products_path}
        end
      end
    end

    def destroy
      if @product.destroy
        flash[:success] = t ".destroy_success"
      else
        flash[:danger] = t ".destroy_failed"
      end
      redirect_to admin_products_path
    end

    private

    def load_product
      @product = Product.find_by id: params[:id]
      return if @product
      flash[:danger] = t "users.show.not_found"
      redirect_to root_path
    end

    def product_params
      params[:product][:status] = 1
      params.require(:product).permit :title, :name, :image, :price, :discount, :status,
        :quantities, :region_id, :category_id, :provider_id, description_attributes: :content
    end
  end
end
