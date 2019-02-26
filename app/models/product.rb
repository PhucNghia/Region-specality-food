class Product < ApplicationRecord
  has_one :desctiption
  belongs_to :region
  belongs_to :category
  belongs_to :provider
  has_many :cetification

  scope :by_region_product, ->(id){where region_id: id}
end
