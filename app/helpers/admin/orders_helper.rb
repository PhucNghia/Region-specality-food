module Admin::OrdersHelper
  def list_order_status status
    if status == "inprogress"
      Order.statuses.collect{|key, value| [t("activerecord.attributes.order.status_list.#{key}"), value] if key == status || key == "indelivery"}.compact
    elsif status == "indelivery"
      list_status = Order.statuses.collect{|key, value| [t("activerecord.attributes.order.status_list.#{key}"), value] unless key == "cancel"}.compact
    else
      list_status = Order.statuses.collect{|key, value| [t("activerecord.attributes.order.status_list.#{key}"), value] if key == status}.compact
    end
  end

  def selected_order_status status
    selected = ""
    Order.statuses.each do |item, value|
      if item == status
        selected = value
      end
    end
    selected
  end

  def disable_order_status status
    if status == "inprogress" || status == "indelivery"
      false
    else
      true
    end
  end
end
