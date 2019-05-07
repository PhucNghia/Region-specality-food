class Product < ApplicationRecord
  has_one :description, dependent: :destroy
  belongs_to :region
  belongs_to :category
  belongs_to :provider
  has_many :cetifications
  has_many :comments

  mount_uploader :image, ImageUploader

  attr_accessor :amount
  attr_accessor :quantity

  validates :title, :name, :image, :price, :status, :quantities, :region_id, :category_id, :provider_id, presence: true
  validates :price, inclusion: {in: 1000..10000000}
  validates :discount, inclusion: {in: 0..100}, allow_blank: true
  validates :quantities, inclusion: {in: 1..1000000}

  scope :by_region_product, -> id {where region_id: id}
  scope :by_product_id, -> id {where id: id}

  accepts_nested_attributes_for :description, allow_destroy: true
  enum status: {out_of_stock: 0, stocking: 1}
end
