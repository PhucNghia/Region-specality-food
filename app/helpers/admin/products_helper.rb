module Admin::ProductsHelper
  def collection_name model
    model.all.map{|value| [value.name, value.id]}
  end

  def selected object
    return object.id unless object.nil?
    return 1
  end
end
