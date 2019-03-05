module Admin::AdminBaseHelper
  def set_active controller_name, current_controller_name
    if controller_name == current_controller_name
      return "active"
    end
  end
end
