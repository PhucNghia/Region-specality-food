module ApplicationHelper
  def format_money money
    money = money / 23000 if I18n.locale == :en
    number_to_currency money
  end
end
