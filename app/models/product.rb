class Product < ApplicationRecord
  has_one :description
  belongs_to :region
  belongs_to :category
  belongs_to :provider
  has_many :cetification

  attr_accessor :amount
  attr_accessor :quantity

  validates :title, :name, :price, :status, :quantities, :region_id, :category_id, :provider_id, presence: true

  scope :by_region_product, -> id {where region_id: id}
  scope :by_product_id, -> id {where id: id}
end
