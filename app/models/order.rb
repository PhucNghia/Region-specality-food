class Order < ApplicationRecord
  belongs_to :user
  has_many :OrderDetails

  validates :user_id, :order_date, presence: true
  enum status: {inprogress: 0, indelivery: 1, success: 2, cancel: 3}

  scope :by_user_id, -> user_id {where user_id: user_id}
end
