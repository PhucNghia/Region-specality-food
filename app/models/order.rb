class Order < ApplicationRecord
  belongs_to :user
  has_many :OrderDetails

  VALID_PHONE_REGEX = /\A[+-]?\d+\z/
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :user_id, :order_date, :receiver_name, :email, :phone, :receiver_address, presence: true
  validates :phone, length: {in: 8..15}, format: {with: VALID_PHONE_REGEX}
  validates :email, length: {in: 4..100}, format: {with: VALID_EMAIL_REGEX}
  validates :receiver_name, length: {maximum: 100}
  validates :receiver_address, length: {maximum: 255}

  enum status: {inprogress: 0, indelivery: 1, success: 2, cancel: 3}

  scope :by_user_id, -> user_id {where user_id: user_id}
end
