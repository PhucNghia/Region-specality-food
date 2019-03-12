module Admin
  class OrdersController < AdminBaseController
    def index
      @orders = Order.all
    end
  end
end
