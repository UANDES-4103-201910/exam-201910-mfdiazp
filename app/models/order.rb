class Order < ApplicationRecord
  belongs_to :user
  belongs_to :billing_address, class_name: 'Address'
  belongs_to :shipping_address, class_name: 'Address'
  has_and_belongs_to_many :products
end
