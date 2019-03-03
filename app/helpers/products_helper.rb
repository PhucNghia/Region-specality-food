module ProductsHelper
  def set_number_product product
    if session[:cart].nil? || session[:cart].empty?
      return 1
    else
      index_product = session[:cart].find_index(product)
      if index_product.nil?
        return 1
      else
        return session[:cart][index_product].quantity.to_i
      end
    end
  end
end
