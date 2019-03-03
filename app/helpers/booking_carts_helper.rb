module BookingCartsHelper
  def total_quantity_cart
    return 0 unless session[:cart]
    total = 0
    session[:cart].each do |product|
      total += product.quantity
    end
    total
  end

  def amount_booking_cart quantity, price
    quantity * price
  end

  def total_amount
    total = 0
    session[:cart].each do |product|
      total += amount_booking_cart product.quantity, product.price
    end
    total
  end
end
