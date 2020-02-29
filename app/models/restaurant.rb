class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :foods, dependent: :destroy
  has_many :cuisines, dependent: :destroy
  has_many :orders
  has_many :users, through :orders
  has_many :reviews
  has_many :restaurants, through :reviews
end
