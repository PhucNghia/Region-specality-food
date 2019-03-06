class Order < ApplicationRecord
  belongs_to :user
  has_many :OrderDetails

  validates :user_id, :order_date, presence: true
end
