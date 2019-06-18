class Product < ApplicationRecord
  has_and_belongs_to_many :orders
  validates :brand, :model, :price, :short_description, :long_description, presence: true
end
