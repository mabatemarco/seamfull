class Order < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  has_many :items, dependent: :destroy
end
