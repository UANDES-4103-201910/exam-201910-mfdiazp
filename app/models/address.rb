class Address < ApplicationRecord
  belongs_to :user
  has_many :orders_billing, foreign_key: "billing_address_id", class_name: "Order"
  has_many :orders_shipping, foreign_key: "shipping_address_id", class_name: "Order"
  validates :phone, :address_line_1, :city, :country, presence: true
end
