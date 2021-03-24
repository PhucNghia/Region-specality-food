class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :product

  enum status: {inprogress: 0, indelivery: 1, success: 2, cancel: 3}
  scope :by_order_id, ->order_id {where "order_id = ? and status <> 3", order_id}
end
