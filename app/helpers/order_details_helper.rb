module OrderDetailsHelper
  def check_option order_details
    check = false
    order_details.pluck(:status).each do |status|
      if status == "inprogress"
        check = true
      end
    end
    check
  end
end
