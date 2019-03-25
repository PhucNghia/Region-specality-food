class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product
  has_many :replies, class_name: "Comment", foreign_key: :parent_id, dependent: :destroy

  validates :content, presence: true

  scope :infor_comment, ->{select :id, :user_id, :product_id, :parent_id, :content, :created_at}
  scope :created_desc, ->{order created_at: :asc}
  scope :without_parent, ->{where parent_id: nil}
  scope :within_parent, ->(parent_id){where parent_id: parent_id}
  scope :by_product_id, ->(product_id){where product_id: product_id}
end
