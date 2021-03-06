class User < ApplicationRecord
  has_many :addresses, dependent: :destroy
  has_many :orders
  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true
end
