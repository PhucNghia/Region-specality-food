module StaticPagesHelper
  def region_porduct region_id
    @north_products = Product.by_region_product(region_id)
  end
end
